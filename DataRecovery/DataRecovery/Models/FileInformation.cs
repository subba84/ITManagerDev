using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataRecovery.Models
{
    public class FileInformation
    {
        public string FileName { get; set; }

        public string Filepath { get; set; }

        public DateTime FileCreated { get; set; }

        public DateTime FileModified { get; set; }

        public string FileSize { get; set; }
    }
}