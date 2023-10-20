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
    public class FileMonitorManager
    {
        string excludeFolders, foldertoScan, includeExtensions, excludeExtensions;
        int threadSleepTime;

        public FileMonitorManager(string ExcludeFolders, string FoldersToScan, string IncludeExtensions, string ExcludeExtensions, int ThreadSleepTime)
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
                            Logger.LogMonitorJson(ex.Message + ex.StackTrace);
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

                var completedconfig = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                completedconfig.AppSettings.Settings["canscan"].Value = "Completed";
                completedconfig.Save(ConfigurationSaveMode.Modified);

                ConfigurationManager.RefreshSection("appSettings");

            }
            catch (Exception ex)
            {
                Logger.LogMonitorJson("Error in Scan " + ex.Message + ex.StackTrace);
                Logger.LogMonitorJson(ex.Message + ex.StackTrace);

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


            List<string> currentfiles = new List<string>();

            if (File.Exists(outputFilePath))
            {
                fileExists = true;
                try
                {

                    objroot = Logger.GetJson(outputFilePath);

                    if (objroot != null)
                    {
                        if (objroot.Filemodel != null)
                        {
                            currentfiles = objroot.Filemodel.Select(k => k.FilePath).ToList();
                        }
                    }


                }
                catch (Exception ex)
                {
                    Logger.LogMonitorJson("Error in Scan " + ex.Message + ex.StackTrace);
                    Logger.LogMonitorJson(ex.Message + ex.StackTrace);
                }
            }
            else
            {
                fileExists = false;
            }


            // First, process all the files directly under this folder
            try
            {
                Logger.LogMonitorJson("IncludeExtensions :" + includeExtensions);

                files = root.GetFiles("*.*", SearchOption.TopDirectoryOnly).Where(k => k.Extension != string.Empty && !currentfiles.Contains(k.FullName) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                if (!string.IsNullOrEmpty(includeExtensions))
                {

                    if (fileExists)
                    {
                        files = files.Where(k => k.Extension != string.Empty && includeExtensions.ToLower().Contains(k.Extension.ToLower()) && !currentfiles.Contains(k.FullName) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                    }
                    else
                    {
                        files = files.Where(k => k.Extension != string.Empty && includeExtensions.ToLower().Contains(k.Extension.ToLower()) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                    }
                }
                if (!string.IsNullOrEmpty(excludeExtensions))
                {
                    Logger.LogMonitorJson("ExcludeExtensions :" + includeExtensions);
                    if (fileExists)
                    {
                        files = files.Where(k => k.Extension != string.Empty && !excludeExtensions.Contains(k.Extension.ToLower()) && !currentfiles.Contains(k.FullName) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                    }
                    else
                    {
                        files = files.Where(k => k.Extension != string.Empty && !excludeExtensions.Contains(k.Extension.ToLower()) && !k.Attributes.HasFlag(FileAttributes.Hidden) && !k.Name.Contains("~$")).ToArray();
                    }
                }


                foreach (var item in files)
                {
                    Logger.LogMonitorJson("File Name" + item.FullName);
                }
            }
            // This is thrown if even one of the files requires permissions greater
            // than the application provides.
            catch (UnauthorizedAccessException ex)
            {
                // This code just writes out the message and continues to recurse.
                // You may decide to do something different here. For example, you
                // can try to elevate your privileges and access the file again.
                Logger.LogMonitorJson(ex.Message + ex.StackTrace);
                Logger.LogMonitorJson("Error in Scan " + ex.Message + ex.StackTrace);
            }

            catch (System.IO.DirectoryNotFoundException ex)
            {
                Logger.LogMonitorJson("Error in Scan " + ex.Message + ex.StackTrace);
                Logger.LogMonitorJson(ex.Message + ex.StackTrace);
            }

            if (files != null)
            {
                foreach (System.IO.FileInfo fi in files.OrderBy(k => k.FullName))
                {
                    // In this example, we only access the existing FileInfo object. If we
                    // want to open, delete or modify the file, then
                    // a try-catch block is required here to handle the case
                    // where the file has been deleted since the call to TraverseTree().
                    FileModel fileobject = new FileModel();

                    fileobject.FileAction = "Scan";
                    fileobject.FileName = fi.Name;
                    fileobject.FilePath = fi.FullName;
                    fileobject.Filestatus = "UploadPending";
                    fileobject.FileActionDate = DateTime.Now;
                    fileobject.FilestatusDesc = "Scanned Successfully";
                    fileobject.Filesize = (fi.Length / 1024);
                    fileobject.Source = "Timer";
                    fileobject.LastWrittenTime = fi.LastWriteTime;


                    Logger.LogJson(fileobject);
                    Thread.Sleep(threadSleepTime);
                }

            }

            
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
