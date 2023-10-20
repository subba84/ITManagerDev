using InventoryManager;
using MediaToolkit;
using MediaToolkit.Model;
using MediaToolkit.Options;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Management.Automation;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using DataRecovery.Models;
using Newtonsoft.Json.Linq;
using Microsoft.Win32;
using System.Security.Cryptography;

namespace TestManager
{
    class Program
    {
        static void Main(string[] args)
        {
            SystemAnalyzer ob = new SystemAnalyzer();
            ob.AnalyzeSoftwareComponents();
        }

        private static void CopywithEncryption()
        {
            string source = @"C:\DBT-DATA\File types\TESTPDf.pdf";
            string dest = @"C:\DBT-DATA\File types\TESTPDfencrypted.pdf";

            using (FileStream sourceStream = new FileStream(source, FileMode.OpenOrCreate))
            {
                byte[] iv = new byte[16];
                byte[] buffer = new byte[1024]; // Change to suitable size after testing performance

                using (Aes aes = Aes.Create())
                {
                    aes.Key = Encoding.UTF8.GetBytes("AAECAwQFBgcICQoLDA0ODw==");
                    aes.IV = iv;
                    aes.Padding = PaddingMode.Zeros;
                    CryptoStream cs;
                    ICryptoTransform encryptor = aes.CreateEncryptor(aes.Key, aes.IV);
                    using (FileStream destStream = new FileStream(dest, FileMode.OpenOrCreate))
                    {
                        cs = new CryptoStream(destStream,
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

            Console.ReadKey();

            source = @"C:\DBT-DATA\File types\TESTPDfencrypted.pdf";

            dest = @"C:\DBT-DATA\File types\TESTPDfdecrypted.pdf";

            using (FileStream sourceStream = new FileStream(source, FileMode.OpenOrCreate))
            {
                byte[] iv = new byte[16];
                byte[] buffer = new byte[1024]; // Change to suitable size after testing performance

                using (Aes aes = Aes.Create())
                {
                    aes.Key = Encoding.UTF8.GetBytes("AAECAwQFBgcICQoLDA0ODw==");
                    aes.IV = iv;
                    aes.Padding = PaddingMode.None;
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
        }
    }
}
