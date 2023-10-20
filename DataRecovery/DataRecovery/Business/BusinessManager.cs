using DataRecovery.DataAccess;
using DataRecovery.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataRecovery.Business
{
    public class BusinessManager
    {

        public List<tblBackups> GetBackup(string systemId)
        {
            DBManager objDbManager = new DBManager();
            return objDbManager.GetBackup(systemId);

        }

        public tblHardwareInventories GetTblHardwareInventories(string systemId)
        {
            DBManager objDbManager = new DBManager();
            var result = objDbManager.GetTblHardwareInventories(systemId);
            return result;

        }

        public List<tblSoftwareInventories> GetTblSoftwareInventories(string systemId)
        {
            DBManager objDbManager = new DBManager();
            return objDbManager.GetTblSoftwareInventories(systemId);

        }

        public List<tblConfigs> GetUserConfig(string systemId)
        {
            DBManager objDbManager = new DBManager();
            return objDbManager.GetUserConfig(systemId);

        }

        public List<tblConfigMaster> GetTemplateConfig()
        {
            DBManager objDbManager = new DBManager();
            return objDbManager.GetTemplateConfig();

        }

        public string GetSystemIdbyUserName(string userName)
        {
            DBManager objDbManager = new DBManager();
            return objDbManager.GetSystemIdbyUserName(userName);
        }

        public void SaveUserConfig(ConfigsVm objconfigsVm)
        {
            tblConfigs objconfigs = new tblConfigs();
            objconfigs.Configkey = objconfigsVm.Configkey;
            objconfigs.Configvalue = objconfigsVm.Configvalue;
            objconfigs.SystemId = objconfigsVm.SystemId;

            DBManager objDbManager = new DBManager();
            objDbManager.SaveUserConfig(objconfigs);
        }

        public void SaveTemplateConfig(ConfigMasterVm objconfigmasterVm)
        {
            tblConfigMaster objconfigmaster = new tblConfigMaster();
            objconfigmaster.Configkey = objconfigmasterVm.Configkey;
            objconfigmaster.Configvalue = objconfigmasterVm.Configvalue;
            

            DBManager objBusinessManager = new DBManager();
            objBusinessManager.SaveTemplateConfig(objconfigmaster);
        }

        public List<string> GetUsers()
        {
            DBManager objBusinessManager = new DBManager();
            return objBusinessManager.GetUsers();
        }

        public List<string> GetConfigKeys()
        {
            DBManager objBusinessManager = new DBManager();
            return objBusinessManager.GetConfigKeys();
        }

        public List<string> GetConfigMasterKeys()
        {
            DBManager objBusinessManager = new DBManager();
            return objBusinessManager.GetConfigMasterKeys();
        }
    }
}