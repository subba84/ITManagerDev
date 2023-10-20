using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using DataRecovery.Common;
using System.IO;
using DataRecovery.Models;
using System.Management;
using System.Threading;
using BackupManager;
using DataRecovery.FileMonitor;

namespace DataRestoreService
{
    public partial class DataRestoreService : ServiceBase
    {
        public System.Timers.Timer datarestoremonitorTimer = new System.Timers.Timer();
        string GetRestoreUrl, UpdateRestoreurl, GetRestoreRequestWebServiceUrl = string.Empty, configWebServiceUrl, configmasterWebServiceUrl, GetHardwareInventoryWebServiceUrl;
        tblRequests objRequests = new tblRequests();
        List<tblConfigs> objConfigs = new List<tblConfigs>();
        string FullackupSource, FullackupDestination, FullBackupType, FullbackupProvider, serialNumber, encryptionKey;
        int fullbackupid, fileChunkinMB, threadsleeptime, fileSizePerStreaminMB;
        string awsAccessKey, awsSecretKey, awsBucket, excludeFileExtensions;
        List<tblConfigMaster> objconfigMaster = new List<tblConfigMaster>();
        bool canEncrypt, IsRetoreRunning;

        public DataRestoreService()
        {
            InitializeComponent();

            //Debugger.Launch();
        }

        protected override void OnStart(string[] args)
        {
            try
            {

                Logger.LogInfo("Service Started");
                try
                {
                    datarestoremonitorTimer.Interval = Convert.ToInt32(ConfigurationManager.AppSettings["Interval"].ToString());
                    datarestoremonitorTimer.Elapsed += new System.Timers.ElapsedEventHandler(datarestoremonitorTimer_Elapsed);
                    datarestoremonitorTimer.Start();
                }
                catch (Exception ex)
                {
                    Logger.LogInfo(ex.Message + ex.StackTrace);
                }

            }

            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }
        }

        private void datarestoremonitorTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                Logger.LogInfo("Full Backup Triggered");
                if (IsRetoreRunning == false)
                {
                    IsRetoreRunning = true;
                    InitRestorefromService().Wait();


                    if (objRequests != null && objRequests.RequestId > 0)
                    {
                        Logger.LogInfo("Full Backup Request Id " + objRequests.RequestId);
                        UpdateRestoretoService(2,"Full Restore is In Progress").Wait();
                        StartFullRestore();
                        UpdateRestoretoService(3, "Full Restore is Complete").Wait();
                        string outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();
                        string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;
                        File.Delete(path);
                        IsRetoreRunning = false;
                    }
                }
                Logger.LogInfo("Full Backup Complete");
            }
            catch (Exception)
            {
                UpdateRestoretoService(4, "Full Restore got an Error").Wait();

            }
        }

        public async Task UpdateRestoretoService(int statusId,string message)
        {

            tblRequests objtblRequests = new tblRequests();
            objtblRequests.SystemId = objRequests.SystemId;
            objtblRequests.Updatedby = "Windows Service";
            objtblRequests.RequestStatusId = statusId;
            objtblRequests.ResultMessage = message;
            objtblRequests.UpdatedOn = DateTime.Now;
            objtblRequests.SerialNumber = serialNumber;
            objtblRequests.RequestId = objRequests.RequestId;

            HttpManager objHttpManager = new HttpManager();
            await objHttpManager.PostRequest<tblRequests>(UpdateRestoreurl, objtblRequests);
        }

        protected override void OnStop()
        {
            try
            {

            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }
        }

        public async Task GetWebServiceUrls()
        {
            try
            {
                Logger.LogInfo("Started getting Service url's");
                string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\WebServiceUrl.txt";
                string baseurl;
                if (File.Exists(path))
                {
                    baseurl = File.ReadAllText(path);

                }
                else
                {
                    string domainalias = ConfigurationManager.AppSettings["DnsAlias"].ToString();
                    baseurl = domainalias + System.Net.NetworkInformation.IPGlobalProperties.GetIPGlobalProperties().DomainName;
                }

                GetRestoreUrl = baseurl + ConfigurationManager.AppSettings["GetBackupRequestWebServiceUrl"].ToString();

                HttpManager objHttpManager = new HttpManager();
                objRequests = await objHttpManager.GetRequest<tblRequests>(GetRestoreUrl);

                if (objRequests != null && objRequests.RequestId > 0)
                {
                    UpdateRestoreurl = baseurl + ConfigurationManager.AppSettings["UpdateBackupRequestWebServiceUrl"].ToString();
                    GetHardwareInventoryWebServiceUrl = baseurl + string.Format(ConfigurationManager.AppSettings["GetHardwareInventoryWebServiceUrl"].ToString(), objRequests.SystemId);
                    GetSerialNumber().Wait();
                    configWebServiceUrl = baseurl + string.Format(ConfigurationManager.AppSettings["ConfigWebServiceUrl"].ToString(), objRequests.SystemId) + "&SerialNumber=" + serialNumber;
                    configmasterWebServiceUrl = baseurl + ConfigurationManager.AppSettings["ConfigMasterWebServiceUrl"].ToString();

                }



                Logger.LogInfo(GetRestoreUrl);
                Logger.LogInfo(UpdateRestoreurl);

                Logger.LogInfo("Completed getting Service url's");
            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }

        }

        private async Task InitRestorefromService()
        {
            try
            {
                Logger.LogInfo("Load full backup config from service started");
                GetWebServiceUrls().Wait();


                if (objRequests != null && objRequests.RequestId > 0)
                {

                    //FullackupSource = objRequests.Source;
                    FullackupDestination = objRequests.Destination;
                    //FullBackupType = objRequests.SourceType;
                    //FullbackupProvider = objRequests.SourceProvider;
                    fullbackupid = objRequests.RequestId;
                    serialNumber = objRequests.SerialNumber;

                    HttpManager objHttpManager = new HttpManager();
                    objconfigMaster = await objHttpManager.GetRequest<List<tblConfigMaster>>(configmasterWebServiceUrl);

                    objHttpManager = new HttpManager();
                    objConfigs = await objHttpManager.GetRequest<List<tblConfigs>>(configWebServiceUrl);

                    fileSizePerStreaminMB = Convert.ToInt32(objconfigMaster.Where(k => k.Configkey == "FileSizePerStreaminMB").Select(k => k.Configvalue).FirstOrDefault());

                    fileChunkinMB = Convert.ToInt32(objconfigMaster.Where(k => k.Configkey == "FileChunkinMB").Select(k => k.Configvalue).FirstOrDefault());

                    FullBackupType = objConfigs.Where(k => k.Configkey == "BackupType").Select(k => k.Configvalue).FirstOrDefault();

                    encryptionKey = objConfigs.Where(k => k.Configkey == "EncryptionKey").Select(k => k.Configvalue).FirstOrDefault();

                    if (FullBackupType != "Local")
                    {
                        awsAccessKey = objConfigs.Where(k => k.Configkey == "AWSAccessKey").Select(k => k.Configvalue).FirstOrDefault();



                        awsSecretKey = objConfigs.Where(k => k.Configkey == "AwsSecretKey").Select(k => k.Configvalue).FirstOrDefault();

                        awsBucket = objConfigs.Where(k => k.Configkey == "AWSBucketName").Select(k => k.Configvalue).FirstOrDefault();

                        FullbackupProvider = objConfigs.Where(k => k.Configkey == "CloudBackupProvider").Select(k => k.Configvalue).FirstOrDefault();
                    }
                    else
                    {
                        FullackupSource = objConfigs.Where(k => k.Configkey == "BackupFilePath").Select(k => k.Configvalue).FirstOrDefault();
                    }


                    threadsleeptime = Convert.ToInt32(objconfigMaster.Where(k => k.Configkey == "ThreadSleep").Select(k => k.Configvalue).FirstOrDefault());

                }

                Logger.LogInfo("Load full backup config from service Completed");
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
                Logger.LogInfo("An error occured during load full backup config" + ex.Message + ex.StackTrace);
            }

        }

        private void StartFullRestore()
        {
            try
            {
                if (FullBackupType == "Local")
                {
                    FullackupSource = FullackupSource + "\\" + objRequests.SystemId;
                    FileMonitorManager fileMonitorManager = new FileMonitorManager("", FullackupSource, "", excludeFileExtensions, threadsleeptime);
                    fileMonitorManager.SearcFiles();
                }

                FullackupDestination = FullackupDestination + "\\" + objRequests.SystemId;

                FullBackupProcessor FullBackupProcessorobj = new FullBackupProcessor(FullackupDestination, fileSizePerStreaminMB, fileChunkinMB, threadsleeptime, FullbackupProvider, FullBackupType, awsAccessKey, awsSecretKey, awsBucket, canEncrypt, encryptionKey, FullackupSource, objRequests.SystemId);
                FullBackupProcessorobj.InitCopying();
                Globals.IsBackupRunning = true;
            }
            catch (Exception ex)
            {
                Logger.LogInfo("An Error occured during full backup" + ex.Message + ex.StackTrace);
                throw ex;
            }
        }

        public async Task GetSerialNumber()
        {

            HttpManager objHttpManager = new HttpManager();
            tblHardwareInventories objtblHardwareInventories = await objHttpManager.GetRequest<tblHardwareInventories>(GetHardwareInventoryWebServiceUrl);
            serialNumber = objtblHardwareInventories.SerialNumber;
        }
    }
}
