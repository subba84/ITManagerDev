using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITManager.EngineWeb.Models.ViewModels
{
    public class EngineReportVm
    {
        public string EngineName { get; set; }

        public string SystemName { get; set; }

        public string UpdateName { get; set; }

        public string InstallStatus { get; set; }

        public DateTime ApprovedDate { get; set; }
    }
}