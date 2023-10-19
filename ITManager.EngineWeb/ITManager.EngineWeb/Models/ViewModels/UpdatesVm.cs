using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITManager.EngineWeb.Models.ViewModels
{
    public class UpdatesVm
    {
        public List<tblEngineGroups> EngineGroups { get; set; }

        public List<tblEngineUpdates> EngineUpdates { get; set; }

        public List<tblEngineConfig> EngineConfig { get; set; }
    }
}