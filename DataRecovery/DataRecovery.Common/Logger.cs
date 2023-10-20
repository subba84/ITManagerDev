using DataRecovery.Common.Models.ViewModels;
using DataRecovery.Models;
using Newtonsoft.Json;
using ObjectsComparer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;

namespace DataRecovery.Common
{
    public static class Logger
    {
        private static ReaderWriterLockSlim readWriterLockSlim = new ReaderWriterLockSlim();
        private static ReaderWriterLockSlim getJsonLockSlim = new ReaderWriterLockSlim();
        private static ReaderWriterLockSlim updateLockSlim = new ReaderWriterLockSlim();

        public static void LogXml(FileModel objFileModel)
        {
            string path = "C:\\FileInfo.xml";

            List<FileModel> objlstfilemodel = new List<FileModel>();

            objlstfilemodel.Add(objFileModel);

            xmlroot objxmlroot = new xmlroot();
            objxmlroot.Filemodel = objlstfilemodel;

            if (!File.Exists(path))
            {

                XmlSerializer xs = new XmlSerializer(typeof(xmlroot));

                var emptyNamepsaces = new XmlSerializerNamespaces(new[] { XmlQualifiedName.Empty });

                TextWriter txtWriter = new StreamWriter(path);

                xs.Serialize(txtWriter, objxmlroot, emptyNamepsaces);

                txtWriter.Close();

            }
            else
            {

                XmlDocument xDoc = new XmlDocument();

                xDoc.Load(path);

                var rootNode = xDoc.GetElementsByTagName("xmlroot")[0];
                var nav = rootNode.CreateNavigator();
                var emptyNamepsaces = new XmlSerializerNamespaces(new[] { XmlQualifiedName.Empty });

                using (var writer = nav.AppendChild())
                {
                    var serializer = new XmlSerializer(objFileModel.GetType());
                    writer.WriteWhitespace("");
                    serializer.Serialize(writer, objFileModel, emptyNamepsaces);
                    writer.Close();
                }

                xDoc.Save(path);
            }

        }

        public static void LogJson(string error)
        {
            try
            {

                EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
                waitHandle.WaitOne(5000);
                string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\logs\\" + "EventLog.txt";
                using (StreamWriter w = File.AppendText(filename))
                {
                    w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), error));
                }
                waitHandle.Set();
            }
            catch (Exception ex)
            {
                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(ex.Message + ex.StackTrace, EventLogEntryType.Information, 101, 1);
                }
            }

        }

        public static void LogJson(FileModel objFileModel)
        {
            if (objFileModel != null)
            {
                EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
                waitHandle.WaitOne();
                try
                {

                    string outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();
                    string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;
                    xmlroot objroot = new xmlroot();
                    List<FileModel> objmodel = new List<FileModel>();

                    string convertedJson = string.Empty;
                    
                    if (File.Exists(path))
                    {
                        
                        objroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(path));

                        if (objroot != null)
                        {
                            if (objroot.Filemodel != null)
                            {
                                objmodel = objroot.Filemodel;
                                objmodel.Add(objFileModel);
                                objroot.Filemodel = objmodel;

                                convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);
                            }
                        }
                        else
                        {
                            objmodel.Add(objFileModel);
                            objroot.Filemodel = objmodel;
                            convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);

                        }


                    }
                    else
                    {
                        objmodel.Add(objFileModel);
                        objroot.Filemodel = objmodel;
                        convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);
                    }


                    System.IO.File.WriteAllText(path, convertedJson);
                    
                }
                catch (Exception ex)
                {
                    Logger.LogJson(ex.Message + ex.StackTrace);
                }
                waitHandle.Set();
            }
            else
            {

            }
        }

        public static void LogWatcherJson(FileModel objFileModel)
        {
            if (objFileModel != null)
            {
                //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                try
                {

                    string outputFileName = ConfigurationManager.AppSettings["WatcherOutputFileName"].ToString();
                    string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;
                    xmlroot objroot = new xmlroot();
                    List<FileModel> objmodel = new List<FileModel>();

                    string convertedJson = string.Empty;

                    if (File.Exists(path))
                    {
                        //waitHandle.WaitOne();
                        objroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(path));

                        if (objroot != null)
                        {
                            if (objroot.Filemodel != null)
                            {
                                if (!objroot.Filemodel.Where(k=>k.FilePath == objFileModel.FilePath && k.Filestatus == "UploadPending").Any())
                                {
                                    objmodel = objroot.Filemodel;
                                    objmodel.Add(objFileModel);
                                    objroot.Filemodel = objmodel;
                                }

                                convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);
                            }
                        }
                        else
                        {
                            objmodel.Add(objFileModel);
                            objroot.Filemodel = objmodel;
                            convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);

                        }


                    }
                    else
                    {
                        objmodel.Add(objFileModel);
                        objroot.Filemodel = objmodel;
                        convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);
                    }


                    System.IO.File.WriteAllText(path, convertedJson);
                    //waitHandle.Set();
                }
                catch (Exception ex)
                {
                    Logger.LogJson(ex.Message + ex.StackTrace);
                }
            }
            else
            {

            }
        }

        public static void LogSoftwareInventoryJson(string message)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            //waitHandle.WaitOne(5000);
            //string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "SoftwareInventoryEventLog.txt";
            //if(!File.Exists(filename))
            //{
            //    File.Create(filename);
            //}

            //using (StreamWriter w = File.AppendText(filename))
            //{
            //    w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            //}
            //waitHandle.Set();
        }

        public static void LogHardwareInventoryJson(string message)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            //waitHandle.WaitOne();
           
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "HardwareInventoryEventLog.txt";
            if (!File.Exists(filename))
            {
                File.Create(filename);
            }
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }
            //waitHandle.Set();
        }

        public static void LogDiskJson(string message)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            //waitHandle.WaitOne();
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "DiskEventLog.txt";
            if (!File.Exists(filename))
            {
                File.Create(filename);
            }
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }
            //waitHandle.Set();
        }

        public static void LogServiceJson(string message)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            //waitHandle.WaitOne();
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "ServiceEventLog.txt";
            if (!File.Exists(filename))
            {
                File.Create(filename);
            }
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }
            //waitHandle.Set();
        }

        public static void LogMonitorJson(string message)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            //waitHandle.WaitOne();
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "MonitorEventLog.txt";
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }
            //waitHandle.Set();
        }

        public static void LogInventoryJson(string message)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            //waitHandle.WaitOne();
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "InventoryEventLog.txt";
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }
            //waitHandle.Set();
        }

        public static void LogBackupJson(string message)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            //waitHandle.WaitOne();
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "BackupEventLog.txt";
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }
            //waitHandle.Set();
        }

        public static void updateJson(string filePath, bool isError, string errorMessage)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            waitHandle.WaitOne(10000);
            try
            {
                
                string outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();
                string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;

                xmlroot objroot = new xmlroot();

                objroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(path));

                if (isError)
                {
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").FilestatusDesc = "UploadedFailed " + errorMessage;
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").FileAction = "Upload";
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").Filestatus = "Error";

                }
                else
                {
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").FilestatusDesc = "Uploaded Successfully";
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").FileAction = "Upload";
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").Filestatus = "uploaded";

                }
                //waitHandle.WaitOne();


                string output = Newtonsoft.Json.JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);
                File.WriteAllText(path, output);
                
                

            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }

            waitHandle.Set();

        }

        public static void updateWatcherJson(string filePath, bool isError, string errorMessage)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            try
            {
                //waitHandle.WaitOne();

                string outputFileName = ConfigurationManager.AppSettings["WatcherOutputFileName"].ToString();
                string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;


                xmlroot objroot = new xmlroot();

                objroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(path));
                //waitHandle.Set();



                if (isError)
                {
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").FilestatusDesc = "UploadedFailed " + errorMessage;
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").FileAction = "Upload";
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").Filestatus = "Error";

                }
                else
                {
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").FilestatusDesc = "Uploaded Successfully";
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").FileAction = "Upload";
                    objroot.Filemodel.Find(k => k.FilePath == filePath && k.Filestatus == "UploadPending").Filestatus = "uploaded";

                }
                //waitHandle.WaitOne();


                string output = Newtonsoft.Json.JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);
                File.WriteAllText(path, output);
                //waitHandle.Set();

            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }

        }

        public static void CopyJsontoUpload()
        {
            try
            {
                EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
                waitHandle.WaitOne();

                string uploadPath = System.AppDomain.CurrentDomain.BaseDirectory + "\\Upload";
                if (!Directory.Exists(uploadPath))
                {
                    Directory.CreateDirectory(uploadPath);
                }

                string outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();
                string outputFilePath = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + outputFileName;
                string uploadFilePath = uploadPath + "\\" + outputFileName;

                if (!File.Exists(uploadFilePath))
                {
                    File.Copy(outputFilePath, uploadFilePath);

                }
                else
                {
                    xmlroot objroot = new xmlroot();

                    objroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(outputFilePath));

                    var existingdata = objroot.Filemodel.Where(k => k.Filestatus == "UploadPending").ToList();

                    xmlroot objnewjroot = new xmlroot();

                    objnewjroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(uploadFilePath));

                    objnewjroot.Filemodel.AddRange(objroot.Filemodel);

                    string output = Newtonsoft.Json.JsonConvert.SerializeObject(objnewjroot, Newtonsoft.Json.Formatting.Indented);
                    File.WriteAllText(uploadFilePath, output);
                }

                waitHandle.Set();
            }
            catch (Exception ex)
            {
                LogJson(ex.Message + ex.StackTrace);
            }

        }

        public static bool CanLogSoftwareComponents(List<tblSoftwareInventories> objSoftwareInventoryFileModel)
        {
            bool canCallService = false;

            if (objSoftwareInventoryFileModel != null)
            {
                //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                try
                {
                    string outputFileName = ConfigurationManager.AppSettings["SoftwareInventoryFileName"].ToString();
                    string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + outputFileName;
                    List<tblSoftwareInventories> objroot = new List<tblSoftwareInventories>();


                    string convertedJson = string.Empty;

                    if (File.Exists(path))
                    {
                        //waitHandle.WaitOne();
                        objroot = JsonConvert.DeserializeObject<List<tblSoftwareInventories>>(File.ReadAllText(path));



                        if (objroot != null)
                        {

                            canCallService = GetSoftwareDifferences(objSoftwareInventoryFileModel, objroot);
                            convertedJson = JsonConvert.SerializeObject(objSoftwareInventoryFileModel, Newtonsoft.Json.Formatting.Indented);

                        }
                        else
                        {
                            convertedJson = JsonConvert.SerializeObject(objSoftwareInventoryFileModel, Newtonsoft.Json.Formatting.Indented);
                            canCallService = true;

                        }


                    }
                    else
                    {
                        convertedJson = JsonConvert.SerializeObject(objSoftwareInventoryFileModel, Newtonsoft.Json.Formatting.Indented);
                        canCallService = true;
                    }

                    //File.Delete(path);
                    System.IO.File.WriteAllText(path, convertedJson);
                    //waitHandle.Set();



                }
                catch (Exception ex)
                {
                    Logger.LogSoftwareInventoryJson(ex.Message + ex.StackTrace);
                }
            }
            else
            {

            }
            return canCallService;
        }

        public static bool CanLogHardwareComponents(tblHardwareInventoriesVm objHardwareInventoryFileModel)
        {
            bool canCallService = false;
            bool canCallddriveService = false;

            if (objHardwareInventoryFileModel != null)
            {
                //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                try
                {
                    string outputFileName = ConfigurationManager.AppSettings["HardwareInventoryFileName"].ToString();
                    string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + outputFileName;

                    tblHardwareInventoriesVm objroot = new tblHardwareInventoriesVm();


                    string convertedJson = string.Empty;

                    if (File.Exists(path))
                    {
                        //waitHandle.WaitOne();
                        objroot = JsonConvert.DeserializeObject<tblHardwareInventoriesVm>(File.ReadAllText(path));

                        if (objroot != null)
                        {

                            canCallService = GetDifferences(objHardwareInventoryFileModel, objroot);

                            canCallddriveService = GetDifferences(objHardwareInventoryFileModel.DriveDetails, objroot.DriveDetails);

                            convertedJson = JsonConvert.SerializeObject(objHardwareInventoryFileModel, Newtonsoft.Json.Formatting.Indented);

                        }
                        else
                        {
                            convertedJson = JsonConvert.SerializeObject(objHardwareInventoryFileModel, Newtonsoft.Json.Formatting.Indented);
                            canCallService = true;

                        }


                    }
                    else
                    {
                        convertedJson = JsonConvert.SerializeObject(objHardwareInventoryFileModel, Newtonsoft.Json.Formatting.Indented);
                        canCallService = true;
                    }

                    if (canCallService == true || canCallddriveService == true)
                    {
                        canCallService = true;
                    }

                    System.IO.File.WriteAllText(path, convertedJson);
                    //waitHandle.Set();
                }
                catch (Exception ex)
                {
                    Logger.LogHardwareInventoryJson(ex.Message + ex.StackTrace);
                    throw ex;
                }
            }
            else
            {

            }
            return canCallService;
        }

        public static bool GetDifferences(object obj1, object obj2)
        {
            bool result = false;
            try
            {
                var comparer = new ObjectsComparer.Comparer<object>();
                result = comparer.Compare(obj1, obj2);
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
                Logger.LogInfo(ex.Message + ex.StackTrace);
                throw ex;
            }


            return result;
        }

        public static bool GetSoftwareDifferences(List<tblSoftwareInventories> obj1, List<tblSoftwareInventories> obj2)
        {
            bool result = false;
            try
            {
                result = obj1.Count != obj2.Count ? true : false;
            }
            catch (Exception ex)
            {
                Logger.LogSoftwareInventoryJson(ex.Message + ex.StackTrace);
                throw ex;
            }


            return result;
        }

        public static bool GetDiskDetailsDifferences(List<tblDiskDetails> obj1, List<tblDiskDetails> obj2)
        {
            bool result = false;
            try
            {
                result = !obj1.Equals(obj2);
            }
            catch (Exception ex)
            {
                Logger.LogDiskJson(ex.Message + ex.StackTrace);
                throw ex;
            }


            return result;
        }

        public static bool GetServiceDetailsDifferences(List<tblServiceDetails> obj1, List<tblServiceDetails> obj2)
        {
            bool result = false;
            try
            {
                var comparisonResult = !obj1.Equals(obj2);
                result = comparisonResult;
            }
            catch (Exception ex)
            {
                Logger.LogDiskJson(ex.Message + ex.StackTrace);
                throw ex;
            }


            return result;
        }

        public static void LogInfo(string message)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            waitHandle.WaitOne(10000);
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "EventLog.txt";
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }
            waitHandle.Set();
        }

        public static void updateFullbackupJson(string filePath, string Type, string errorMessage)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            try
            {
                waitHandle.WaitOne();

                string outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();
                string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + outputFileName;
                xmlroot objroot = new xmlroot();
                List<FileModel> objmodel = new List<FileModel>();
                FileModel fileModel = new FileModel();
                string convertedJson = string.Empty;

                if (Type == "Error")
                {
                    fileModel.FilestatusDesc = "UploadedFailed " + errorMessage;
                    fileModel.FileAction = "Upload";
                    fileModel.Filestatus = "Error";
                    fileModel.FilePath = filePath;

                }
                else if (Type == "Uploaded")
                {
                    fileModel.FilestatusDesc = "Uploaded Successfully";
                    fileModel.FileAction = "Upload";
                    fileModel.Filestatus = "uploaded";
                    fileModel.FilePath = filePath;

                }
                else if (Type == "Scan")
                {
                    fileModel.FilestatusDesc = "Scanned Successfully";
                    fileModel.FileAction = "Scan";
                    fileModel.Filestatus = "Scanned";
                    fileModel.FilePath = filePath;

                }
                if (File.Exists(path))
                {
                    waitHandle.WaitOne();
                    objroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(path));

                    if (objroot != null)
                    {
                        if (objroot.Filemodel != null)
                        {
                            objmodel = objroot.Filemodel;
                            objmodel.Add(fileModel);
                            objroot.Filemodel = objmodel;


                        }
                    }
                    else
                    {
                        objmodel.Add(fileModel);
                        objroot.Filemodel = objmodel;
                        convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);

                    }
                }
                else
                {
                    objmodel.Add(fileModel);
                    objroot.Filemodel = objmodel;
                    convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);
                }

                string output = Newtonsoft.Json.JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);
                File.WriteAllText(path, output);
                waitHandle.Set();

            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }

        }

        public static void LogTotalBackupize(decimal backupSize)
        {
            try
            {
                decimal totalFileSize = 0;
                Logger.LogInfo("Total Backup :" + backupSize.ToString());
                //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
                //waitHandle.WaitOne();
                string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "TotalBackupSize.txt";
                if (File.Exists(filename))
                {
                    totalFileSize = Convert.ToDecimal(File.ReadAllText(filename));
                    totalFileSize = totalFileSize + backupSize;
                    File.WriteAllText(filename, totalFileSize.ToString());
                }
                else
                {
                    File.WriteAllText(filename, backupSize.ToString());
                }

                //waitHandle.Set();
            }
            catch (Exception ex)
            {
                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(ex.Message + ex.StackTrace, EventLogEntryType.Information, 101, 1);
                }
            }

        }

        public static void LogBackHistory(BackupHistoryModel backupSize)
        {
            try
            {
                List<BackupHistoryModel> lstBackupModel = new List<BackupHistoryModel>();
                List<BackupHistoryModel> objroot = new List<BackupHistoryModel>();
                Logger.LogInfo("Current Backup :" + backupSize.BackupSize);
                string convertedJson = string.Empty;
                string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "BackupHistory.json";
                if (File.Exists(path))
                {
                    //waitHandle.WaitOne();
                    objroot = JsonConvert.DeserializeObject<List<BackupHistoryModel>>(File.ReadAllText(path)).OrderByDescending(k => k.BackupDateTime).ToList();

                    if (objroot != null)
                    {
                        if(objroot.Count >= 5)
                        objroot.RemoveAt(4);
                        objroot.Add(backupSize);
                        convertedJson = JsonConvert.SerializeObject(objroot, Newtonsoft.Json.Formatting.Indented);

                    }
                    else
                    {
                        lstBackupModel.Add(backupSize);
                        convertedJson = JsonConvert.SerializeObject(lstBackupModel, Newtonsoft.Json.Formatting.Indented);

                    }


                }
                else
                {
                    lstBackupModel.Add(backupSize);
                    convertedJson = JsonConvert.SerializeObject(lstBackupModel, Newtonsoft.Json.Formatting.Indented);
                }

                //File.Delete(path);
                System.IO.File.WriteAllText(path, convertedJson);


            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }

        }

        public static bool CanLogDiskDetails(List<tblDiskDetails> objDiskDetails)
        {
            bool canCallService = false;

            if (objDiskDetails != null)
            {
                //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                try
                {
                    string outputFileName = ConfigurationManager.AppSettings["DiskDetailsFileName"].ToString();
                    string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + outputFileName;
                    List<tblDiskDetails> objroot = new List<tblDiskDetails>();


                    string convertedJson = string.Empty;

                    if (File.Exists(path))
                    {
                        //waitHandle.WaitOne();
                        objroot = JsonConvert.DeserializeObject<List<tblDiskDetails>>(File.ReadAllText(path));

                        if (objroot != null)
                        {

                            canCallService = GetDiskDetailsDifferences(objDiskDetails, objroot);
                            convertedJson = JsonConvert.SerializeObject(objDiskDetails, Newtonsoft.Json.Formatting.Indented);

                        }
                        else
                        {
                            convertedJson = JsonConvert.SerializeObject(objDiskDetails, Newtonsoft.Json.Formatting.Indented);
                            canCallService = true;

                        }


                    }
                    else
                    {
                        convertedJson = JsonConvert.SerializeObject(objDiskDetails, Newtonsoft.Json.Formatting.Indented);
                        canCallService = true;
                    }

                    //File.Delete(path);
                    System.IO.File.WriteAllText(path, convertedJson);
                    //waitHandle.Set();



                }
                catch (Exception ex)
                {
                    Logger.LogDiskJson(ex.Message + ex.StackTrace);
                }
            }
            else
            {

            }
            return canCallService;
        }

        public static bool CanLogServiceDetails(List<tblServiceDetails> objServicekDetails)
        {
            bool canCallService = false;

            if (objServicekDetails != null)
            {
                //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                try
                {
                    string outputFileName = ConfigurationManager.AppSettings["ServiceDetailsFileName"].ToString();
                    string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + outputFileName;
                    List<tblServiceDetails> objroot = new List<tblServiceDetails>();


                    string convertedJson = string.Empty;

                    if (File.Exists(path))
                    {
                        //waitHandle.WaitOne();
                        objroot = JsonConvert.DeserializeObject<List<tblServiceDetails>>(File.ReadAllText(path));

                        if (objroot != null)
                        {

                            canCallService = GetServiceDetailsDifferences(objServicekDetails, objroot);
                            convertedJson = JsonConvert.SerializeObject(objServicekDetails, Newtonsoft.Json.Formatting.Indented);

                        }
                        else
                        {
                            convertedJson = JsonConvert.SerializeObject(objServicekDetails, Newtonsoft.Json.Formatting.Indented);
                            canCallService = true;

                        }


                    }
                    else
                    {
                        convertedJson = JsonConvert.SerializeObject(objServicekDetails, Newtonsoft.Json.Formatting.Indented);
                        canCallService = true;
                    }

                    //File.Delete(path);
                    System.IO.File.WriteAllText(path, convertedJson);
                    //waitHandle.Set();



                }
                catch (Exception ex)
                {
                    Logger.LogServiceJson(ex.Message + ex.StackTrace);
                }
            }
            else
            {

            }
            return canCallService;
        }

        public static xmlroot GetJson(string outputFilePath)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            xmlroot result = null;
            try
            {
                if (File.Exists(outputFilePath))
                {

                    //waitHandle.WaitOne();
                    string json = File.ReadAllText(outputFilePath);

                    result = JsonConvert.DeserializeObject<xmlroot>(json);
                    //waitHandle.Set();

                }

            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }

            return result;

        }

        public static xmlroot GetWatcherJson(string outputFilePath)
        {
            //EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            xmlroot result = null;
            try
            {

                if (File.Exists(outputFilePath))
                {

                    //waitHandle.WaitOne();
                    string json = File.ReadAllText(outputFilePath);

                    result = JsonConvert.DeserializeObject<xmlroot>(json);
                    //waitHandle.Set();

                }


            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }

            return result;

        }

        public static void LogAgentAppJson(string message)
        {
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "AgentAppLog.txt";
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }

        }

        public static bool IsFileLocked(string filePath)
        {
            try
            {
                using (FileStream stream = new FileStream(filePath, FileMode.Open,FileAccess.Write))
                {
                    stream.Close();
                }
            }
            catch (IOException)
            {
                //the file is unavailable because it is:
                //still being written to
                //or being processed by another thread
                //or does not exist (has already been processed)
                return true;
            }

            //file is not locked
            return false;
        }

        public static void LogScheduledMonitorJson(string message)
        {

            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\" + "ScheduledMonitorEventLog.txt";
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }

        }
    }
}
