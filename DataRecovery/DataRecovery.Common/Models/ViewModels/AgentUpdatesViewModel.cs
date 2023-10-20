using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataRecovery.Models
{
    public class AgentUpdatesViewModel
    {
        public string SystemId { get; set; }
        public string SerialNumber { get; set; }

        public string TotalBackupSize { get; set; }
    }
}