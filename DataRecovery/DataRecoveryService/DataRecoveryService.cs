using BackupManager;
using DataRecovery.Common;
using DataRecovery.FileMonitor;
using DataRecovery.Models;
using InventoryManager;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Management;
using System.Runtime.Caching;
using System.ServiceProcess;
using System.Threading;
using System.Threading.Tasks;

namespace DataRecoveryService
{
    public partial class DataRecoveryService : ServiceBase
    {
        #region GlobalDeclarations

        public System.Timers.Timer filemonitorTimer = new System.Timers.Timer();

        public System.Timers.Timer fileuploadTimer = new System.Timers.Timer();

        public System.Timers.Timer InventoryTimer = new System.Timers.Timer();

        public System.Timers.Timer ConfigMonitorTimer = new System.Timers.Timer();

        public System.Timers.Timer FullBackupTimer = new System.Timers.Timer();

        public System.Timers.Timer PerformanceMonitorTimer = new System.Timers.Timer();

        public System.Timers.Timer PerformanceMonitorDbUpdater = new System.Timers.Timer();

        public System.Timers.Timer ScheduledMonitorTimer = new System.Timers.Timer();

        int threadsleeptime;

        string includeFileExtensions, excludeFileExtensions;

        string foldersToScan;

        string excludeFolders;

        string outputFileName;

        string backupFilePath;

        string encryptionKey;

        bool canEncrypt;

        string fileVersionKey;

        int VersionstoKeep;

        int fileSizePerStreaminMB;

        int fileChunkinMB;

        string backupType;

        FileSystemWatcher[] _watchers;

        xmlroot CopyInput;

        xmlroot WatcherCopyInput;

        xmlroot BackupFiles;

        List<tblConfigs> objConfigs = new List<tblConfigs>();

        List<tblConfigMaster> objConfigMaster = new List<tblConfigMaster>();

        List<tblModules> objModules = new List<tblModules>();

        tblRequests objRequests = new tblRequests();

        string systemId = Environment.MachineName;

        string backupProvider;

        string outputFilePath, watcheroutputFilePath;

        string awsAccessKey, awsSecretKey, awsBucket;


        bool IsCopying = false;

        bool isScheduleRunning = false;

        string configWebServiceUrl, configmasterWebServiceUrl, backupWebServiceUrl, UpdateBackupRequestWebServiceUrl;

        bool IsConfigloaded = false, IsMasterConfigLoaded = false, IsMonitorRunning;

        bool isScanComplete = false;
        #endregion

        public DataRecoveryService()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            //AppDomain currentDomain = AppDomain.CurrentDomain;
            //currentDomain.UnhandledException += new UnhandledExceptionEventHandler(currentDomain_UnhandledException);
            try
            {
                if (!Directory.Exists(System.AppDomain.CurrentDomain.BaseDirectory + "\\logs"))
                {
                    Directory.CreateDirectory(System.AppDomain.CurrentDomain.BaseDirectory + "\\logs");
                }

                Logger.LogJson("Starting Service");

                filemonitorTimer.Elapsed += new System.Timers.ElapsedEventHandler(filemonitorTimer_Elapsed);

                fileuploadTimer.Elapsed += new System.Timers.ElapsedEventHandler(fileuploadTimer_Elapsed);

                ConfigMonitorTimer.Elapsed += new System.Timers.ElapsedEventHandler(configmonitorTimer_Elapsed);

                InventoryTimer.Elapsed += new System.Timers.ElapsedEventHandler(inventoryTimer_Elapsed);

                PerformanceMonitorTimer.Elapsed += new System.Timers.ElapsedEventHandler(PerformanceMonitorTimer_Elapsed);

                PerformanceMonitorDbUpdater.Elapsed += new System.Timers.ElapsedEventHandler(PerformanceMonitorDbUpdater_Elapsed);

                ConfigMonitorTimer.Interval = Convert.ToInt32(ConfigurationManager.AppSettings["ConfigMonitorInterval"].ToString());

                ConfigMonitorTimer.Start();

                ScheduledMonitorTimer.Elapsed += new System.Timers.ElapsedEventHandler(scheduledMonitorTimer_Elapsed);

                ScheduledMonitorTimer.Interval = Convert.ToInt32(ConfigurationManager.AppSettings["ScheduledMonitorInterval"].ToString());

                ScheduledMonitorTimer.Start();

                Logger.LogJson("Started Service");

            }
            catch (Exception ex)
            {
                Logger.LogInfo("An Error Occured" + ex.Message + ex.StackTrace);
                Logger.LogJson(ex.Message + ex.StackTrace);


            }

        }

        void currentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs args)
        {
            Exception e = (Exception)args.ExceptionObject;
            Logger.LogJson(e.Message + e.StackTrace);
        }

        private void configmonitorTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {

                ThreadStart configmonitorstarter = new ThreadStart(NewMethod);
                configmonitorstarter += () =>
                {
                };
                Thread configmonitorthread = new Thread(configmonitorstarter);
                configmonitorthread.Start();

            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
            }
        }

        private void NewMethod()
        {
            Logger.LogInfo("Config Monitor Satrted");
            if (!IsConfigloaded || !IsMasterConfigLoaded)
            {
                if (!IsMasterConfigLoaded)
                {
                    InitMasterConfig();
                }

                if (!IsConfigloaded)
                {
                    InitConfig();
                }
            }
            else
            {
                //GetWebServiceUrls();
                //LoadConfgMaster().Wait();
                //LoadConfigfromFromWebService(false).Wait();
                //IdentifyConfigChange();
            }

            //foreach (var item in _watchers)
            //{
            //    if(item.EnableRaisingEvents == false)
            //    {
            //        item.EnableRaisingEvents = true;
            //    }
            //}
            Logger.LogInfo("Config Monitor Completed");
        }

        private void InitConfig()
        {
            try
            {

                Logger.LogInfo("Load Config started");

                outputFilePath = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;

                watcheroutputFilePath = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + ConfigurationManager.AppSettings["WatcherOutputFileName"].ToString();

                GetWebServiceUrls();

                LoadConfigfromFromWebService(true).Wait();

                if (IsConfigloaded && IsMasterConfigLoaded)
                {
                    InitializeWatcher();
                    RunModules();
                }

                Logger.LogInfo("Load Config Completed");


            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }

        }

        private void InitMasterConfig()
        {
            try
            {

                Logger.LogInfo("Load Master Config started");

                GetWebServiceUrls();

                LoadConfgMaster().Wait();

                if (IsMasterConfigLoaded)
                {
                    InventoryTimer.Start();
                }



                Logger.LogInfo("Load Master Config Completed");

            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }

        }

        protected override void OnStop()
        {
            try
            {

                //filemonitorTimer.Stop();
                filemonitorTimer.Dispose();
                fileuploadTimer.Stop();
                fileuploadTimer.Dispose();
                InventoryTimer.Stop();
                InventoryTimer.Dispose();
                ConfigMonitorTimer.Stop();
                ConfigMonitorTimer.Stop();
                FullBackupTimer.Stop();
                FullBackupTimer.Dispose();
                PerformanceMonitorTimer.Stop();
                PerformanceMonitorTimer.Dispose();
                ScheduledMonitorTimer.Stop();
                ScheduledMonitorTimer.Dispose();

                if (_watchers != null)
                {
                    foreach (var item in _watchers)
                    {
                        item.Dispose();
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }
        }

        public void RunModules()
        {
            fileuploadTimer.Start();

            filemonitorTimer.Start();

        }

        public void IdentifyConfigChange()
        {
            Logger.LogInfo("Stared Indentifying channges");

            try
            {
                bool isChanged = false;

                if (objConfigs.Where(k => k.Configkey == "FoldersToScan").Select(k => k.Configvalue).FirstOrDefault().ToString() != GetAppSettingValue("FoldersToScan"))
                {
                    foldersToScan = objConfigs.Where(k => k.Configkey == "FoldersToScan").Select(k => k.Configvalue).FirstOrDefault().ToString();
                    isChanged = true;
                }

                if (objConfigs.Where(k => k.Configkey == "IncludeFileExtensions").Any() && objConfigs.Where(k => k.Configkey == "IncludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault() != null)
                {
                    if (objConfigs.Where(k => k.Configkey == "IncludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault().ToString() != GetAppSettingValue("IncludeFileExtensions"))
                    {
                        includeFileExtensions = objConfigs.Where(k => k.Configkey == "IncludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault().ToString();
                        isChanged = true;
                    }
                }
                if (objConfigs.Where(k => k.Configkey == "ExcludeFileExtensions").Any() && objConfigs.Where(k => k.Configkey == "ExcludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault() != null)
                {
                    if (objConfigs.Where(k => k.Configkey == "ExcludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault().ToString() != GetAppSettingValue("ExcludeFileExtensions"))
                    {
                        excludeFileExtensions = objConfigs.Where(k => k.Configkey == "ExcludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault().ToString();
                        isChanged = true;
                    }
                }
                if (objConfigs.Where(k => k.Configkey == "ExcludeFolders").Any() && objConfigs.Where(k => k.Configkey == "ExcludeFolders").Select(k => k.Configvalue).FirstOrDefault() != null)
                {
                    if (objConfigs.Where(k => k.Configkey == "ExcludeFolders").Select(k => k.Configvalue).FirstOrDefault().ToString() != GetAppSettingValue("ExcludeFolders"))
                    {
                        excludeFolders = objConfigs.Where(k => k.Configkey == "ExcludeFolders").Select(k => k.Configvalue).FirstOrDefault().ToString();
                        isChanged = true;
                    }
                }
                if (objConfigs.Where(k => k.Configkey == "BackupType").Select(k => k.Configvalue).FirstOrDefault().ToString() != GetAppSettingValue("BackupType"))
                {
                    backupType = objConfigs.Where(k => k.Configkey == "BackupType").Select(k => k.Configvalue).FirstOrDefault().ToString();
                    isChanged = true;
                }

                if (objConfigs.Where(k => k.Configkey == "BackupType").Select(k => k.Configvalue).FirstOrDefault().ToString() == "Local")
                {
                    if (objConfigs.Where(k => k.Configkey == "BackupFilePath").Select(k => k.Configvalue).FirstOrDefault().ToString() != GetAppSettingValue("BackupFilePath"))
                    {
                        backupFilePath = objConfigs.Where(k => k.Configkey == "BackupFilePath").Select(k => k.Configvalue).FirstOrDefault().ToString();
                        isChanged = true;
                    }
                }
                if (objConfigs.Where(k => k.Configkey == "VersionstoKeep").Select(k => k.Configvalue).FirstOrDefault().ToString() != GetAppSettingValue("VersionstoKeep"))
                {
                    VersionstoKeep = Convert.ToInt32(objConfigs.Where(k => k.Configkey == "VersionstoKeep").Select(k => k.Configvalue).FirstOrDefault().ToString());
                    isChanged = true;
                }
                //if (objConfigs.Where(k => k.Configkey == "CloudBackupProvider").Select(k => k.Configvalue).FirstOrDefault().ToString() != GetAppSettingValue("CloudBackupProvider"))
                //{
                //    backupProvider = objConfigs.Where(k => k.Configkey == "CloudBackupProvider").Select(k => k.Configvalue).FirstOrDefault().ToString();
                //    isChanged = true;
                //}

                if (isChanged)
                {

                    foreach (var watcher in _watchers)
                    {
                        watcher.EnableRaisingEvents = true;

                        watcher.Filter = string.IsNullOrEmpty(includeFileExtensions) ? "*.*" : includeFileExtensions;

                        if (!string.IsNullOrEmpty(excludeFileExtensions))
                        {
                            watcher.Filter = excludeFileExtensions;
                        }
                    }

                    var completedconfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                    if (completedconfig.AppSettings.Settings["canscan"].Value == "Completed")
                    {
                        filemonitorTimer.Enabled = true;
                        filemonitorTimer.Start();

                        UpdateConfigFile();

                        completedconfig.AppSettings.Settings["canscan"].Value = "true";
                        completedconfig.Save(ConfigurationSaveMode.Modified);

                        ConfigurationManager.RefreshSection("appSettings");
                        Logger.LogInfo("Completed Indentifying changes");

                    }



                }


                #region commentedcode

                //if (canwatch == false)
                //{
                //    foreach (var watcher in _watchers)
                //    {
                //        watcher.EnableRaisingEvents = false;
                //    }

                //}
                //else
                //{
                //    foreach (var watcher in _watchers)
                //    {
                //        watcher.EnableRaisingEvents = true;
                //    }
                //    var config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                //    config.AppSettings.Settings["canwatch"].Value = "Running";
                //    config.Save(ConfigurationSaveMode.Modified);
                //}


                //if (canscan == true)
                //{
                //    if (filemonitorTimer.Enabled == false)
                //    {
                //        filemonitorTimer.Enabled = true;
                //        filemonitorTimer.Start();
                //    }
                //}
                //else
                //{
                //    filemonitorTimer.Enabled = false;
                //    filemonitorTimer.Stop();
                //}

                //if (isScanpathChanged)
                //{
                //    if (filemonitorTimer.Enabled == true)
                //    {
                //        filemonitorTimer.Start();

                //    }

                //}

                //if (canupload == true)
                //{
                //    if (isBackuppathChanged || isBackupProviderChanged || isBackupTypeChanged)
                //    {
                //        ResetUploadedData();
                //    }

                //    if (fileuploadTimer.Enabled == false)
                //    {
                //        fileuploadTimer.Enabled = true;
                //        fileuploadTimer.Start();
                //    }
                //}
                //else
                //{

                //    fileuploadTimer.Enabled = false;
                //    fileuploadTimer.Stop();
                //}



                //if (canAnalyzeInventory == true)
                //{
                //    if (InventoryTimer.Enabled == false)
                //    {
                //        InventoryTimer.Enabled = true;
                //        InventoryTimer.Start();
                //    }
                //}
                //else
                //{
                //    InventoryTimer.Enabled = false;
                //    InventoryTimer.Stop();
                //}

                #endregion

            }
            catch (Exception ex)
            {
                Logger.LogInfo("Error while identifying changes : " + ex.Message + ex.StackTrace);
            }

        }

        private void InitializeWatcher()
        {
            int i = 0;

            if (foldersToScan.ToLower() == "full")
            {
                var drives = DriveInfo.GetDrives().Where(drive => drive.IsReady && drive.DriveType != DriveType.CDRom && drive.DriveType != DriveType.Network && drive.DriveType != DriveType.Removable).ToList();
                _watchers = new FileSystemWatcher[drives.Count()];

                foreach (var item in drives)
                {
                    FileSystemWatcher filemonitorwatcher = new FileSystemWatcher();
                    filemonitorwatcher.Path = item.Name;

                    filemonitorwatcher.Error += new ErrorEventHandler(OnWatcherError);

                    filemonitorwatcher.Created += filemonitorwatcher_Created;

                    filemonitorwatcher.Renamed += filemonitorwatcher_Renamed;

                    //filemonitorwatcher.Deleted += filemonitorwatcher_Deleted;

                    filemonitorwatcher.Changed += filemonitorwatcher_Changed;

                    filemonitorwatcher.IncludeSubdirectories = true;



                    filemonitorwatcher.NotifyFilter = NotifyFilters.FileName | NotifyFilters.Size | NotifyFilters.LastWrite;

                    filemonitorwatcher.EnableRaisingEvents = true;

                    _watchers[i] = filemonitorwatcher;

                    i++;
                }
            }
            else
            {
                var folders = foldersToScan.Split(',').ToArray();

                _watchers = new FileSystemWatcher[folders.Length];

                foreach (var folder in folders)
                {
                    FileSystemWatcher filemonitorwatcher = new FileSystemWatcher();

                    filemonitorwatcher.Error += new ErrorEventHandler(OnWatcherError);

                    filemonitorwatcher.Path = folder;

                    filemonitorwatcher.Created += filemonitorwatcher_Created;

                    filemonitorwatcher.Renamed += filemonitorwatcher_Renamed;

                    //filemonitorwatcher.Deleted += filemonitorwatcher_Deleted;

                    filemonitorwatcher.Changed += filemonitorwatcher_Changed;

                    filemonitorwatcher.IncludeSubdirectories = true;

                    filemonitorwatcher.NotifyFilter = NotifyFilters.FileName | NotifyFilters.Size | NotifyFilters.LastWrite;

                    filemonitorwatcher.InternalBufferSize = 65536;

                    filemonitorwatcher.EnableRaisingEvents = true;

                    _watchers[i] = filemonitorwatcher;

                    i++;
                }

            }
        }

        private void OnRemovedFromCache(CacheEntryRemovedArguments args)
        {
            if (args.RemovedReason != CacheEntryRemovedReason.Expired) return;

            // Now actually handle file event
            var e = (FileSystemEventArgs)args.CacheItem.Value;
        }

        private void filemonitorTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {

                if (ConfigurationManager.AppSettings["IsScanComplete"] != null)
                {
                    isScanComplete = Convert.ToBoolean(ConfigurationManager.AppSettings["IsScanComplete"].ToString());
                }

                if (!isScanComplete)
                {

                    Logger.LogMonitorJson("Scan started");
                    IsMonitorRunning = true;

                    filemonitorTimer.Enabled = false;
                    filemonitorTimer.Stop();

                    FileMonitorManager fileMonitorManager = new FileMonitorManager(excludeFolders, foldersToScan, includeFileExtensions, excludeFileExtensions, threadsleeptime);

                    ThreadStart monitorstarter = new ThreadStart(fileMonitorManager.SearcFiles);
                    monitorstarter += () =>
                    {
                        IsMonitorRunning = false;
                        Logger.LogMonitorJson("Scan Completed");
                        UpdateMonitorConfig();
                    };
                    Thread t1 = new Thread(monitorstarter);
                    t1.Start();


                }
            }
            catch (Exception ex)
            {
                Logger.LogJson("Error in File Monitor: " + ex.Message + ex.StackTrace);
            }

        }

        private static void UpdateMonitorConfig()
        {
            var completedconfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            completedconfig.AppSettings.Settings["IsScanComplete"].Value = "true";
            completedconfig.Save(ConfigurationSaveMode.Modified);
            ConfigurationManager.RefreshSection("appSettings");
        }

        private void fileuploadTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {

                if (IsCopying == false)
                {
                    IsCopying = true;
                    Logger.LogBackupJson("Begin IsCopying :" + IsCopying.ToString());
                    Logger.LogBackupJson("backup started");


                    //waitHandle.WaitOne();

                    //var trueconfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                    //trueconfig.AppSettings.Settings["canupload"].Value = "Running";
                    //trueconfig.Save(ConfigurationSaveMode.Modified);

                    //ConfigurationManager.RefreshSection("appSettings");

                    //waitHandle.Set();

                    try
                    {
                        BackupFiles = new xmlroot();
                        BackupFiles.Filemodel = new List<FileModel>();

                        if (File.Exists(outputFilePath) && !Logger.IsFileLocked(outputFilePath))
                        {
                            CopyInput = Logger.GetJson(outputFilePath);

                            if (CopyInput.Filemodel != null)
                            {
                                if (CopyInput.Filemodel.Count > 0)
                                {
                                    CopyInput.Filemodel.ForEach(x => { BackupFiles.Filemodel.Add(x); });
                                }
                            }
                        }

                        if (File.Exists(watcheroutputFilePath) && !Logger.IsFileLocked(watcheroutputFilePath))
                        {
                            WatcherCopyInput = Logger.GetWatcherJson(watcheroutputFilePath);

                            if (WatcherCopyInput.Filemodel != null)
                            {
                                if (WatcherCopyInput.Filemodel.Count > 0)
                                {
                                    WatcherCopyInput.Filemodel.ForEach(x => { BackupFiles.Filemodel.Add(x); });
                                }
                            }
                        }

                        if (BackupFiles.Filemodel != null)
                        {
                            if (BackupFiles.Filemodel.Count > 0)
                            {
                                Process currentProcess = Process.GetCurrentProcess();
                                currentProcess.PriorityClass = ProcessPriorityClass.BelowNormal;
                                FileProcessor fileProcessor = new FileProcessor(BackupFiles, backupFilePath, fileSizePerStreaminMB, fileChunkinMB, canEncrypt, encryptionKey, fileVersionKey, VersionstoKeep, threadsleeptime, backupProvider, backupType, awsAccessKey, awsSecretKey, awsBucket, backupWebServiceUrl, GetSerialNumber(), BackupFiles.Filemodel.Count);

                                ThreadStart starter = new ThreadStart(fileProcessor.InitCopying);
                                starter += () =>
                                {
                                    IsCopying = false;
                                    Logger.LogBackupJson("End IsCopying :" + IsCopying.ToString());
                                    Logger.LogBackupJson("backup completed");
                                };
                                Thread newThread = new Thread(starter);
                                newThread.Start();
                            }
                            else
                            {
                                IsCopying = false;
                                Logger.LogBackupJson("backup completed - No New Files Found");
                            }
                        }

                        //var config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                        //config.AppSettings.Settings["canupload"].Value = "Completed";
                        //config.Save(ConfigurationSaveMode.Modified);

                        //ConfigurationManager.RefreshSection("appSettings");

                    }
                    catch (Exception ex)
                    {
                        Logger.LogInfo("Error in Backup");
                        Logger.LogJson(ex.Message + ex.StackTrace);
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogInfo("Error in Backup");
                Logger.LogJson(ex.Message + ex.StackTrace);
            }

        }

        private void inventoryTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                Logger.LogInventoryJson("Inventory Started");
                SystemAnalyzer objSystemAnalyzer = new SystemAnalyzer();

                Thread tsinventory = null;
                tsinventory = new Thread(objSystemAnalyzer.AnalyzeSoftwareComponents);
                tsinventory.Start();

                Thread dinventory = null;
                dinventory = new Thread(objSystemAnalyzer.GetDiskDetails);
                dinventory.Start();

                Thread sinventory = null;
                sinventory = new Thread(objSystemAnalyzer.GetServiceDetails);
                sinventory.Start();

                Thread thinventory = null;
                thinventory = new Thread(objSystemAnalyzer.AnalyzeHardwareComponents);
                thinventory.Start();
                Logger.LogInventoryJson("Inventory Completed");

            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }

        }

        /* DEFINE WATCHER EVENTS... */
        /// <summary>
        /// Event occurs when the contents of a File or Directory are changed
        /// </summary>
        private void filemonitorwatcher_Changed(object sender, System.IO.FileSystemEventArgs e)
        {

            try
            {
                if (!string.IsNullOrEmpty(excludeFolders))
                {
                    var excludefolderslist = excludeFolders.Split(',').ToArray();

                    foreach (var item in excludefolderslist)
                    {
                        if (e.FullPath.StartsWith(item))
                        {
                            return;
                        }
                    }
                }

                if (!string.IsNullOrEmpty(includeFileExtensions) && e.Name == outputFileName || !includeFileExtensions.Contains(Path.GetExtension(e.FullPath)) || string.IsNullOrEmpty(Path.GetExtension(e.FullPath)) || e.Name.Contains("~$") || e.FullPath.Contains("backupFilePath"))
                {
                    return;

                }
                else if (!string.IsNullOrEmpty(excludeFileExtensions) && e.Name == outputFileName || excludeFileExtensions.Contains(Path.GetExtension(e.FullPath)) || string.IsNullOrEmpty(Path.GetExtension(e.FullPath)) || e.Name.Contains("~$") || e.FullPath.Contains("backupFilePath"))
                {
                    return;
                }
                else
                {
                    Logger.LogInfo("Write");

                    FileModel objFileModel = new FileModel();

                    objFileModel.FileName = e.Name;

                    objFileModel.FilePath = e.FullPath;

                    objFileModel.FileAction = "Modified";

                    objFileModel.FileActionDate = DateTime.Now;

                    objFileModel.Filestatus = "UploadPending";

                    objFileModel.FilestatusDesc = "Watched Successfully";

                    FileInfo info = new FileInfo(e.FullPath);

                    info.Refresh();

                    objFileModel.Filesize = info.Length;

                    objFileModel.Source = "Watcher";

                    objFileModel.LastWrittenTime = info.LastWriteTime;

                    Logger.LogWatcherJson(objFileModel);
                }
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);

            }

        }

        /// <summary>
        /// Event occurs when the a File or Directory is created
        /// </summary>
        private void filemonitorwatcher_Created(object sender, System.IO.FileSystemEventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(excludeFolders))
                {
                    var excludefolderslist = excludeFolders.Split(',').ToArray();

                    foreach (var item in excludefolderslist)
                    {
                        if (e.FullPath.StartsWith(item))
                        {
                            return;
                        }
                    }
                }

                if (!string.IsNullOrEmpty(includeFileExtensions) && e.Name == outputFileName || !includeFileExtensions.Contains(Path.GetExtension(e.FullPath)) || string.IsNullOrEmpty(Path.GetExtension(e.FullPath)) || e.Name.Contains("~$") || e.FullPath.Contains("backupFilePath"))
                {
                    return;

                }
                else if (!string.IsNullOrEmpty(excludeFileExtensions) && e.Name == outputFileName || excludeFileExtensions.Contains(Path.GetExtension(e.FullPath)) || string.IsNullOrEmpty(Path.GetExtension(e.FullPath)) || e.Name.Contains("~$") || e.FullPath.Contains("backupFilePath"))
                {
                    return;
                }
                else
                {
                    Logger.LogInfo("Write");

                    FileModel objFileModel = new FileModel();

                    objFileModel.FileName = e.Name;

                    objFileModel.FilePath = e.FullPath;

                    objFileModel.FileAction = "Created";

                    objFileModel.FileActionDate = DateTime.Now;

                    objFileModel.Filestatus = "UploadPending";

                    objFileModel.FilestatusDesc = "Watched Successfully";

                    FileInfo info = new FileInfo(e.FullPath);

                    info.Refresh();

                    objFileModel.Filesize = info.Length;

                    objFileModel.Source = "Watcher";

                    objFileModel.LastWrittenTime = info.LastWriteTime;

                    Logger.LogWatcherJson(objFileModel);
                }
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);

            }
        }

        /// <summary>
        /// Event occurs when the a File or Directory is deleted
        /// </summary>
        private void filemonitorwatcher_Deleted(object sender, System.IO.FileSystemEventArgs e)
        {
            //try
            //{
            //    if (!string.IsNullOrEmpty(excludeFolders))
            //    {
            //        var excludefolderslist = excludeFolders.Split(',').ToArray();

            //        foreach (var item in excludefolderslist)
            //        {
            //            if (e.FullPath.StartsWith(item))
            //            {
            //                return;
            //            }
            //        }
            //    }

            //    if (e.Name == outputFileName || !includeFileExtensions.Contains(Path.GetExtension(e.FullPath)) || Path.GetExtension(e.FullPath) == string.Empty || e.Name.Contains("~$") || checkFileExistsinLog(e.FullPath))
            //    {
            //        return;
            //    }

            //    else
            //    {
            //        FileModel objFileModel = new FileModel();

            //        objFileModel.FileName = e.Name;

            //        objFileModel.FilePath = e.FullPath;

            //        objFileModel.FileAction = "Deleted";

            //        objFileModel.FileActionDate = DateTime.Now;

            //        objFileModel.Filestatus = "UploadPending";

            //        objFileModel.FilestatusDesc = "Watched Successfully";

            //        Logger.LogJson(objFileModel);
            //    }
            //}
            //catch (Exception ex)
            //{
            //    Logger.LogJson(ex.Message + ex.StackTrace);

            //}

        }

        /// <summary>
        /// Event occurs when the a File or Directory is renamed
        /// </summary>
        private void filemonitorwatcher_Renamed(object sender, System.IO.RenamedEventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(excludeFolders))
                {
                    var excludefolderslist = excludeFolders.Split(',').ToArray();

                    foreach (var item in excludefolderslist)
                    {
                        if (e.FullPath.StartsWith(item))
                        {
                            return;
                        }
                    }
                }

                if (!string.IsNullOrEmpty(includeFileExtensions) && e.Name == outputFileName || !includeFileExtensions.Contains(Path.GetExtension(e.FullPath)) || string.IsNullOrEmpty(Path.GetExtension(e.FullPath)) || e.Name.Contains("~$") || e.FullPath.Contains("backupFilePath"))
                {
                    return;

                }
                else if (!string.IsNullOrEmpty(excludeFileExtensions) && e.Name == outputFileName || excludeFileExtensions.Contains(Path.GetExtension(e.FullPath)) || string.IsNullOrEmpty(Path.GetExtension(e.FullPath)) || e.Name.Contains("~$") || e.FullPath.Contains("backupFilePath"))
                {
                    return;
                }
                else
                {
                    Logger.LogInfo("Write");

                    FileModel objFileModel = new FileModel();

                    objFileModel.FileName = e.Name;

                    objFileModel.FilePath = e.FullPath;

                    objFileModel.FileAction = "Renamed";

                    objFileModel.FileActionDate = DateTime.Now;

                    objFileModel.Filestatus = "UploadPending";

                    objFileModel.FilestatusDesc = "Watched Successfully";

                    FileInfo info = new FileInfo(e.FullPath);

                    info.Refresh();

                    objFileModel.Filesize = info.Length;

                    objFileModel.Source = "Watcher";

                    objFileModel.LastWrittenTime = info.LastWriteTime;

                    Logger.LogWatcherJson(objFileModel);
                }
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
                Logger.LogInfo(ex.Message + ex.StackTrace);

            }

        }

        private bool checkFileExistsinLog(string filePath)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            bool result = false;

            try
            {
                waitHandle.WaitOne(5000);

                string outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();
                string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;

                xmlroot objroot = new xmlroot();

                if (File.Exists(path))
                {

                    objroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(path));

                    waitHandle.Set();

                    if (objroot != null)
                    {
                        if (objroot.Filemodel != null)
                        {
                            return objroot.Filemodel.Where(k => k.FilePath == filePath && k.Filestatus == "UploadPending").Any();

                        }

                    }

                }



            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
            }

            return result;

        }

        public async Task UpdateBackUptoService(int filecount)
        {
            try
            {


                tblBackups objtblBackups = new tblBackups();
                objtblBackups.BackupName = "Backup--" + DateTime.Now.ToString();
                objtblBackups.IsActive = true;
                objtblBackups.LastUpdated = DateTime.Now;
                objtblBackups.SystemId = Environment.MachineName;
                objtblBackups.CreatedBy = "Windows Service";
                objtblBackups.CreatedOn = DateTime.Now;
                objtblBackups.BackupStatus = "Success";
                objtblBackups.UploadedFileCount = filecount;
                objtblBackups.SerilaNumber = GetSerialNumber();

                HttpManager objHttpManager = new HttpManager();
                await objHttpManager.PostRequest<tblBackups>(backupWebServiceUrl, objtblBackups);
            }

            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
            }
        }

        public async Task UpdateFullBackUptoService(int statusId)
        {
            try
            {
                tblRequests objtblRequests = new tblRequests();
                objtblRequests.SystemId = Environment.MachineName;
                objtblRequests.Updatedby = "Windows Service";
                objtblRequests.RequestStatusId = statusId;
                objtblRequests.ResultMessage = "Full Backup is Successful";
                objtblRequests.UpdatedOn = DateTime.Now;
                objtblRequests.SerialNumber = GetSerialNumber();

                HttpManager objHttpManager = new HttpManager();
                await objHttpManager.PostRequest<tblRequests>(UpdateBackupRequestWebServiceUrl, objtblRequests);
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
            }
        }

        public async Task LoadConfigfromFromWebService(bool IsFirstTimeRun)
        {
            try
            {
                HttpManager objHttpManager = new HttpManager();
                objConfigs = await objHttpManager.GetRequest<List<tblConfigs>>(configWebServiceUrl);
                #region TemplateUser

                if (objConfigs != null && objConfigs.Count > 0)
                {

                    if (objConfigs.Where(k => k.Configkey == "IncludeFileExtensions" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault() != null)
                    {
                        includeFileExtensions = objConfigs.Where(k => k.Configkey == "IncludeFileExtensions" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault();
                    }
                    foldersToScan = objConfigs.Where(k => k.Configkey == "FoldersToScan" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault();

                    if (objConfigs.Where(k => k.Configkey == "ExcludeFolders" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault() != null)
                    {
                        excludeFolders = objConfigs.Where(k => k.Configkey == "ExcludeFolders" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault();
                    }
                    VersionstoKeep = Convert.ToInt32(objConfigs.Where(k => k.Configkey == "VersionstoKeep" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault());

                    if (objConfigs.Where(k => k.Configkey == "ExcludeFileExtensions" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault() != null)
                    {
                        excludeFileExtensions = objConfigs.Where(k => k.Configkey == "ExcludeFileExtensions" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault();
                    }
                    backupFilePath = objConfigs.Where(k => k.Configkey == "BackupFilePath" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault();

                    backupType = objConfigs.Where(k => k.Configkey == "BackupType" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault();

                    if (objConfigs.Where(k => k.Configkey == "CloudBackupProvider" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault() != null)
                    {
                        backupProvider = objConfigs.Where(k => k.Configkey == "CloudBackupProvider" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault();
                    }

                    if (objConfigs.Where(k => k.Configkey == "AWSAccessKey" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault() != null)
                    {
                        awsAccessKey = objConfigs.Where(k => k.Configkey == "AWSAccessKey").Select(k => k.Configvalue).FirstOrDefault();
                    }

                    if (objConfigs.Where(k => k.Configkey == "AwsSecretKey" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault() != null)
                    {

                        awsSecretKey = objConfigs.Where(k => k.Configkey == "AwsSecretKey").Select(k => k.Configvalue).FirstOrDefault();
                    }

                    if (objConfigs.Where(k => k.Configkey == "AWSBucketName" && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Select(k => k.Configvalue).FirstOrDefault() != null)
                    {
                        awsBucket = objConfigs.Where(k => k.Configkey == "AWSBucketName").Select(k => k.Configvalue).FirstOrDefault();
                    }



                    IsConfigloaded = true;

                    if (IsFirstTimeRun && IsConfigloaded)
                    {
                        UpdateConfigFile();
                    }
                }
                else
                {
                    Logger.LogJson("Template is not created");
                    IsConfigloaded = false;
                }

                #endregion

            }
            catch (Exception ex)
            {
                Logger.LogInfo("Issue in Configuration Database---- " + ex.Message + ex.StackTrace);
            }
        }

        private async Task LoadConfgMaster()
        {
            try
            {
                HttpManager objHttpManager = new HttpManager();
                objConfigs = await objHttpManager.GetRequest<List<tblConfigs>>(configWebServiceUrl);

                objConfigMaster = await objHttpManager.GetRequest<List<tblConfigMaster>>(configmasterWebServiceUrl);

                #region Templatemaster

                if (objConfigMaster != null)
                {

                    threadsleeptime = Convert.ToInt32(objConfigMaster.Where(k => k.Configkey == "ThreadSleep").Select(k => k.Configvalue).FirstOrDefault());

                    outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();

                    canEncrypt = Convert.ToBoolean(objConfigMaster.Where(k => k.Configkey == "CanEncrypt").Select(k => k.Configvalue).FirstOrDefault());

                    fileVersionKey = objConfigMaster.Where(k => k.Configkey == "fileVersionKey").Select(k => k.Configvalue).FirstOrDefault();

                    fileSizePerStreaminMB = Convert.ToInt32(objConfigMaster.Where(k => k.Configkey == "FileSizePerStreaminMB").Select(k => k.Configvalue).FirstOrDefault());

                    fileChunkinMB = Convert.ToInt32(objConfigMaster.Where(k => k.Configkey == "FileChunkinMB").Select(k => k.Configvalue).FirstOrDefault());

                    filemonitorTimer.Interval = Convert.ToInt32(objConfigMaster.Where(k => k.Configkey == "FileMonitorInterval").Select(k => k.Configvalue).FirstOrDefault());

                    fileuploadTimer.Interval = Convert.ToInt32(objConfigMaster.Where(k => k.Configkey == "FileuploadInterval").Select(k => k.Configvalue).FirstOrDefault());

                    InventoryTimer.Interval = Convert.ToInt32(objConfigMaster.Where(k => k.Configkey == "InventoryTimerInterval").Select(k => k.Configvalue).FirstOrDefault());

                    ConfigMonitorTimer.Interval = Convert.ToInt32(objConfigMaster.Where(k => k.Configkey == "ConfigMonitorInterval").Select(k => k.Configvalue).FirstOrDefault());

                    FullBackupTimer.Interval = Convert.ToInt32(objConfigMaster.Where(k => k.Configkey == "FullBackupTimerInterval").Select(k => k.Configvalue).FirstOrDefault());

                    encryptionKey = objConfigMaster.Where(k => k.Configkey == "EncryptionKey").Select(k => k.Configvalue).FirstOrDefault();

                    IsMasterConfigLoaded = true;
                }
                else
                {
                    Logger.LogInfo("Master Configuration is missing");
                }
            }
            catch (Exception ex)
            {
                Logger.LogInfo("Master Configuration is missing---- " + ex.Message + ex.StackTrace);
                IsMasterConfigLoaded = false;
            }

            #endregion
        }

        //public async Task LoadModules()
        //{
        //    try
        //    {
        //        //string modulesWebServiceUrl = string.Format(ConfigurationManager.AppSettings["ModulesWebServiceUrl"].ToString(), systemId) + "&SerialNumber=" + GetSerialNumber();

        //        //HttpManager objHttpManager = new HttpManager();
        //        //objModules = await objHttpManager.GetRequest<List<tblModules>>(modulesWebServiceUrl);

        //        //Logger.LogJson(Environment.MachineName);

        //        //canscan = objModules.Where(k => k.ModuleName == "Scan" && k.IsActive == true && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Any();
        //        //canwatch = objModules.Where(k => k.ModuleName == "Scan" && k.IsActive == true && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Any();
        //        //canupload = objModules.Where(k => k.ModuleName == "Scan" && k.IsActive == true && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Any();
        //        //canAnalyzeInventory = objModules.Where(k => k.ModuleName == "Inventory" && k.IsActive == true && k.SystemId.ToLower() == Environment.MachineName.ToLower()).Any();
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.LogInfo("Issue in Configuration Database---- " + ex.Message + ex.StackTrace);
        //        Logger.LogJson("Issue in Modules Database---- " + ex.Message + ex.StackTrace);
        //    }
        //}

        public string GetAppSettingValue(string key)
        {
            string result = string.Empty;
            try
            {

                EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                waitHandle.WaitOne();

                var trueconfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                result = trueconfig.AppSettings.Settings[key].Value.ToString();

                waitHandle.Set();

            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
            }

            return result;

        }

        public string UpdateAppSettingValue(string key, string value)
        {
            string result = "";
            try
            {

                EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                waitHandle.WaitOne();

                var trueconfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                result = trueconfig.AppSettings.Settings[key].Value = value;

                trueconfig.Save(ConfigurationSaveMode.Modified);

                ConfigurationManager.RefreshSection("appSettings");

                waitHandle.Set();


            }
            catch (Exception ex)
            {
                Logger.LogInfo("Issue when updating config file---- " + ex.Message + ex.StackTrace);
            }

            return result;

        }

        public void ResetUploadedData()
        {
            try
            {

                Logger.LogInfo("Reset Upload Data Started");

                EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                waitHandle.WaitOne();

                File.Delete(outputFilePath);

                waitHandle.Set();

                Logger.LogInfo("Reset Upload Data Completed");
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
            }

        }

        public bool UpdateConfigFile()
        {
            bool result = false;

            try
            {

                if (objConfigs.Where(k => k.Configkey == "IncludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault() != null)
                {
                    UpdateAppSettingValue("IncludeFileExtensions", objConfigs.Where(k => k.Configkey == "IncludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault().ToString());
                }
                if (objConfigs.Where(k => k.Configkey == "ExcludeFolders").Select(k => k.Configvalue).FirstOrDefault() != null)
                {
                    UpdateAppSettingValue("ExcludeFolders", objConfigs.Where(k => k.Configkey == "ExcludeFolders").Select(k => k.Configvalue).FirstOrDefault().ToString());
                }

                UpdateAppSettingValue("FoldersToScan", objConfigs.Where(k => k.Configkey == "FoldersToScan").Select(k => k.Configvalue).FirstOrDefault().ToString());

                if (objConfigs.Where(k => k.Configkey == "ExcludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault() != null)
                {
                    UpdateAppSettingValue("ExcludeFileExtensions", objConfigs.Where(k => k.Configkey == "ExcludeFileExtensions").Select(k => k.Configvalue).FirstOrDefault().ToString());
                }
                UpdateAppSettingValue("BackupType", objConfigs.Where(k => k.Configkey == "BackupType").Select(k => k.Configvalue).FirstOrDefault().ToString());

                if (backupType != "Local")
                {
                    if (objConfigs.Where(k => k.Configkey == "CloudBackupProvider").Select(k => k.Configvalue).FirstOrDefault() != null)
                    {
                        UpdateAppSettingValue("CloudBackupProvider", objConfigs.Where(k => k.Configkey == "CloudBackupProvider").Select(k => k.Configvalue).FirstOrDefault().ToString());
                    }
                }
                else
                {
                    UpdateAppSettingValue("BackupFilePath", objConfigs.Where(k => k.Configkey == "BackupFilePath").Select(k => k.Configvalue).FirstOrDefault().ToString());
                }

                Logger.LogJson("Service read complete");

                UpdateAppSettingValue("VersionstoKeep", objConfigs.Where(k => k.Configkey == "VersionstoKeep").Select(k => k.Configvalue).FirstOrDefault().ToString());

                UpdateAppSettingValue("canscan", objModules.Where(k => k.ModuleName == "Scan" && k.SystemId == Environment.MachineName).Select(k => k.IsActive).FirstOrDefault().ToString());
                UpdateAppSettingValue("canwatch", objModules.Where(k => k.ModuleName == "File System Watcher" && k.SystemId == Environment.MachineName).Select(k => k.IsActive).FirstOrDefault().ToString());
                UpdateAppSettingValue("canupload", objModules.Where(k => k.ModuleName == "File Upload" && k.SystemId == Environment.MachineName).Select(k => k.IsActive).FirstOrDefault().ToString());
                UpdateAppSettingValue("canInventory", objModules.Where(k => k.ModuleName == "Inventory" && k.SystemId == Environment.MachineName).Select(k => k.IsActive).FirstOrDefault().ToString());
                result = true;
            }

            catch (Exception ex)
            {
                Logger.LogInfo("Issue when updating config file---- " + ex.Message + ex.StackTrace);
                result = false;
            }

            return result;
        }

        #region PerformanceManager

        private void PerformanceMonitorTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {

        }

        private void PerformanceMonitorDbUpdater_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {

        }

        #endregion

        //private void UpdateAgentDataTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        //{
        //    try
        //    {
        //        SaveAgentUpdates();
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.LogJson(ex.Message + ex.StackTrace);
        //    }

        //}

        //private void SaveAgentUpdates()
        //{
        //    try
        //    {
        //        Utilities objUtilities = new Utilities();
        //        string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "TotalBackupSize.txt";
        //        string totalBackupSize = File.ReadAllText(filename);
        //        AgentUpdatesViewModel objAgentUpdatesViewModel = new AgentUpdatesViewModel();
        //        objAgentUpdatesViewModel.SystemId = Environment.MachineName;
        //        objAgentUpdatesViewModel.SerialNumber = GetSerialNumber();
        //        objAgentUpdatesViewModel.TotalBackupSize = totalBackupSize;

        //        objUtilities.ProcessAgentUpdates(objAgentUpdatesViewModel);
        //    }
        //    catch (Exception ex)
        //    {
        //        Logger.LogJson(ex.Message + ex.StackTrace);
        //    }
        //}

        public string GetSerialNumber()
        {
            string serialNumber = string.Empty;
            try
            {


                string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\SerailNumber.txt";
                if (File.Exists(path))
                {
                    serialNumber = File.ReadAllText(path);
                }
                else
                {
                    ManagementObjectSearcher mSearcher = new ManagementObjectSearcher("SELECT SerialNumber, SMBIOSBIOSVersion, ReleaseDate FROM Win32_BIOS");
                    ManagementObjectCollection collection = mSearcher.Get();
                    foreach (ManagementObject obj in collection)
                    {
                        serialNumber = (string)obj["SerialNumber"];
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
            }

            return serialNumber.Replace(" ", string.Empty);
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


                configWebServiceUrl = baseurl + string.Format(ConfigurationManager.AppSettings["ConfigWebServiceUrl"].ToString(), systemId) + "&SerialNumber=" + GetSerialNumber();
                configmasterWebServiceUrl = baseurl + ConfigurationManager.AppSettings["ConfigMasterWebServiceUrl"].ToString();
                backupWebServiceUrl = baseurl + ConfigurationManager.AppSettings["BackupWebServiceUrl"].ToString();
                UpdateBackupRequestWebServiceUrl = baseurl + ConfigurationManager.AppSettings["UpdateBackupRequestWebServiceUrl"].ToString();

                Logger.LogJson(configWebServiceUrl);
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
            }
        }

        private void OnWatcherError(object source, ErrorEventArgs e)
        {
            Logger.LogJson("Error in watcher :" + e.GetException().Message + e.GetException().StackTrace);

        }

        //void NotAccessibleError(FileSystemWatcher source, ErrorEventArgs e)
        //{
        //    int iMaxAttempts = 120;
        //    int iTimeOut = 30000;
        //    int i = 0;
        //    while ((!Directory.Exists(source.Path) || source.EnableRaisingEvents == false) && i < iMaxAttempts)
        //    {
        //        i += 1;
        //        try
        //        {
        //            source.EnableRaisingEvents = false;
        //            if (!Directory.Exists(source.Path))
        //            {
        //                Logger.LogJson("Watcher Directory Inaccessible " + source.Path + " at " + DateTime.Now.ToString("HH:mm:ss"));
        //                System.Threading.Thread.Sleep(iTimeOut);
        //            }
        //            else
        //            {
        //                // ReInitialize the Component
        //                source.Dispose();
        //                source = null;
        //                source = new System.IO.FileSystemWatcher();
        //                ((System.ComponentModel.ISupportInitialize)(source)).BeginInit();
        //                source.EnableRaisingEvents = true;
        //                ((System.ComponentModel.ISupportInitialize)(source)).EndInit();
        //                Logger.LogJson("Watcher Try to Restart RaisingEvents Watcher at " + DateTime.Now.ToString("HH:mm:ss"));
        //            }
        //        }
        //        catch (Exception error)
        //        {
        //            Logger.LogJson("Error trying Restart Service " + error.StackTrace + " at " + DateTime.Now.ToString("HH:mm:ss"));
        //            source.EnableRaisingEvents = false;
        //            System.Threading.Thread.Sleep(iTimeOut);
        //        }
        //    }
        //}

        private void scheduledMonitorTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                if (!IsMonitorRunning && !isScheduleRunning)
                {
                    isScheduleRunning = true;
                    Logger.LogScheduledMonitorJson("Schedule Monitor Started");

                    ScheduledFileMonitorManager scheduledfileMonitorManager = new ScheduledFileMonitorManager(excludeFolders, foldersToScan, includeFileExtensions, excludeFileExtensions, threadsleeptime);
                    ThreadStart scheduledmonitorstarter = new ThreadStart(scheduledfileMonitorManager.SearcFiles);
                    scheduledmonitorstarter += () =>
                    {
                        IsMonitorRunning = false;
                        isScheduleRunning = false;
                        Logger.LogMonitorJson("Schedule Monitor Completed");
                    };
                    Thread t1 = new Thread(scheduledmonitorstarter);
                    t1.Start();

                }

            }
            catch (Exception ex)
            {
                Logger.LogJson("Issue in Scheduled File Monitor: " + ex.Message + ex.StackTrace);
            }

        }


    }
}
