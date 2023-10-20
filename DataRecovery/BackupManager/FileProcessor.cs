using DataRecovery.Common;
using DataRecovery.Common.Models.ViewModels;
using DataRecovery.Models;
using InventoryManager;
using System;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace BackupManager
{
    public class FileProcessor
    {
        public string backupFilePath;

        public long fileSizePerStreaminMB;

        public int fileChunkinMB;

        public bool canEncrypt;

        public string encryptionKey;

        public string fileVersionKey;

        public int versionstoKeep;

        string path, source;

        int threadsleeptime;

        string cloudBackupprovider;

        string backupType, backupWebServiceUrl, serialNumber;

        string awsSecretkey, awsAccesskey, bucketName;

        long backupSize = 0, fileCount;

        public xmlroot _copyInput { get; set; }

        public FileProcessor(xmlroot CopyInput, string BackupFilePath, long FileSizePerStreaminMB, int FileChunkinMB, bool CanEncrypt, string EncryptionKey, string FileVersionKey, int VersionstoKeep, int ThreadSleepTime, string CloudBackupprovider, string BackupType, string AWSAccessKey, string AWSSecretkey, string BucketName, string BackupUrl, string SerialNumber, int FileCount)
        {
            _copyInput = CopyInput;
            backupFilePath = BackupFilePath;
            fileSizePerStreaminMB = FileSizePerStreaminMB;
            fileChunkinMB = FileChunkinMB;
            canEncrypt = CanEncrypt;
            encryptionKey = EncryptionKey;
            fileVersionKey = FileVersionKey;
            versionstoKeep = VersionstoKeep;
            threadsleeptime = ThreadSleepTime;
            cloudBackupprovider = CloudBackupprovider;
            backupType = BackupType;
            awsAccesskey = AWSAccessKey;
            awsSecretkey = AWSSecretkey;
            bucketName = BucketName;
            backupWebServiceUrl = BackupUrl;
            serialNumber = SerialNumber;
            fileCount = FileCount;
        }
        public void ProcessFiles()
        {
            try
            {
                if (File.Exists(path))
                {

                    bool IsLargeFile = false;

                    var machineName = Environment.MachineName;

                    string fileName = path.Split('\\').Last();

                    string originalFolderPath = path.Substring(0, path.LastIndexOf("\\"));

                    string folderpath = path.Substring(0, path.LastIndexOf("\\")).Replace(":", string.Empty);

                    FileInfo fi = new FileInfo(path);

                    IsLargeFile = fi.Length > fileSizePerStreaminMB;

                    if (backupType == "Local")
                    {
                        String serverpath = backupFilePath;
                        string destinationfolder = serverpath + "\\" + machineName + "\\" + folderpath;
                        Directory.CreateDirectory(destinationfolder);
                        string destnationPath = GetFileNamewithVersion(destinationfolder, fileName);
                        CopytoLocal(folderpath, destnationPath, IsLargeFile);
                    }
                    else
                    {
                        if (cloudBackupprovider == "AWS")
                        {
                            string destnationPath = machineName + "\\" + folderpath + "\\";
                            CopytoAws(fileName, originalFolderPath, destnationPath, IsLargeFile);
                        }
                        else if (cloudBackupprovider == "AZURE")
                        {
                            string destnationPath = machineName + "\\" + folderpath + "\\";
                            CopytoAzure(originalFolderPath, destnationPath, IsLargeFile);

                        }

                    }

                    if (source == "Timer")
                    {
                        Logger.updateJson(path, false, string.Empty);
                    }
                    if (source == "Watcher")
                    {
                        Logger.updateWatcherJson(path, false, string.Empty);
                    }
                    Thread.Sleep(threadsleeptime);

                }
            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
                Thread.Sleep(threadsleeptime);
            }

        }

        public void CopytoLocal(string source, string dest, bool IsLargeFile)
        {
            if (!canEncrypt)
            {
                CopyFile(path, dest, IsLargeFile);
            }
            else
            {
                CopyFilewithEncryption(path, dest, IsLargeFile);
            }

        }

        public void CopytoAws(string sourceFileName, string sourceFolder, string destFolder, bool IsLargeFile)
        {


            try
            {


                AWSHelper aWSHelper = new AWSHelper(bucketName, awsAccesskey, awsSecretkey);
                //aWSHelper.CreateFolderStructure(destFolder);

                if (!IsLargeFile)
                {
                    aWSHelper.UploadSmallFile(sourceFileName, sourceFolder, destFolder, fileVersionKey);
                }
                else
                {
                    aWSHelper.UploadFileinChunks(sourceFileName, sourceFolder, destFolder, fileVersionKey).Wait();

                }


            }
            catch (Exception ex)
            {

                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }


        }

        public void CopytoAzure(string source, string dest, bool IsLargeFile)
        {


        }

        public void CopyFilewithEncryption(string source, string dest, bool IsLargeFile)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            Logger.LogBackupJson("Copy with Encryption started");

            try
            {
                waitHandle.WaitOne();

                using (FileStream sourceStream = new FileStream(source, FileMode.OpenOrCreate))
                {
                    byte[] iv = new byte[16];
                    byte[] buffer = new byte[fileChunkinMB]; // Change to suitable size after testing performance

                    using (Aes aes = Aes.Create())
                    {
                        aes.Key = Encoding.UTF8.GetBytes(encryptionKey);
                        aes.IV = iv;
                        aes.Padding = PaddingMode.Zeros;
                        ICryptoTransform encryptor = aes.CreateEncryptor(aes.Key, aes.IV);
                        using (FileStream destStream = new FileStream(dest, FileMode.OpenOrCreate))
                        {
                            CryptoStream cs = new CryptoStream(destStream,
                                       encryptor,
                                      CryptoStreamMode.Write);
                            int i;
                            while ((i = sourceStream.Read(buffer, 0, buffer.Length)) > 0)
                            {
                                cs.Write(buffer, 0, i);
                            }

                            cs.FlushFinalBlock();
                        }
                    }
                }

                waitHandle.Set();

                Logger.LogBackupJson("Copy with Encryption completed");
            }
            catch (Exception ex)
            {
                Logger.LogBackupJson("Error while Copy with Encryption " + ex.Message + ex.StackTrace);
            }
            //try
            //{
            //    const int BUFFER_SIZE = 20 * 1024;
            //    using (FileStream sourceStream = new FileStream(source, FileMode.OpenOrCreate))
            //    {
            //        UnicodeEncoding UE = new UnicodeEncoding();
            //        RijndaelManaged RMCrypto = new RijndaelManaged();
            //        byte[] key = UE.GetBytes("HelloWorld");
            //        byte[] buffer = new byte[BUFFER_SIZE]; // Change to suitable size after testing performance
            //        using (FileStream destStream = new FileStream(dest, FileMode.OpenOrCreate))
            //        {
            //            CryptoStream cs = new CryptoStream(destStream,
            //          RMCrypto.CreateEncryptor(key, key),
            //          CryptoStreamMode.Write);

            //            int i;
            //            while ((i = sourceStream.Read(buffer, 0, buffer.Length)) > 0)
            //            {
            //                destStream.Write(buffer, 0, i);
            //            }
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //    Logger.LogBackupJson(ex.Message + ex.StackTrace);

            //}

        }

        public void CopyFile(string source, string dest, bool IsLargeFile)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

            try
            {
                waitHandle.WaitOne();
                if (IsLargeFile)
                {
                    using (FileStream sourceStream = new FileStream(source, FileMode.OpenOrCreate))
                    {
                        byte[] buffer = new byte[fileChunkinMB]; // Change to suitable size after testing performance
                        using (FileStream destStream = new FileStream(dest, FileMode.OpenOrCreate))
                        {
                            int i;
                            while ((i = sourceStream.Read(buffer, 0, buffer.Length)) > 0)
                            {
                                destStream.Write(buffer, 0, i);
                            }
                        }
                    }

                }
                else
                {
                    File.Copy(source, dest, true);
                }
                waitHandle.Set();


            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);

            }

        }

        public string GetFileNamewithVersion(string destDir, string fileName)
        {
            string versionedfileName = string.Empty;

            DirectoryInfo hdDirectoryInWhichToSearch = new DirectoryInfo(destDir);
            var files = hdDirectoryInWhichToSearch.GetFiles("*" + fileName + "*.*");



            var count = files.Count();

            if (count >= versionstoKeep)
            {
                versionedfileName = destDir + "\\" + files.OrderBy(k => k.LastWriteTime).Select(k => k.Name).FirstOrDefault().ToString();
            }
            else
            {
                versionedfileName = destDir + "\\" + (count + 1).ToString() + fileVersionKey + fileName;
            }
            return versionedfileName;
        }

        public void InitCopying()
        {
            try
            {


                if (_copyInput != null)
                {
                    if (_copyInput.Filemodel != null)
                    {
                        if (_copyInput.Filemodel.Where(k => k.Filestatus == "UploadPending").Any())
                        {
                            foreach (var item in _copyInput.Filemodel.Where(k => k.Filestatus == "UploadPending").GroupBy(k => k.FilePath).Select(g => g.First()).ToList())
                            {
                                FileInfo fi = new FileInfo(item.FilePath);
                                backupSize = backupSize + fi.Length;
                                //Logger.LogBackupJson("Backup : " + backupSize.ToString());
                                path = item.FilePath;
                                source = item.Source;
                                ProcessFiles();

                            }

                            Logger.LogBackupJson("Backup Size : " + GetFileSize(backupSize));

                            decimal backupsum = Math.Round(decimal.Divide(backupSize, 1027), 2);


                            UpdateBackUptoService().Wait();
                            BackupHistoryModel objBackupHistoryModel = new BackupHistoryModel();
                            objBackupHistoryModel.BackupDateTime = DateTime.Now;
                            objBackupHistoryModel.BackupSize = backupSize;
                            objBackupHistoryModel.BackupSizeText = GetFileSize(backupSize);
                            objBackupHistoryModel.BackupName = Environment.MachineName + DateTime.Now.ToString();
                            Logger.LogBackHistory(objBackupHistoryModel);
                            Logger.LogTotalBackupize(backupsum);
                            SaveAgentUpdates();
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }
        }

        public void FullBackUp(string source, string destination)
        {
            if (backupType == "Local")
            {
                String serverpath = backupFilePath;

            }
            else
            {

                if (cloudBackupprovider == "AWS")
                {

                }
                else if (cloudBackupprovider == "AZURE")
                {


                }

            }

        }

        public async Task UpdateBackUptoService()
        {
            try
            {
                tblBackups objtblBackups = new tblBackups();
                objtblBackups.BackupName = "Backup--" + DateTime.Now.ToString();
                objtblBackups.IsActive = true;
                objtblBackups.LastUpdated = DateTime.Now;
                objtblBackups.SystemId = Environment.MachineName;
                objtblBackups.BackupSize = backupSize + " MB";
                objtblBackups.CreatedBy = "Windows Service";
                objtblBackups.CreatedOn = DateTime.Now;
                objtblBackups.BackupStatus = "Success";
                objtblBackups.UploadedFileCount = Convert.ToInt32(fileCount);
                objtblBackups.SerilaNumber = serialNumber;

                HttpManager objHttpManager = new HttpManager();
                await objHttpManager.PostRequest<tblBackups>(backupWebServiceUrl, objtblBackups);
            }

            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }
        }

        private void SaveAgentUpdates()
        {
            try
            {
                Utilities objUtilities = new Utilities();
                string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\logs\\" + "TotalBackupSize.txt";
                string totalBackupSize = File.ReadAllText(filename);
                AgentUpdatesViewModel objAgentUpdatesViewModel = new AgentUpdatesViewModel();
                objAgentUpdatesViewModel.SystemId = Environment.MachineName;
                objAgentUpdatesViewModel.SerialNumber = serialNumber;
                objAgentUpdatesViewModel.TotalBackupSize = totalBackupSize;

                objUtilities.ProcessAgentUpdates(objAgentUpdatesViewModel);
            }
            catch (Exception ex)
            {
                Logger.LogBackupJson(ex.Message + ex.StackTrace);
            }
        }

        private string GetFileSize(double len)
        {
            string[] sizes = { "Bytes", "KB", "MB", "GB", "TB" };

            int order = 0;
            while (len >= 1024 && order < sizes.Length - 1)
            {
                order++;
                len = len / 1024;
            }

            // Adjust the format string to your preferences. For example "{0:0.#}{1}" would
            // show a single decimal place, and no space.
            string result = String.Format("{0:0.##} {1}", len, sizes[order]);

            return result;
        }

    }

}
