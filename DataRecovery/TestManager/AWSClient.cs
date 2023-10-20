using Amazon;
using Amazon.Runtime;
using Amazon.S3;
using Amazon.S3.IO;
using Amazon.S3.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Policy;
using System.Threading.Tasks;

namespace TestManager
{
    public class AWSClient
    {

        private const string bucketName = "dlo-endusers-backup";
        private const string keyName = "File.txt";
        private const string filePath = "D:\\File.txt";
        // Specify your bucket region (an example region is shown).
        private static readonly RegionEndpoint bucketRegion = RegionEndpoint.APSouth1;
        private static IAmazonS3 s3Client = new AmazonS3Client("AKIA5HVXIF7JRQL5KQM4", "cq+AEbqhb58h+5yQpN2rqGOTidMkFrhTth0F15Kq", bucketRegion);

      
        public static void CreateFolderStructure()
        {
            string folderPath = Environment.MachineName+"\\"+"C:\\Vamsi\\New Features\\";

            folderPath = folderPath.Replace(":", string.Empty).Replace("\\","/");
            

            PutObjectRequest request = new PutObjectRequest()
            {
                BucketName = bucketName,
                Key = folderPath // <-- in S3 key represents a path  
            };

            PutObjectResponse response = s3Client.PutObject(request);
        }

        public static void UploadSmallFile()
        {
            FileInfo file = new FileInfo(@"c:\Vamsi\test.txt");
            string path = "my-folder/sub-folder/test.txt";

            PutObjectRequest request = new PutObjectRequest()
            {
                InputStream = file.OpenRead(),
                BucketName = bucketName,
                Key = path // <-- in S3 key represents a path  
            };

            PutObjectResponse response = s3Client.PutObject(request);
        }

        public static async Task UploadFileinChunks()
        {
            Console.WriteLine("Uploading an object");

            // Create list to store upload part responses.
            List<UploadPartResponse> uploadResponses = new List<UploadPartResponse>();

            // Setup information required to initiate the multipart upload.
            InitiateMultipartUploadRequest initiateRequest = new InitiateMultipartUploadRequest
            {
                BucketName = bucketName,
                Key = keyName
            };

            // Initiate the upload.
            InitiateMultipartUploadResponse initResponse =
                await s3Client.InitiateMultipartUploadAsync(initiateRequest);

            // Upload parts.
            long contentLength = new FileInfo(filePath).Length;
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
                        Key = keyName,
                        UploadId = initResponse.UploadId,
                        PartNumber = i,
                        PartSize = partSize,
                        FilePosition = filePosition,
                        FilePath = filePath
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
                    Key = keyName,
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

                // Abort the upload.
                AbortMultipartUploadRequest abortMPURequest = new AbortMultipartUploadRequest
                {
                    BucketName = bucketName,
                    Key = keyName,
                    UploadId = initResponse.UploadId
                };
                await s3Client.AbortMultipartUploadAsync(abortMPURequest);
            }
        }
        public static void UploadPartProgressEventCallback(object sender, StreamTransferProgressArgs e)
        {
            // Process event. 
            Console.WriteLine("{0}/{1}", e.TransferredBytes, e.TotalBytes);
        }

        public static string GetAllFiles(string fileName)
        {
            string path = "Test";

            S3DirectoryInfo di = new S3DirectoryInfo(s3Client, bucketName, path);

            IS3FileSystemInfo[] files = di.GetFileSystemInfos().Where(k => k.Name.Contains(fileName)).ToArray();
           
            string versionedfileName = string.Empty;

            var count = files.Count();

            if (count >= 3)
            {
                versionedfileName = path + "\\" + files.OrderBy(k => k.LastWriteTime).Select(k => k.Name).FirstOrDefault().ToString();
            }
            else
            {
                versionedfileName = path + "\\" + (count + 1).ToString() + "!###$" + fileName;
            }

            return versionedfileName;
        }
    }
}

