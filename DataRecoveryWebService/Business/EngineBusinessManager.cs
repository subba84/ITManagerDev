using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataRecoveryWebService.DataAccess;
using DataRecoveryWebService.Models;
using DataRecoveryWebService.Models.ViewModels;

namespace DataRecoveryWebService.Business
{
    public class EngineBusinessManager
    {
        EngineDataAccess objDataBaseManager = new EngineDataAccess();

        public List<tblEngineRequests> GetEngineRequests()
        {
            return objDataBaseManager.GetEngineRequests();
        }

        public void UpdateEngineRequests(EngineRequestUpdateVm objEngineRequestUpdateVm)
        {
            objDataBaseManager.UpdateEngineRequests(objEngineRequestUpdateVm);
        }

        public void SaveEngineUpdates(List<tblEngineUpdates> objtblEngineUpdates)
        {
            objDataBaseManager.SaveEngineUpdates(objtblEngineUpdates);
        }

        public void SaveEngineReports(List<tblEngineReports> objtblEngineReports)
        {
            objDataBaseManager.SaveEngineReports(objtblEngineReports);
        }

        public List<tblEngineConfig> GetEngineConfigs()
        {
            return objDataBaseManager.GetEngineConfigs();
        }

        public void SaveEngineGroups(List<tblEngineGroups> objtblEngineGroups)
        {
            objDataBaseManager.SaveEngineGroups(objtblEngineGroups);
        }
    }
}