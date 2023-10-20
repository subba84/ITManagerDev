using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataRecovery.Common.Models.ViewModels
{
    public class BackupHistoryModel
    {
        public string BackupName { get; set; }

        public DateTime BackupDateTime { get; set; }

        public decimal BackupSize { get; set; }

        public string BackupSizeText { get; set; }
    }
}
