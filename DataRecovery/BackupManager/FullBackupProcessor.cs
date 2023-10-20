using DataRecovery.Common;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;

namespace BackupManager
{
    public class FullBackupProcessor
    {
        public string backupFilePath;

        public long fileSizePerStreaminMB;

        public int fileChunkinMB;

        string path;

        int threadsleeptime;

        string cloudBackupprovider;

        string backupType;

        string awsSecretkey, awsAccesskey, bucketName;

        bool canEncrypt;

        string encryptionKey,source,systemId;

        public FullBackupProcessor(string BackupFilePath, long FileSizePerStreaminMB, int FileChunkinMB, int ThreadSleepTime, string CloudBackupprovider, string BackupType, string AWSAccessKey, string AWSSecretkey, string BucketName, bool CanEncrypt, string EncryptionKey,string Source,string SystemId)
        {
            backupFilePath = BackupFilePath;
            fileSizePerStreaminMB = FileSizePerStreaminMB;
            fileChunkinMB = FileChunkinMB;
            threadsleeptime = ThreadSleepTime;
            cloudBackupprovider = CloudBackupprovider;
            backupType = BackupType;
            awsAccesskey = AWSAccessKey;
            awsSecretkey = AWSSecretkey;
            bucketName = BucketName;

            canEncrypt = CanEncrypt;
            encryptionKey = EncryptionKey;
            source=Source;
            systemId = SystemId;
        }

        public void ProcessFiles()
        {
            try
            {
                if (File.Exists(path))
                {

                    bool IsLargeFile = false;

                    string fileName = path.Split('\\').Last();

                    string originalFolderPath = path.Substring(0, path.LastIndexOf("\\"));

                    string folderpath = path.Substring(0, path.LastIndexOf("\\")).Replace(":", string.Empty);

                    FileInfo fi = new FileInfo(path);

                    IsLargeFile = fi.Length > fileSizePerStreaminMB;

                    Logger.LogJson("BackupType" + backupType);

                    if (backupType == "Local")
                    {
                        String serverpath = backupFilePath;
                        string destinationfolder = serverpath +  "\\" + folderpath.Replace(source,string.Empty);
                        Directory.CreateDirectory(destinationfolder);
                        string destnationPath = destinationfolder + "\\" + fileName;
                        CopytoLocal(folderpath, destnationPath, IsLargeFile);
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.updateJson(path, true, ex.Message);
                Logger.LogJson(ex.Message + ex.StackTrace);
                Thread.Sleep(threadsleeptime);
                throw ex;
            }

        }

        public void CopytoLocal(string source, string dest, bool IsLargeFile)
        {
            CopyFile(path, dest, IsLargeFile);
        }

        //public void CopytoAws(string sourceFileName, string sourceFolder, string destFolder, bool IsLargeFile)
        //{
        //    try
        //    {


        //        AWSHelper aWSHelper = new AWSHelper(bucketName, awsAccesskey, awsSecretkey);
        //        aWSHelper.CreateFolderStructure(destFolder);

        //        if (!IsLargeFile)
        //        {
        //            aWSHelper.UploadSmallFile(sourceFileName, sourceFolder, destFolder, fileVersionKey);
        //        }
        //        else
        //        {
        //            aWSHelper.UploadFileinChunks(sourceFileName, sourceFolder, destFolder, fileVersionKey).Wait();

        //        }
        //    }
        //    catch (Exception ex)
        //    {

        //        Logger.LogJson(ex.Message + ex.StackTrace);
        //    }


        //}

        public void CopytoAzure(string source, string dest, bool IsLargeFile)
        {


        }

        public void CopyFile(string source, string dest, bool IsLargeFile)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

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
                        ICryptoTransform decryptor = aes.CreateDecryptor(aes.Key, aes.IV);
                        using (FileStream destStream = new FileStream(dest, FileMode.OpenOrCreate))
                        {
                            CryptoStream cs = new CryptoStream(destStream,
                                 decryptor,
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

            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
                throw ex;

            }

        }

        public void CopyFromAws(string sourceFileName, string sourceFolder, string destFolder, bool IsLargeFile)
        {
            try
            {


                AWSHelper aWSHelper = new AWSHelper(bucketName, awsAccesskey, awsSecretkey);
                aWSHelper.CreateFolderStructure(destFolder);
            }
            catch (Exception ex)
            {
                Logger.LogJson(ex.Message + ex.StackTrace);
                throw ex;
            }


        }

        public void InitCopying()
        {
            try
            {

                EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");

                List<string> currentfiles = new List<string>();

                string outputFileName = ConfigurationManager.AppSettings["OutputFileName"].ToString();
                string outputFilePath = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + outputFileName;

                List<FileModel> objmodel = new List<FileModel>();
                xmlroot objroot = new xmlroot();

                if (File.Exists(outputFilePath))
                {
                    waitHandle.WaitOne();
                    objroot = JsonConvert.DeserializeObject<xmlroot>(File.ReadAllText(outputFilePath));

                    if (objroot != null)
                    {
                        if (objroot.Filemodel != null)
                        {
                            if (objroot.Filemodel.Where(k => k.Filestatus != "Uploaded").Any())
                            {
                                currentfiles = objroot.Filemodel.Where(k => k.Filestatus != "Uploaded").Select(k => k.FilePath).ToList();
                            }
                        }
                    }

                    waitHandle.Set();
                }
                if (backupType == "Local")
                {

                    if (File.Exists(outputFilePath))
                    {
                        waitHandle.WaitOne();
                        string json = File.ReadAllText(outputFilePath);

                        xmlroot CopyInput = JsonConvert.DeserializeObject<xmlroot>(json);
                        waitHandle.Set();

                        if (CopyInput.Filemodel != null)
                        {
                            if (CopyInput.Filemodel.Count > 0)
                            {
                                foreach (var item in CopyInput.Filemodel)
                                {
                                    path = item.FilePath;
                                    ProcessFiles();
                                    Logger.updateJson(path, false, string.Empty);
                                    Thread.Sleep(threadsleeptime);
                                }

                            }
                        }
                    }

                }


                else if (cloudBackupprovider == "AWS")
                {
                    try
                    {
                        AWSHelper objAWSHelper = new AWSHelper(bucketName, awsAccesskey, awsSecretkey);

                        objAWSHelper.CopyFromAWStoLocal(systemId, backupFilePath);
                        Logger.updateJson(path, false, string.Empty);
                        Thread.Sleep(threadsleeptime);

                        Globals.IsBackupRunning = false;
                    }
                    catch (Exception ex)
                    {
                        Logger.LogInfo(ex.Message + ex.StackTrace);
                        throw ex;
                    }

                }
                else if (cloudBackupprovider == "AZURE")
                {
                    //string destnationPath = machineName + "\\" + folderpath + "\\";
                    //CopytoAzure(originalFolderPath, destnationPath, IsLargeFile);

                }
            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
                throw ex;
            }
        }

    }
}

