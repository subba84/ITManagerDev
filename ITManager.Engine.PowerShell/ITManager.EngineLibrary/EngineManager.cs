using ITManager.Common;
using ITManager.Common.Models;
using ITManager.Common.Models.ViewModels;
using Microsoft.UpdateServices.Administration;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Management.Automation;

namespace ITManager.EngineLibrary
{
    public class EngineManager
    {
        public string SaveUpdatesUrl, UpdateStausUrl, UpdateReportUrl, GetEngineRequestUrl, GetEngineConfigsUrl, UpdateServer, SaveGroupsUrl;
        int Port;
        List<tblEngineRequests> lstobjtblEngineRequests;
        List<tblEngineConfig> lsttblEngineConfig;
        public void SaveUpdates()
        {
            try
            {
                GetWebServiceUrls();
                GetEngineConfig().Wait();

                if (lsttblEngineConfig != null)
                {
                    foreach (var tblEngineConfig in lsttblEngineConfig)
                    {
                        PowerShell ps = PowerShell.Create();
                        string servercommand = "Get-WsusServer";
                        string getUpdatecommand = "Get-WsusUpdate";
                        
                        ps.AddCommand(servercommand);
                        ps.AddParameter("Name", tblEngineConfig.EngineName);
                        ps.AddParameter("PortNumber", tblEngineConfig.EnginePort);
                        ps.Invoke();



                        ps.AddCommand(getUpdatecommand);
                        ps.AddParameter("Classification", "All");
                        ps.AddParameter("Approval", "Unapproved");
                        ps.AddParameter("Status", "Any");
                        var updates = ps.Invoke();

                        if (updates != null)
                        {
                            foreach (PSObject objN in updates)
                            {
                                if (objN != null)
                                {

                                }
                            }
                        }

                        List<tblEngineUpdates> objlstUpdates = new List<tblEngineUpdates>();

                        if (updates != null)
                        {

                            foreach (var item in updates)
                            {
                                
                                var prop = item.Properties.First();

                                var updateprop = ((System.Management.Automation.PSProperty)prop).Value;

                                var update = ((Microsoft.UpdateServices.Internal.BaseApi.Update)updateprop).ArrivalDate;

                                tblEngineUpdates objtblEngineUpdates = new tblEngineUpdates();

                                objtblEngineUpdates.EngineName = tblEngineConfig.EngineName;
                                //objtblEngineUpdates.UpdateId = item.Id.UpdateId.ToString();
                                //objtblEngineUpdates.ArrivalDate = ((Microsoft.UpdateServices.Internal.BaseApi.Update)update).ArrivalDate
                                //objtblEngineUpdates.CompanyTitle = item.CompanyTitles[0].ToString();
                                //objtblEngineUpdates.CreatedBy = "Windows Service";
                                //objtblEngineUpdates.CreatedOn = DateTime.Now;
                                //objtblEngineUpdates.Description = item.Description;
                                //objtblEngineUpdates.KB = Convert.ToInt32(item.KnowledgebaseArticles[0].ToString());
                                //objtblEngineUpdates.ProductTitles = item.ProductTitles[0].ToString();
                                //objtblEngineUpdates.Title = item.Title;
                                //objtblEngineUpdates.UpdateClassificationTitle = item.UpdateClassificationTitle;

                                objlstUpdates.Add(objtblEngineUpdates);
                            }

                            GetWebServiceUrls();
                            SaveUpdateRequest(objlstUpdates).Wait();
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
                throw ex;
            }
        }

        public void UpdateGroups()
        {
            try
            {
                GetWebServiceUrls();
                GetEngineConfig().Wait();

                List<tblEngineGroups> lstgroups = new List<tblEngineGroups>();

                if (lsttblEngineConfig != null)
                {
                    foreach (var tblEngineConfig in lsttblEngineConfig)
                    {
                        IUpdateServer server = AdminProxy.GetUpdateServer(tblEngineConfig.EngineName, false, tblEngineConfig.EnginePort);

                        ComputerTargetGroupCollection serverGroups = server.GetComputerTargetGroups();

                      

                        foreach (var group in serverGroups.Cast<IComputerTargetGroup>())
                        {
                            tblEngineGroups objtblEngineGroup = new tblEngineGroups();
                            objtblEngineGroup.GroupName = group.Name;
                            objtblEngineGroup.EngineName = tblEngineConfig.EngineName;
                            objtblEngineGroup.IsActive = true;
                            objtblEngineGroup.CreatedBy = "Windows Service";
                            objtblEngineGroup.CreatedOn = DateTime.Now;

                            lstgroups.Add(objtblEngineGroup);
                        }

                        GetWebServiceUrls();
                        SaveGroups(lstgroups).Wait();
                    }
                }
            }

            
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
                throw ex;
            }
        }

        public void DeployUpdates()
        {
            try
            {
                GetWebServiceUrls();
                GetEngineRequest().Wait();
                GetEngineConfig().Wait();

                if (lstobjtblEngineRequests != null)
                {

                    foreach (var objtblEngineRequests in lstobjtblEngineRequests)
                    {
                        UpdateServer = lsttblEngineConfig.Where(k => k.EngineName == objtblEngineRequests.EngineName).Select(k => k.EngineName).FirstOrDefault();

                        Port = lsttblEngineConfig.Where(k => k.EngineName == objtblEngineRequests.EngineName).Select(k => k.EnginePort).FirstOrDefault();

                        IUpdateServer server = AdminProxy.GetUpdateServer(UpdateServer, false, Port);
                        var searchScope = new UpdateScope { ApprovedStates = ApprovedStates.Any };

                        UpdateRevisionId objRevisionId = new UpdateRevisionId(Guid.Parse(objtblEngineRequests.UpdateId));
                        IUpdate update = server.GetUpdate(objRevisionId);

                        ComputerTargetGroupCollection serverGroups = server.GetComputerTargetGroups();

                        IComputerTargetGroup targetcompGroup = null;

                        Guid groupGuid = serverGroups.Cast<IComputerTargetGroup>().Single(tg => tg.Name == objtblEngineRequests.GroupName).Id;

                        ComputerTargetGroupCollection targetGroupsCollection = server.GetComputerTargetGroups();
                        foreach (IComputerTargetGroup targetGroup in targetGroupsCollection)
                        {
                            if (targetGroup.Name == objtblEngineRequests.GroupName)
                            {
                                targetcompGroup = targetGroup;
                            }
                        }

                        var target = server.GetComputerTargetGroup(groupGuid);
                        if (update.RequiresLicenseAgreementAcceptance)
                        {
                            ILicenseAgreement eula = update.GetLicenseAgreement();
                            if (eula.IsAccepted == false)
                            {
                                update.AcceptLicenseAgreement();
                            }
                            update.AcceptLicenseAgreement();
                        }
                        update.Approve(UpdateApprovalAction.Install, target);
                        update.RefreshUpdateApprovals();
                        EngineRequestUpdateVm objEngineRequestUpdateVm = new EngineRequestUpdateVm();
                        objEngineRequestUpdateVm.RequestId = objtblEngineRequests.RequestId;
                        objEngineRequestUpdateVm.RequestStatusId = 3;

                        UpdateRequestStatus(objEngineRequestUpdateVm).Wait();

                    }

                }
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
                throw ex;
            }
        }

        public void MonitorUpdates()
        {
            try
            {
                GetWebServiceUrls();
                GetEngineConfig().Wait();

                if (lsttblEngineConfig != null)
                {

                    foreach (var tblEngineConfig in lsttblEngineConfig)
                    {

                        IUpdateServer server = AdminProxy.GetUpdateServer(tblEngineConfig.EngineName, false, tblEngineConfig.EnginePort);

                        // get all updates  
                        UpdateCollection UpdateCollection = server.GetUpdates();

                        // get the all computers group  
                        IComputerTargetGroup allComputersGroup = server.GetComputerTargetGroup(ComputerTargetGroupId.AllComputers);

                        List<tblEngineReports> objlsttblEngineReports = new List<tblEngineReports>();

                        // get the status for each update and all the computers  
                        foreach (IUpdate Update in UpdateCollection)
                        {
                            // print status for this update if it is not declined  
                            if (Update.IsApproved)
                            {
                                UpdateInstallationInfoCollection InstallInfo = allComputersGroup.GetUpdateInstallationInfoPerComputerTarget(Update);

                                // Output the status and computer name for all computers and this update  
                                foreach (IUpdateInstallationInfo info in InstallInfo)
                                {
                                    tblEngineReports objtblEngineReports = new tblEngineReports();
                                    objtblEngineReports.EngineName = tblEngineConfig.EngineName;
                                    objtblEngineReports.UpdateId = info.UpdateId.ToString();
                                    objtblEngineReports.Status = info.UpdateInstallationState.ToString();
                                    objtblEngineReports.SystemId = info.GetComputerTarget().FullDomainName;
                                    objtblEngineReports.CreatedBy = "Windows Service";
                                    objtblEngineReports.CreatedOn = DateTime.Now;

                                    objlsttblEngineReports.Add(objtblEngineReports);
                                }
                            }
                        }

                        GetWebServiceUrls();
                        SaveUpdateReport(objlsttblEngineReports).Wait();
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
                throw ex;
            }
        }

        public void GetWebServiceUrls()
        {
            //string baseurl = "https://localhost:44329/";

            string domainalias = ConfigurationManager.AppSettings["DnsAlias"].ToString();
            string baseurl = domainalias + System.Net.NetworkInformation.IPGlobalProperties.GetIPGlobalProperties().DomainName;

            SaveUpdatesUrl = baseurl + ConfigurationManager.AppSettings["SaveUpdatesUrl"].ToString();

            UpdateStausUrl = baseurl + ConfigurationManager.AppSettings["UpdateStatusUrl"].ToString();

            UpdateReportUrl = baseurl + ConfigurationManager.AppSettings["UpdateReportUrl"].ToString();

            GetEngineRequestUrl = baseurl + ConfigurationManager.AppSettings["GetEngineRequestUrl"].ToString();

            GetEngineConfigsUrl = baseurl + ConfigurationManager.AppSettings["GetEngineConfigsUrl"].ToString();

            SaveGroupsUrl= baseurl + ConfigurationManager.AppSettings["SaveGroupsUrl"].ToString();
        }

        public async Task SaveUpdateRequest(List<tblEngineUpdates> objlstUpdates)
        {
            HttpManager objHttpManager = new HttpManager();
            await objHttpManager.PostRequest<List<tblEngineUpdates>>(SaveUpdatesUrl, objlstUpdates);
        }

        public async Task SaveGroups(List<tblEngineGroups> objlstGroups)
        {
            HttpManager objHttpManager = new HttpManager();
            await objHttpManager.PostRequest<List<tblEngineGroups>>(SaveGroupsUrl, objlstGroups);
        }

        public async Task GetEngineRequest()
        {
            HttpManager objHttpManager = new HttpManager();
            lstobjtblEngineRequests = await objHttpManager.GetRequest<List<tblEngineRequests>>(GetEngineRequestUrl);
        }

        public async Task SaveUpdateReport(List<tblEngineReports> objlstUpdates)
        {
            HttpManager objHttpManager = new HttpManager();
            await objHttpManager.PostRequest<List<tblEngineReports>>(UpdateReportUrl, objlstUpdates);
        }

        public async Task UpdateRequestStatus(EngineRequestUpdateVm objRequestStatus)
        {
            HttpManager objHttpManager = new HttpManager();
            await objHttpManager.PostRequest<EngineRequestUpdateVm>(UpdateStausUrl, objRequestStatus);
        }

        //public void GetNewUpdates()
        //{

        //    List<string> objupdates = new List<string>();

        //    Type t = Type.GetTypeFromProgID("Microsoft.Update.Session", "Test-APP.DBT.local");
        //    UpdateSession uSession = (UpdateSession)Activator.CreateInstance(t);

        //    IUpdateSearcher uSearcher = uSession.CreateUpdateSearcher();
        //    uSearcher.ServerSelection = ServerSelection.ssWindowsUpdate;
        //    uSearcher.IncludePotentiallySupersededUpdates = false;
        //    uSearcher.Online = false;

        //    ISearchResult sResult = uSearcher.Search(
        //        "IsInstalled=0 And IsHidden=0 And Type='Software'");

        //    IUpdate newupdate = null;
        //    UpdateCollection updatesToInstall = new UpdateCollection();
        //    UpdateDownloader downloader = uSession.CreateUpdateDownloader();
        //    foreach (IUpdate update in sResult.Updates)
        //    {
        //        newupdate = update;
        //        updatesToInstall.Add(newupdate);
        //        break;
        //    }


        //    downloader.Updates = updatesToInstall;
        //    downloader.Download();




        //    IUpdateInstaller installer = uSession.CreateUpdateInstaller();
        //    installer.Updates = updatesToInstall;

        //    IInstallationResult installationRes = installer.Install();

        //    for (int i = 0; i < updatesToInstall.Count; i++)
        //    {
        //        if (installationRes.GetUpdateResult(i).HResult == 0)
        //        {
        //            Console.WriteLine("Installed : " + updatesToInstall[i].Title);
        //        }
        //        else
        //        {
        //            Console.WriteLine("Failed : " + updatesToInstall[i].Title);
        //        }
        //    }
        //}

        public async Task GetEngineConfig()
        {
            HttpManager objHttpManager = new HttpManager();
            lsttblEngineConfig = await objHttpManager.GetRequest<List<tblEngineConfig>>(GetEngineConfigsUrl);
        }
    }
}
