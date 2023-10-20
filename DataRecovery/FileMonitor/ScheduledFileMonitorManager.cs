using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Xml.Serialization;
using DataRecovery.Common;
using Newtonsoft.Json;

namespace DataRecovery.FileMonitor
{
    public class ScheduledFileMonitorManager
    {
        string excludeFolders, foldertoScan, includeExtensions, excludeExtensions;
        int threadSleepTime;
        List<FileInfo> newFiles = new List<FileInfo>();
        public ScheduledFileMonitorManager(string ExcludeFolders, string FoldersToScan, string IncludeExtensions, string ExcludeExtensions, int ThreadSleepTime)
        {
            excludeFolders = ExcludeFolders;
            foldertoScan = FoldersToScan;
            includeExtensions = IncludeExtensions;
            excludeExtensions = ExcludeExtensions;
            threadSleepTime = ThreadSleepTime;
        }

        public void SearcFiles()
        {
            try
            {


                var drives = DriveInfo.GetDrives().Where(drive => drive.IsReady && drive.DriveType != DriveType.CDRom && drive.DriveType != DriveType.Network && drive.DriveType != DriveType.Removable).ToList();

                List<FileModel> objlstFileModel = new List<FileModel>();

                if (foldertoScan == "full")
                {
                    foreach (var item in drives)
                    {
                        try
                        {
                            System.IO.DirectoryInfo rootDir = new DirectoryInfo(item.Name);

                            WalkDirectoryTree(rootDir);
                        }
                        catch (Exception ex)
                        {
                            Logger.LogScheduledMonitorJson(ex.Message + ex.StackTrace);
                        }

                    }
                }
                else
                {
                    if (foldertoScan.Contains(','))
                    {
                        var folders = foldertoScan.Split(',').ToArray();

                        foreach (var folder in folders)
                        {
                            System.IO.DirectoryInfo rootDir = new DirectoryInfo(folder);
                            WalkDirectoryTree(rootDir);
                        }
                    }
                    else
                    {
                        System.IO.DirectoryInfo rootDir = new DirectoryInfo(foldertoScan);
                        WalkDirectoryTree(rootDir);
                    }



                }

            }
            catch (Exception ex)
            {

                Logger.LogScheduledMonitorJson("Error in Scan " + ex.Message + ex.StackTrace);
                Logger.LogScheduledMonitorJson(ex.Message + ex.StackTrace);

                throw ex;
            }
        }
        void WalkDirectoryTree(System.IO.DirectoryInfo root)
        {

            bool skipfolder = false;

            bool fileExists = false;


            System.IO.FileInfo[] files = null;
            System.IO.DirectoryInfo[] subDirs = null;

            List<FileModel> objmodel = new List<FileModel>();
            xmlroot objroot = new xmlroot();

            string outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();
            string outputFilePath = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;

            string watcheroutputFileName = ConfigurationManager.AppSettings["WatcherOutputFileName"].ToString();
            string watcheroutputFilePath = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + watcheroutputFileName;

            List<FileModel> allFiles = new List<FileModel>();


            if (File.Exists(outputFilePath) && !Logger.IsFileLocked(outputFilePath))
            {
                try
                {
                    objroot = Logger.GetJson(outputFilePath);

                    if (objroot != null)
                    {
                        if (objroot.Filemodel != null)
                        {
                            allFiles.AddRange(objroot.Filemodel);

                        }
                    }

                }
                catch (Exception ex)
                {
                    Logger.LogScheduledMonitorJson("Error Reading FileInfo Json " + ex.Message + ex.StackTrace);
                    Logger.LogScheduledMonitorJson(ex.Message + ex.StackTrace);
                    throw ex;
                }


            }

            if (File.Exists(watcheroutputFilePath) && !Logger.IsFileLocked(watcheroutputFilePath))
            {

                try
                {
                    objroot = Logger.GetWatcherJson(watcheroutputFilePath);

                    if (objroot != null)
                    {
                        if (objroot.Filemodel != null)
                        {
                            allFiles.AddRange(objroot.Filemodel);

                        }
                    }

                }
                catch (Exception ex)
                {
                    Logger.LogScheduledMonitorJson("Error Reading watcher json " + ex.Message + ex.StackTrace);
                    Logger.LogScheduledMonitorJson(ex.Message + ex.StackTrace);
                    throw ex;
                }


            }

            // First, process all the files directly under this folder
            try
            {

                files = root.GetFiles("*.*").Where(k => k.Extension != string.Empty && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                if (!string.IsNullOrEmpty(includeExtensions))
                {

                    if (fileExists)
                    {
                        files = files.Where(k => k.Extension != string.Empty && includeExtensions.ToLower().Contains(k.Extension.ToLower()) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                    }
                    else
                    {
                        files = files.Where(k => k.Extension != string.Empty && includeExtensions.ToLower().Contains(k.Extension.ToLower()) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                    }
                }
                if (!string.IsNullOrEmpty(excludeExtensions))
                {

                    if (fileExists)
                    {
                        files = files.Where(k => k.Extension != string.Empty && !excludeExtensions.Contains(k.Extension.ToLower()) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                    }
                    else
                    {
                        files = files.Where(k => k.Extension != string.Empty && !excludeExtensions.Contains(k.Extension.ToLower()) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                    }
                }

            }
            // This is thrown if even one of the files requires permissions greater
            // than the application provides.
            catch (UnauthorizedAccessException ex)
            {
                // This code just writes out the message and continues to recurse.
                // You may decide to do something different here. For example, you
                // can try to elevate your privileges and access the file again.
                Logger.LogScheduledMonitorJson(ex.Message + ex.StackTrace);
                Logger.LogScheduledMonitorJson("Error in Scan " + ex.Message + ex.StackTrace);
            }

            catch (System.IO.DirectoryNotFoundException ex)
            {
                Logger.LogScheduledMonitorJson("Error in Scan " + ex.Message + ex.StackTrace);
                Logger.LogScheduledMonitorJson(ex.Message + ex.StackTrace);
            }

            if (files != null)
            {
                foreach (var item in files)
                {
                    if (allFiles.Count > 0 && !allFiles.Where(k => k.FilePath == item.FullName).Any())
                    {
                        newFiles.Add(item);
                    }
                    else if (allFiles.Count > 0 && allFiles.Where(k => k.FilePath == item.FullName && !DateTime.Equals(k.LastWrittenTime, item.LastWriteTime)).Any())
                    {
                        if (!allFiles.Where(k => k.FilePath == item.FullName && k.Filestatus == "Upload Pending").Any())
                        {
                            newFiles.Add(item);
                        }

                    }
                }

                foreach (var file in newFiles)
                {
                    // In this example, we only access the existing FileInfo object. If we
                    // want to open, delete or modify the file, then
                    // a try-catch block is required here to handle the case
                    // where the file has been deleted since the call to TraverseTree().

                    FileModel fileobject = new FileModel();

                    fileobject.FileAction = "Scan";
                    fileobject.FileName = file.Name;
                    fileobject.FilePath = file.FullName;
                    fileobject.Filestatus = "UploadPending";
                    fileobject.FileActionDate = DateTime.Now;
                    fileobject.FilestatusDesc = "Scanned Successfully";
                    fileobject.Filesize = (file.Length / 1024);
                    fileobject.Source = "Timer";
                    fileobject.LastWrittenTime = file.LastWriteTime;
                    Logger.LogJson(fileobject);
                    Thread.Sleep(threadSleepTime);
                }
            }

            // Now find all the subdirectories under this directory.
            subDirs = root.GetDirectories();

            foreach (System.IO.DirectoryInfo dirInfo in subDirs)
            {
                if (!string.IsNullOrEmpty(excludeFolders))
                {
                    var excludedFoldersList = excludeFolders.Split(',').ToArray();
                    foreach (var item in excludedFoldersList)
                    {
                        if (root.FullName.Contains(item))
                        {
                            skipfolder = true;
                        }
                    }
                }

                if (dirInfo.Attributes.HasFlag(FileAttributes.System) || dirInfo.Name.Contains("$"))
                {

                }
                else if (skipfolder)
                {

                }
                else
                {
                    //Thread.Sleep(Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["ThreadSleep"].ToString()));
                    // Resursive call for each subdirectory.
                    WalkDirectoryTree(dirInfo);
                }
            }

        }
        public void Search()
        {
            using (OleDbConnection conn = new OleDbConnection("Provider=Search.CollatorDSO;Extended Properties='Application=Windows';"))
            {
                conn.Open();
                OleDbCommand cmd = new OleDbCommand(".txt", conn);

                using (OleDbDataReader reader = cmd.ExecuteReader())
                {

                    for (int i = 0; i < reader.FieldCount; i++)
                    {
                        FileModel objFileModel = new FileModel();

                        objFileModel.FileName = reader.GetName(i);

                        Logger.LogXml(objFileModel);

                    }

                    while (reader.Read())
                    {
                        List<object> row = new List<object>();

                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            row.Add(reader[i]);
                        }

                    }
                }
            }
        }
    }
}
