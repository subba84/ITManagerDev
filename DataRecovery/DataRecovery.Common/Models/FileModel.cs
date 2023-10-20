using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace DataRecovery.Common
{
    public class FileModel
    {
        public string  UserName { get; set; }

        public string FileName { get; set; }

        public string FilePath { get; set; }

        public string FileAction { get; set; }

        public DateTime FileActionDate { get; set; }

        public string Filestatus { get; set; }

        public string FilestatusDesc { get; set; }

        public long Filesize { get; set; }

        public string Source { get; set; }

        public DateTime LastWrittenTime { get; set; }


    }

    [XmlRoot(ElementName = "xmlroot")]
    public class xmlroot
    {
        [XmlElement(ElementName = "Filemodel")]
        public List<FileModel> Filemodel { get; set; }
    }
}
