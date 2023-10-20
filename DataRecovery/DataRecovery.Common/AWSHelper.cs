using Amazon;
using Amazon.Runtime;
using Amazon.S3;
using Amazon.S3.IO;
using Amazon.S3.Model;
using Amazon.S3.Transfer;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRecovery.Common
{

    
    public class AWSHelper
    {
        private static  string bucketName;
        // Specify your bucket region (an example region is shown).
        private static  RegionEndpoint bucketRegion = RegionEndpoint.APSouth1;
        private static IAmazonS3 s3Client;

        public AWSHelper(string BucketName,string AWSAccessKeyId,string AWSSecretAccesskey )
        {
            bucketName = BucketName;
            s3Client = new AmazonS3Client(AWSAccessKeyId, AWSSecretAccesskey, bucketRegion);
        }

        public  void CreateFolderStructure(string destFolderPath)
        {

            destFolderPath = GetAwsFolderString(destFolderPath);
            destFolderPath = destFolderPath.Substring(0, destFolderPath.Length -1);
            PutObjectRequest request = new PutObjectRequest()
            {
                BucketName = bucketName,
                
                Key = destFolderPath // <-- in S3 key represents a path
                                     // 
            };

            PutObjectResponse response = s3Client.PutObject(request);

            

            //Logger.LogJson("Http Status code" +response.HttpStatusCode.ToString() + response.ResponseMetadata.ToString() );
        }

        public  void UploadSmallFile(string fileName, string sourceFolder, string destFolderPath,string fileversionKey)
        {

            destFolderPath = GetAwsFolderString(destFolderPath);

            destFolderPath = GetFileNamewithVersionAws(destFolderPath, fileName,fileversionKey);

            
            destFolderPath = destFolderPath.Substring(0, destFolderPath.Length - 1);

            FileInfo file = new FileInfo(sourceFolder+ "\\"+fileName);


            PutObjectRequest request = new PutObjectRequest()
            {
                InputStream = file.OpenRead(),
                BucketName = bucketName,
                Key = destFolderPath // <-- in S3 key represents a path  
            };

            PutObjectResponse response = s3Client.PutObject(request);

            //Logger.LogJson("Status Code"+response.HttpStatusCode + response.ResponseMetadata.ToString());
        }

        public  async Task UploadFileinChunks(string fileName,string sourcedir,string destFolderPath, string fileversionKey)
        {
            try
            {

            
            Console.WriteLine("Uploading an object");

            destFolderPath = GetAwsFolderString(destFolderPath);

            destFolderPath = GetFileNamewithVersionAws(destFolderPath, fileName,fileversionKey);

            // Create list to store upload part responses.
            List<UploadPartResponse> uploadResponses = new List<UploadPartResponse>();

            // Setup information required to initiate the multipart upload.
            InitiateMultipartUploadRequest initiateRequest = new InitiateMultipartUploadRequest
            {
                BucketName = bucketName,
                Key = destFolderPath
            };

            // Initiate the upload.
            InitiateMultipartUploadResponse initResponse =
                await s3Client.InitiateMultipartUploadAsync(initiateRequest);

            // Upload parts.
            long contentLength = new FileInfo(sourcedir+ "\\"+fileName).Length;
            long partSize = 5 * (long)Math.Pow(2, 20); // 5 MB

            try
            {
                Console.WriteLine("Uploading parts");

                long filePosition = 0;
                for (int i = 1; filePosition < contentLength; i++)
                {
                    UploadPartRequest uploadRequest = new UploadPartRequest
                    {
                        BucketName = bucketName,
                        Key = destFolderPath,
                        UploadId = initResponse.UploadId,
                        PartNumber = i,
                        PartSize = partSize,
                        FilePosition = filePosition,
                        FilePath = sourcedir+ "\\"+fileName
                    };

                    // Track upload progress.
                    uploadRequest.StreamTransferProgress +=
                        new EventHandler<StreamTransferProgressArgs>(UploadPartProgressEventCallback);

                    // Upload a part and add the response to our list.
                    uploadResponses.Add(await s3Client.UploadPartAsync(uploadRequest));

                    filePosition += partSize;
                }

                // Setup to complete the upload.
                CompleteMultipartUploadRequest completeRequest = new CompleteMultipartUploadRequest
                {
                    BucketName = bucketName,
                    Key = destFolderPath,
                    UploadId = initResponse.UploadId
                };
                completeRequest.AddPartETags(uploadResponses);

                // Complete the upload.
                CompleteMultipartUploadResponse completeUploadResponse =
                    await s3Client.CompleteMultipartUploadAsync(completeRequest);
            }
            catch (Exception exception)
            {
                Console.WriteLine("An AmazonS3Exception was thrown: { 0}", exception.Message);

                Logger.LogJson(exception.Message + exception.StackTrace);

                // Abort the upload.
                AbortMultipartUploadRequest abortMPURequest = new AbortMultipartUploadRequest
                {
                    BucketName = bucketName,
                    Key = destFolderPath,
                    UploadId = initResponse.UploadId
                };
                await s3Client.AbortMultipartUploadAsync(abortMPURequest);
            }

            }
            catch (Exception exception)
            {
                Logger.LogJson(exception.Message + exception.StackTrace);
            }
        }

        public  void UploadPartProgressEventCallback(object sender, StreamTransferProgressArgs e)
        {
            // Process event. 
            Console.WriteLine("{0}/{1}", e.TransferredBytes, e.TotalBytes);
        }

        public  string GetAwsFolderString(string inputPath)
        {
            return inputPath.Replace("\\", "/");
        }

        public static string GetFileNamewithVersionAws(string destDir,string fileName,string fileVersionKey)
        {
            
            S3DirectoryInfo di = new S3DirectoryInfo(s3Client, bucketName, destDir);

            IS3FileSystemInfo[] files = di.GetFileSystemInfos().Where(k => k.Name.Contains(fileName)).ToArray();

            string versionedfileName = string.Empty;

            var count = files.Count();

            if (count >= 3)
            {
                versionedfileName = destDir + "/" + files.OrderBy(k => k.LastWriteTime).Select(k => k.Name).FirstOrDefault().ToString();
            }
            else
            {
                versionedfileName = destDir + "/" + (count + 1).ToString() + fileVersionKey + fileName;
            }

            return versionedfileName;
        }

        public void CopyFromAWStoLocal(string s3Folder, string destination)
        {
            
            try
            {
                Logger.LogInfo("Copy from AWS to Local folder started");

                TransferUtility fileTransferUtility = new TransferUtility(s3Client);

                fileTransferUtility.DownloadDirectory(bucketName, "/" + s3Folder, destination);

                Logger.LogInfo("Copy from AWS to Local folder completed");
            }
            catch (Exception ex)
            {
                Logger.LogInfo("an error occured during Copy from AWS to Local folder"+ex.Message+ex.StackTrace);
                Logger.LogJson(ex.Message + ex.StackTrace);
                throw ex;
            }
           
        }
    }
}
