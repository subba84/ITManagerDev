using Amazon;
using Amazon.Runtime;
using Amazon.S3;
using Amazon.S3.IO;
using Amazon.S3.Model;
using Amazon.S3.Transfer;
using DataRecovery.Business;
using DataRecovery.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace DataRecovery.Controllers
{
    public class DataRestoreController : Controller
    {
        public async Task<ActionResult> Index()
        {

            BusinessManager objBusinessManager = new BusinessManager();
            List<tblConfigs> objConfig = new List<tblConfigs>();
            List<tblConfigMaster> objConfigMaster = new List<tblConfigMaster>();
            objConfig = objBusinessManager.GetUserConfig(GetSystemIdByUserName());
            objConfigMaster = objBusinessManager.GetTemplateConfig();
            List<FileInformation> objfileInfo = new List<FileInformation>();

            string backupType = objConfig.Where(k => k.Configkey == "BackupType").Select(k => k.Configvalue).FirstOrDefault();

            if (backupType == "Local")
            {
                string backupLocation = objConfig.Where(k => k.Configkey == "BackupFilePath").Select(k => k.Configvalue).FirstOrDefault();

                DirectoryInfo info = new DirectoryInfo(backupLocation);

                if (Directory.Exists(backupLocation))
                {

                    objfileInfo = info.GetFiles("*.*", SearchOption.AllDirectories).Select(k =>
                     new FileInformation
                     {
                         FileName = k.Name,
                         Filepath = k.FullName,
                         FileSize = FormatSize(k.Length),
                         FileCreated = k.CreationTime,
                         FileModified = k.LastWriteTime
                     }).ToList();
                }

            }
            else
            {
                string backupProvider = objConfig.Where(k => k.Configkey == "CloudBackupProvider").Select(k => k.Configvalue).FirstOrDefault();

                if (backupProvider == "AWS")
                {
                    string bucketName = objConfigMaster.Where(k => k.Configkey == "AWSBucketName").Select(k => k.Configvalue).FirstOrDefault();
                    string accessKey = objConfigMaster.Where(k => k.Configkey == "AWSAccessKey").Select(k => k.Configvalue).FirstOrDefault();
                    string secretkey = objConfigMaster.Where(k => k.Configkey == "AwsSecretKey").Select(k => k.Configvalue).FirstOrDefault();
                    var credentials = new BasicAWSCredentials(accessKey, secretkey);
                    AmazonS3Client s3Client = new AmazonS3Client(credentials, RegionEndpoint.APSouth1);
                    ListObjectsV2Request request = new ListObjectsV2Request
                    {
                        BucketName = bucketName
                    };
                    ListObjectsV2Response response;
                    do
                    {
                        response = await s3Client.ListObjectsV2Async(request);

                        // Process the response.
                        foreach (S3Object entry in response.S3Objects)
                        {
                            objfileInfo.Add(new FileInformation() { FileName = entry.Key, FileSize = FormatSize(entry.Size), FileModified = entry.LastModified,Filepath = entry.Key });
                            Console.WriteLine("key = {0} size = {1}",
                                entry.Key, entry.Size);
                        }
                        Console.WriteLine("Next Continuation Token: {0}", response.NextContinuationToken);
                        request.ContinuationToken = response.NextContinuationToken;
                    } while (response.IsTruncated);

                }
                else if (backupProvider == "AZURE")
                {

                }
            }

            return View(objfileInfo);
        }

        static readonly string[] suffixes = { "Bytes", "KB", "MB", "GB", "TB", "PB" };

        public static string FormatSize(Int64 bytes)
        {
            int counter = 0;
            decimal number = (decimal)bytes;
            while (Math.Round(number / 1024) >= 1)
            {
                number = number / 1024;
                counter++;
            }
            return string.Format("{0:n1}{1}", number, suffixes[counter]);
        }

        public ActionResult Download(string filePath)
        {

            BusinessManager objBusinessManager = new BusinessManager();
            List<tblConfigs> objConfig = new List<tblConfigs>();
            List<tblConfigMaster> objConfigMaster = new List<tblConfigMaster>();
            objConfig = objBusinessManager.GetUserConfig(GetSystemIdByUserName());
            objConfigMaster = objBusinessManager.GetTemplateConfig();
            string fileVersionKey = objConfigMaster.Where(k => k.Configkey == "fileVersionKey").Select(k => k.Configvalue).FirstOrDefault();
            string backupType = objConfig.Where(k => k.Configkey == "BackupType").Select(k => k.Configvalue).FirstOrDefault();

            if (backupType == "Local")
            {
                byte[] fileBytes = System.IO.File.ReadAllBytes(filePath);
                string fileName = Path.GetFileName(filePath);
               

                string tempname = fileName.Substring(0, fileName.IndexOf(fileVersionKey) + fileVersionKey.Length);
                fileName = fileName.Replace(tempname, string.Empty);

                return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, fileName);
            }
            else
            {
                string backupProvider = objConfig.Where(k => k.Configkey == "CloudBackupProvider").Select(k => k.Configvalue).FirstOrDefault();

                if (backupProvider == "AWS")
                {
                    string bucketName = objConfigMaster.Where(k => k.Configkey == "AWSBucketName").Select(k => k.Configvalue).FirstOrDefault();
                    string accessKey = objConfigMaster.Where(k => k.Configkey == "AWSAccessKey").Select(k => k.Configvalue).FirstOrDefault();
                    string secretkey = objConfigMaster.Where(k => k.Configkey == "AwsSecretKey").Select(k => k.Configvalue).FirstOrDefault();
                    var credentials = new BasicAWSCredentials(accessKey, secretkey);
                    AmazonS3Client s3Client = new AmazonS3Client(credentials, RegionEndpoint.APSouth1);

                    string[] keySplit = filePath.Split('/');
                    string fileName = keySplit[keySplit.Length - 1];
                    string dest = Path.Combine(HttpRuntime.CodegenDir, fileName);

                    using (s3Client)
                    {
                        GetObjectRequest request = new GetObjectRequest();
                        request.BucketName = bucketName;
                        request.Key = filePath;

                        using (GetObjectResponse response = s3Client.GetObject(request))
                        {
                            response.WriteResponseStreamToFile(dest, false);
                        }

                        string tempname = fileName.Substring(0, fileName.IndexOf(fileVersionKey)+fileVersionKey.Length);
                        fileName = fileName.Replace(tempname, string.Empty);

                        HttpContext.Response.Clear();
                        HttpContext.Response.AppendHeader("content-disposition", "attachment; filename=" + fileName);
                        HttpContext.Response.ContentType = "application/octet-stream";
                        HttpContext.Response.TransmitFile(dest);
                        HttpContext.Response.Flush();
                        HttpContext.Response.End();

                        // Clean up temporary file.
                        System.IO.File.Delete(dest);
                    }


                }
                else if (backupProvider == "AZURE")
                {

                }
            }

            return null;
        }

        public ActionResult BackupList(string systemId)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            return View(objBusinessManager.GetBackup(GetSystemIdByUserName()));

        }

        string GetSystemIdByUserName()
        {
            string userName = ConfigurationManager.AppSettings["userName"].ToString();
            BusinessManager objBusinessManager = new BusinessManager();
            return objBusinessManager.GetSystemIdbyUserName(userName);
        }

        public ActionResult LoadFullBackup()
        {
            return View();

        }




    }
}