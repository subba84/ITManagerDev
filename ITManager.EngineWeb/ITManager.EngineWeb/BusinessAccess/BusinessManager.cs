using ITManager.EngineWeb.DataAccess;
using ITManager.EngineWeb.Models;
using ITManager.EngineWeb.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITManager.EngineWeb.BusinessAccess
{
    public class BusinessManager
    {

        DataManager objDataManager = new DataManager();

        public UpdatesVm LoadUpdates()
        {
            return objDataManager.LoadUpdates();
        }

        public List<tblEngineUpdates> GetEngineUpdates()
        {
            return objDataManager.GetEngineUpdates();
        }

        public List<EngineReportVm> GetEngineReports()
        {
            return objDataManager.GetEngineReports();
        }

        public void CreateUpdateRequest(string updateId, string groupName,string engineName)
        {
            objDataManager.CreateUpdateRequest(updateId, groupName, engineName);
        }
    }
}