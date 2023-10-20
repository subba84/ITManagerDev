using DataRecovery.Common;
using DataRecovery.Models;
using Microsoft.VisualBasic.Devices;
using Microsoft.Win32;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.DirectoryServices.AccountManagement;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Management;
using System.Management.Automation;
using System.Management.Automation.Runspaces;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace InventoryManager
{
    public class SystemAnalyzer
    {
        string hardwareurl, softwareurl, diskUrl, servicesUrl;
        ManagementClass mc;
        ManagementObjectCollection moc;

        public SystemAnalyzer()
        {
            GetWebServiceUrls();
        }

        public void AnalyzeHardwareComponents()
        {
            try
            {

                Logger.LogHardwareInventoryJson("Started HareWare Intentory");
                tblHardwareInventoriesVm objSystemInfo = new tblHardwareInventoriesVm();
                List<tblDriveDetails> objlstDriveDetails = new List<tblDriveDetails>();

                objSystemInfo.SerialNumber = GetSerialNumber();
                objlstDriveDetails = DriveInfo.GetDrives().Where(k => k.DriveType == DriveType.Fixed).Select(k =>
                              new tblDriveDetails
                              {
                                  DriveName = k.Name,
                                  FreeSpace = k.AvailableFreeSpace.ToString(),
                                  CreatedBy = "Windows Service",
                                  SystemId = Environment.MachineName,
                                  CreatedOn = DateTime.Now,
                                  SerialNumber = GetSerialNumber(),
                                  IsActive = true
                              }).ToList();

                objSystemInfo.SystemId = Environment.MachineName;
                objSystemInfo.HasCdDrive = DriveInfo.GetDrives().Where(k => k.DriveType == DriveType.CDRom).Any();

                mc = new ManagementClass("win32_processor");
                moc = mc.GetInstances();

                foreach (ManagementObject mo in moc)
                {
                    objSystemInfo.CPUType = mo.Properties["Name"].Value.ToString();
                    objSystemInfo.CPU_Core = mo.Properties["NumberOfCores"].Value.ToString();
                }

                objSystemInfo.HostName = Environment.MachineName;

                mc = new ManagementClass("Win32_ComputerSystem");

                moc = mc.GetInstances();

                foreach (ManagementObject mo in moc)
                {
                    objSystemInfo.Manufacturer = mo.Properties["Manufacturer"].Value.ToString();
                    objSystemInfo.Manufacturer = objSystemInfo.Manufacturer;
                    objSystemInfo.Model = mo.Properties["Model"].Value.ToString();
                }



                //mc = new ManagementClass("Win32_PhysicalMemory");

                //moc = mc.GetInstances();
                //foreach (ManagementObject mo in moc)
                //{
                //    objSystemInfo.RAMDetails = (Convert.ToInt64(mo.Properties["Capacity"].Value.ToString()) / (1024 * 1024 * 1024)).ToString();
                //}

                ComputerInfo info = new ComputerInfo();
                decimal value = 1024 * 1024 * 1024;
                objSystemInfo.RAMDetails = Math.Round(Decimal.Divide((decimal)info.TotalPhysicalMemory, value)).ToString();

                mc = new ManagementClass("Win32_OperatingSystem");

                moc = mc.GetInstances();

                foreach (ManagementObject mo in moc)
                {
                    objSystemInfo.OperatingSystem = mo.Properties["Caption"].Value.ToString();

                }

                mc = new ManagementClass("Win32_Printer");

                moc = mc.GetInstances();

                foreach (ManagementObject mo in moc)
                {
                    objSystemInfo.PrinterConnected = mo.Properties["WorkOffline"].Value.ToString();
                }

                objSystemInfo.HostIP = Utils.LocalIPAddress().ToString();

                mc = new ManagementClass("SoftwareLicensingProduct");

                moc = mc.GetInstances();

                foreach (ManagementObject mo in moc)
                {
                    var data = mo.Properties["LicenseStatus"].ToString() == "0" ? false : true;

                }

                objSystemInfo.WindowsActivated = CWA.CheckActivation.IsGenuineWindows().ToString();

                objSystemInfo.CreatedBy = "Windows Service";
                objSystemInfo.CreatedOn = DateTime.Now;
                objSystemInfo.IsActive = true;
                objSystemInfo.LastScanDate = DateTime.Now;

                //Known issues
                objSystemInfo.LastLoginUser = Environment.UserName;

                mc = new ManagementClass("Win32_PhysicalMemoryArray");

                moc = mc.GetInstances();

                foreach (ManagementObject mo in moc)
                {
                    objSystemInfo.RAMSlots = mo.Properties["memoryDevices"].Value.ToString();
                }

              
                objSystemInfo.DriveDetails = objlstDriveDetails;

                if (Logger.CanLogHardwareComponents(objSystemInfo))
                {
                    UpdateHardwareComponentstoService(objSystemInfo);
                }

                Logger.LogHardwareInventoryJson("Completed HareWare Intentory");
            }
            catch (Exception ex)
            {
                
                Logger.LogHardwareInventoryJson(ex.Message + ex.StackTrace);

            }
        }

        public void AnalyzeSoftwareComponents()
        {
            try
            {
                Logger.LogSoftwareInventoryJson("Started Software Inventory");
                List<tblSoftwareInventories> objlsttblSoftwareInventories = new List<tblSoftwareInventories>();

                tblSoftwareInventories objtblSoftwareInventories = new tblSoftwareInventories();
                DateTime dateValue;
                Logger.LogSoftwareInventoryJson("Started Powershell");
                using (PowerShell ps = PowerShell.Create())
                {
                    ps.AddCommand("Set-ExecutionPolicy")
                      .AddParameter("ExecutionPolicy", "RemoteSigned")
                      .AddParameter("Scope", "CurrentUser")
                      .AddParameter("Force");

                    string script = "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser" + System.Environment.NewLine;
                    script = script + "$Objs = @()" + System.Environment.NewLine;
                    script = script + "$RegKey = @(\"HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\*\") " + System.Environment.NewLine;
                    script = script + "$InstalledAppsInfos = Get-ItemProperty -Path $RegKey" + System.Environment.NewLine;
                    script = script + "$InstalledAppsInfos | select DisplayName, Version, InstallDate,Publisher | ConvertTo-Json" + System.Environment.NewLine;

                    ps.AddScript(script);

                    Collection<PSObject> result = ps.Invoke();

                    Logger.LogSoftwareInventoryJson("Executed Powershell");

                    foreach (var outputObject in result)
                    {
                        var twitterObject = JToken.Parse(outputObject.ToString());
                        foreach (var item in twitterObject.Children())
                        {
                            objtblSoftwareInventories = new tblSoftwareInventories();



                            var itemProperties = item.Children<JProperty>();
                            if (itemProperties.FirstOrDefault(x => x.Name == "DisplayName").HasValues)
                            {
                                Logger.LogSoftwareInventoryJson("Software Name :" + itemProperties.FirstOrDefault(x => x.Name == "DisplayName").Value.ToString());
                            }
                            if (itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString().Length > 0)
                            {
                                Logger.LogSoftwareInventoryJson("Instlled Date :" + itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString());
                            }
                            //you could do a foreach or a linq here depending on what you need to do exactly with the value

                            objtblSoftwareInventories.InventoryName = itemProperties.FirstOrDefault(x => x.Name == "DisplayName").HasValues ? itemProperties.FirstOrDefault(x => x.Name == "DisplayName").Value.ToString() : string.Empty;
                            objtblSoftwareInventories.InventoryVersion = itemProperties.FirstOrDefault(x => x.Name == "Version").HasValues ? itemProperties.FirstOrDefault(x => x.Name == "Version").Value.ToString() : string.Empty;
                            objtblSoftwareInventories.InventoryVendor = itemProperties.FirstOrDefault(x => x.Name == "Publisher").HasValues ? itemProperties.FirstOrDefault(x => x.Name == "Publisher").Value.ToString() : string.Empty;
                            if (DateTime.TryParse(itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString(), out dateValue))
                            {
                                objtblSoftwareInventories.InstalledDate = Convert.ToDateTime(itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString());
                            }
                            //else if (itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString().Length > 0)
                            //{
                            //    objtblSoftwareInventories.InstalledDate = Convert.ToDateTime(DateTime.ParseExact(itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString(), "yyyyMMdd", CultureInfo.InvariantCulture).ToString("yyyy-MM-dd"));
                            //}
                            else
                            {
                                objtblSoftwareInventories.InstalledDate = (DateTime?)null;
                            }
                            //if (itemProperties.FirstOrDefault(x => x.Name == "InstallDate").HasValues && itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString().Contains("/"))
                            //{
                            //    objtblSoftwareInventories.InstalledDate = itemProperties.FirstOrDefault(x => x.Name == "InstallDate").HasValues? Convert.ToDateTime(itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString()) : (DateTime?)null;
                            //}
                            //else
                            //{
                            //    objtblSoftwareInventories.InstalledDate = itemProperties.FirstOrDefault(x => x.Name == "InstallDate").HasValues? Utils.ConvertWMIDate(itemProperties.FirstOrDefault(x => x.Name == "InstallDate").Value.ToString()) : (DateTime?)null;
                            //}
                            objtblSoftwareInventories.IsActive = true;
                            objtblSoftwareInventories.SystemId = Environment.MachineName;
                            objtblSoftwareInventories.SerialNumber = GetSerialNumber();

                            objlsttblSoftwareInventories.Add(objtblSoftwareInventories);
                        }
                    }
                }

                Logger.LogSoftwareInventoryJson("Started Registry");

                List<string> obj = new List<string>();
                string registry_key = @"SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall";
                using (var baseKey = Microsoft.Win32.RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, RegistryView.Registry64))
                {
                    using (var key = baseKey.OpenSubKey(registry_key))
                    {
                        foreach (string subkey_name in key.GetSubKeyNames())
                        {
                            objtblSoftwareInventories = new tblSoftwareInventories();
                            using (var subKey = key.OpenSubKey(subkey_name))
                            {
                                objtblSoftwareInventories.InventoryName = subKey.GetValue("DisplayName") != null ? subKey.GetValue("DisplayName").ToString() : string.Empty;
                                if (subKey.GetValue("DisplayName") != null && subKey.GetValue("DisplayName").ToString().Contains("RAR"))
                                {

                                }

                                objtblSoftwareInventories.InventoryVersion = subKey.GetValue("Version") != null ? subKey.GetValue("Version").ToString() : string.Empty;
                                objtblSoftwareInventories.InventoryVendor = subKey.GetValue("Publisher") != null ? subKey.GetValue("Publisher").ToString() : string.Empty;
                                if (subKey.GetValue("InstallDate") != null)
                                {
                                    if (DateTime.TryParse(subKey.GetValue("InstallDate").ToString(), out dateValue))
                                    {
                                        objtblSoftwareInventories.InstalledDate = Convert.ToDateTime(subKey.GetValue("InstallDate").ToString());
                                    }
                                    else
                                    {
                                        objtblSoftwareInventories.InstalledDate = (DateTime?)null;
                                    }
                                }



                                objtblSoftwareInventories.IsActive = true;
                                objtblSoftwareInventories.SystemId = Environment.MachineName;
                                objtblSoftwareInventories.SerialNumber = GetSerialNumber();

                                objlsttblSoftwareInventories.Add(objtblSoftwareInventories);
                            }
                        }
                    }
                }

                Logger.LogSoftwareInventoryJson("completed Registry");

                #region OldCode



                //string uninstallKey = @"SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall";
                //using (Microsoft.Win32.RegistryKey rk = Registry.LocalMachine.OpenSubKey(uninstallKey))
                //{
                //    foreach (string skName in rk.GetSubKeyNames())
                //    {
                //        using (RegistryKey sk = rk.OpenSubKey(skName))
                //        {
                //            try
                //            {
                //                objtblSoftwareInventories = new tblSoftwareInventories();
                //                objtblSoftwareInventories.InventoryName = sk.GetValue("DisplayName") != null ? sk.GetValue("DisplayName").ToString() : string.Empty;
                //                objtblSoftwareInventories.InventoryVersion = sk.GetValue("DisplayVersion") != null ? sk.GetValue("DisplayVersion").ToString() : string.Empty;
                //                objtblSoftwareInventories.InventoryVendor = sk.GetValue("Publisher") != null ? sk.GetValue("Publisher").ToString() : string.Empty;
                //                if (sk.GetValue("InstallDate") != null && sk.GetValue("InstallDate").ToString().Contains("/"))
                //                {
                //                    objtblSoftwareInventories.InstalledDate = sk.GetValue("InstallDate") != null ? Convert.ToDateTime(sk.GetValue("InstallDate").ToString()) : (DateTime?)null;
                //                }
                //                else
                //                {
                //                    //objtblSoftwareInventories.InstalledDate = sk.GetValue("InstallDate") != null ? Utils.ConvertWMIDate(sk.GetValue("InstallDate").ToString()) : (DateTime?)null;
                //                }
                //                objtblSoftwareInventories.IsActive = true;
                //                objtblSoftwareInventories.SystemId = Environment.MachineName;
                //                objtblSoftwareInventories.SerialNumber = GetSerialNumber();


                //                //objlsttblSoftwareInventories.Add(objtblSoftwareInventories);
                //            }
                //            catch (Exception ex)
                //            {
                //                Logger.LogJson(ex.Message + ex.StackTrace);
                //            }
                //        }
                //    }
                //}

                //uninstallKey = @"SOFTWARE\Wow6432node\Microsoft\Windows\CurrentVersion\Uninstall";
                //using (Microsoft.Win32.RegistryKey rkbase = RegistryKey.OpenBaseKey(Microsoft.Win32.RegistryHive.LocalMachine, RegistryView.Registry64))
                //{

                //    using (Microsoft.Win32.RegistryKey rk2 = rkbase.OpenSubKey(uninstallKey))
                //    {
                //        foreach (string skName in rk2.GetSubKeyNames())
                //        {
                //            using (RegistryKey sk = rk2.OpenSubKey(skName))
                //            {
                //                try
                //                {
                //                    objtblSoftwareInventories = new tblSoftwareInventories();
                //                    objtblSoftwareInventories.InventoryName = sk.GetValue("DisplayName") != null ? sk.GetValue("DisplayName").ToString() : string.Empty;
                //                    objtblSoftwareInventories.InventoryVersion = sk.GetValue("DisplayVersion") != null ? sk.GetValue("DisplayVersion").ToString() : string.Empty;
                //                    objtblSoftwareInventories.InventoryVendor = sk.GetValue("Publisher") != null ? sk.GetValue("Publisher").ToString() : string.Empty;
                //                    if (sk.GetValue("InstallDate") != null && sk.GetValue("InstallDate").ToString().Contains("/"))
                //                    {
                //                        objtblSoftwareInventories.InstalledDate = sk.GetValue("InstallDate") != null ? Convert.ToDateTime(sk.GetValue("InstallDate").ToString()) : (DateTime?)null;
                //                    }
                //                    else
                //                    {
                //                        //objtblSoftwareInventories.InstalledDate = sk.GetValue("InstallDate") != null ? Utils.ConvertWMIDate(sk.GetValue("InstallDate").ToString()) : (DateTime?)null;
                //                    }
                //                    objtblSoftwareInventories.IsActive = true;
                //                    objtblSoftwareInventories.SystemId = Environment.MachineName;
                //                    objtblSoftwareInventories.SerialNumber = GetSerialNumber();
                //                    if (objlsttblSoftwareInventories.Where(k => k.InventoryName == objtblSoftwareInventories.InventoryName).Count() == 0)
                //                    {
                //                        objlsttblSoftwareInventories.Add(objtblSoftwareInventories);
                //                    }

                //                }
                //                catch (Exception ex)
                //                {
                //                    Logger.LogJson(ex.Message + ex.StackTrace);
                //                }
                //            }
                //        }

                //    }

                //}
                #endregion

                if (Logger.CanLogSoftwareComponents(objlsttblSoftwareInventories.Where(k => k.InventoryName.Length > 0).Distinct().ToList()))
                {
                    Logger.LogSoftwareInventoryJson("Started Calling Service");
                    UpdateSoftwareComponentstoService(objlsttblSoftwareInventories.Where(k => k.InventoryName.Length > 0).Distinct().ToList()).Wait();
                    Logger.LogSoftwareInventoryJson("Completed Calling Service");
                }
            }
            catch (Exception ex)
            {
                Logger.LogSoftwareInventoryJson(ex.Message + ex.StackTrace);
            }


        }

        public async Task UpdateSoftwareComponentstoService(List<tblSoftwareInventories> objlsttblSoftwareInventories)
        {
            try
            {
                GetWebServiceUrls();
                HttpManager objhttpManager = new HttpManager();
                await objhttpManager.PostRequest<List<tblSoftwareInventories>>(softwareurl, objlsttblSoftwareInventories);
            }
            catch (Exception ex)
            {
                Logger.LogSoftwareInventoryJson(ex.Message + ex.StackTrace);
            }

        }

        public void UpdateHardwareComponentstoService(tblHardwareInventoriesVm objSystemInfo)
        {
            try
            {
                Logger.LogHardwareInventoryJson("Started HardWare Intentory Update");
                GetWebServiceUrls();

                HttpManager objhttpManager = new HttpManager();
                objhttpManager.PostRequest<tblHardwareInventoriesVm>(hardwareurl, objSystemInfo).Wait();
                Logger.LogHardwareInventoryJson("Completed HardWare Intentory Update");
            }
            catch (Exception ex)
            {
                
                Logger.LogHardwareInventoryJson(ex.Message + ex.StackTrace);

            }

        }

        public void UpdateDiskDetailstoService(List<tblDiskDetails> objDiskDetails)
        {
            try
            {
                Logger.LogDiskJson("Started Disk Details Update");
                GetWebServiceUrls();

                HttpManager objhttpManager = new HttpManager();
                objhttpManager.PostRequest<List<tblDiskDetails>>(diskUrl, objDiskDetails).Wait();
                Logger.LogDiskJson("Completed Disk Details Update");
            }
            catch (Exception ex)
            {
               
                Logger.LogDiskJson(ex.Message + ex.StackTrace);

            }

        }

        public void UpdateServiceDetailstoService(List<tblServiceDetails> objServiceDetails)
        {
            try
            {
                Logger.LogServiceJson("Started Service Details Update");
                GetWebServiceUrls();

                HttpManager objhttpManager = new HttpManager();
                objhttpManager.PostRequest<List<tblServiceDetails>>(servicesUrl, objServiceDetails).Wait();
                Logger.LogServiceJson("Completed Service Details Update");
            }
            catch (Exception ex)
            {
                
                Logger.LogServiceJson(ex.Message + ex.StackTrace);

            }

        }

        public void GetWebServiceUrls()
        {
            try
            {
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
                softwareurl = baseurl + ConfigurationManager.AppSettings["SoftWareInventoryWebServiceUrl"].ToString();
                hardwareurl = baseurl + ConfigurationManager.AppSettings["HardWareInventoryWebServiceUrl"].ToString();
                diskUrl = baseurl + ConfigurationManager.AppSettings["UpdateDiskDetailsRequestWebServiceUrl"].ToString();
                servicesUrl = baseurl + ConfigurationManager.AppSettings["UpdateServiceDetailsRequestWebServiceUrl"].ToString();
            }
            catch (Exception ex)
            {
                
                Logger.LogInventoryJson(ex.Message + ex.StackTrace);

            }
        }

        public string GetSerialNumber()
        {
            string serailNumber = string.Empty;
            ManagementObjectSearcher mSearcher = new ManagementObjectSearcher("SELECT SerialNumber, SMBIOSBIOSVersion, ReleaseDate FROM Win32_BIOS");
            ManagementObjectCollection collection = mSearcher.Get();
            foreach (ManagementObject obj in collection)
            {
                serailNumber = (string)obj["SerialNumber"];
                serailNumber = serailNumber.Replace(" ", string.Empty);
            }

            return serailNumber;
        }

        public void GetServiceDetails()
        {
            try
            {
                Logger.LogServiceJson("Started Get Service Details");
                List<tblServiceDetails> objlsttblServiceDetails = new List<tblServiceDetails>();
                tblServiceDetails objtblServiceDetails;
                mc = new ManagementClass("win32_Service");
                moc = mc.GetInstances();

                foreach (ManagementObject mo in moc)
                {
                    objtblServiceDetails = new tblServiceDetails();
                    objtblServiceDetails.SystemId = Environment.MachineName;
                    objtblServiceDetails.SerialNumber = GetSerialNumber();
                    objtblServiceDetails.Name = mo.Properties["Name"].Value.ToString();
                    objtblServiceDetails.DisplayName = mo.Properties["DisplayName"].Value.ToString();
                    objtblServiceDetails.StartMode = mo.Properties["StartMode"].Value.ToString();
                    objtblServiceDetails.State = mo.Properties["State"].Value.ToString();
                    objtblServiceDetails.IsActive = true;
                    objtblServiceDetails.CreatedBy = "Windows Service";

                    objlsttblServiceDetails.Add(objtblServiceDetails);
                }

                if (Logger.CanLogServiceDetails(objlsttblServiceDetails))
                {
                    UpdateServiceDetailstoService(objlsttblServiceDetails);
                }
                Logger.LogServiceJson("Completed Get Service Details");
            }
            catch (Exception ex)
            {
                Logger.LogServiceJson("Error in Getting Service Details : " + ex.Message + ex.StackTrace);
            }

        }

        public void GetDiskDetails()
        {
            try
            {
                Logger.LogDiskJson("Started Get Disk Details");
                List<tblDiskDetails> objlsttblDiskDetails = new List<tblDiskDetails>();
                tblDiskDetails objtblDiskDetails;

                Logger.LogDiskJson("Started Powershell");
                
                Runspace runspace = RunspaceFactory.CreateRunspace();
                runspace.ApartmentState = System.Threading.ApartmentState.MTA;
                runspace.Open();
                PowerShell ps = PowerShell.Create();
                
                ps.Runspace = runspace;
                ps.AddCommand("Set-ExecutionPolicy")
                  .AddParameter("ExecutionPolicy", "RemoteSigned")
                  .AddParameter("Scope", "CurrentUser")
                  .AddParameter("Force");

                string script = "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser" + System.Environment.NewLine;
                script = script + "Get-PhysicalDisk|Select Model,SerialNumber,mediatype,Bustype,Size,HealthStatus,Manufacturer" + System.Environment.NewLine;

                ps.AddScript(script);

                Collection<PSObject> result = ps.Invoke();
                runspace.Close();

                Logger.LogDiskJson("Executed Powershell");

                //dynamic data = JsonConvert.DeserializeObject(result.ToString());

                foreach (var outputObject in result)
                {
                    objtblDiskDetails = new tblDiskDetails();

                    objtblDiskDetails.BusType = outputObject.Members["BusType"].Value.ToString();
                    objtblDiskDetails.DiskSerialNumber = outputObject.Members["SerialNumber"].Value.ToString();
                    objtblDiskDetails.HealthStatus = outputObject.Members["HealthStatus"].Value.ToString();
                    objtblDiskDetails.Manufacturer = outputObject.Members["Manufacturer"].Value != null ? outputObject.Members["Manufacturer"].Value.ToString() : string.Empty;
                    objtblDiskDetails.MediaType = outputObject.Members["MediaType"].Value.ToString();
                    objtblDiskDetails.Model = outputObject.Members["Model"].Value.ToString();
                    objtblDiskDetails.Size = outputObject.Members["Size"].Value.ToString();
                    objtblDiskDetails.SerialNumber = GetSerialNumber();
                    objtblDiskDetails.SystemId = Environment.MachineName;
                    objtblDiskDetails.CreatedBy = "Windows Service";
                    objtblDiskDetails.IsActive = true;

                    objlsttblDiskDetails.Add(objtblDiskDetails);

                }

                if(Logger.CanLogDiskDetails(objlsttblDiskDetails))
                {
                    UpdateDiskDetailstoService(objlsttblDiskDetails);
                }
                
                Logger.LogDiskJson("Completed Get Disk Details");
            }
            catch (Exception ex)
            {
                Logger.LogDiskJson("Error in Getting Disk Details : " + ex.Message + ex.StackTrace);
            }

        }

    }
}
