using DataRecoveryWebService.DataAccess;
using DataRecoveryWebService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataRecoveryWebService.Business
{
    public class BusinessManager
    {

        DataBaseManager objDataBaseManager = new DataBaseManager();

        public List<tblConfigs> GetConfig(string SystemId)
        {
            return objDataBaseManager.GetConfig(SystemId);
        }

        public void UpdateBackupResult(tblBackups objtblBackup)
        {
            objDataBaseManager.UpdateBackupResult(objtblBackup);
        }

        public void UpdateSoftwareInventory(List<tblSoftwareInventories> objtblInventory)
        {
            objDataBaseManager.UpdateSoftwareInventory(objtblInventory);
        }

        public void UpdateHardwareInventory(tblHardwareInventoriesVm objtblInventory)
        {
            objDataBaseManager.UpdateHardwareInventory(objtblInventory);
        }

        public List<tblModules> GetModules(string SystemId)
        {
            return objDataBaseManager.GetModules(SystemId);
        }

        public List<tblConfigMaster> GetConfigMaster()
        {
            return objDataBaseManager.GetConfigMaster();
        }

        public tblRequests GetBackupRequests(string SystemId)
        {
            return objDataBaseManager.GetBackupRequests(SystemId);
        }

        public void UpdateBackupRequests(tblRequests objStatus)
        {
            objDataBaseManager.UpdateBackupRequests(objStatus);
        }
        public void CreateBackupRequests(tblRequests objStatus)
        {
            objDataBaseManager.CreateBackupRequests(objStatus);
        }

    }
}