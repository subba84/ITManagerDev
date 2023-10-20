using DataRecovery.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace DataRecovery.DataAccess
{
    public class DBManager
    {
        string userName = ConfigurationManager.AppSettings["userName"].ToString();

        public List<tblBackups> GetBackup(string systemId)
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblBackups.Where(k => k.IsActive == true && k.SystemId.ToLower() == systemId.ToLower()).ToList();
            }

        }

        public tblHardwareInventories GetTblHardwareInventories(string systemId)
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblHardwareInventories.Where(k => k.IsActive == true && k.SystemId.ToLower() == systemId.ToLower()).FirstOrDefault();
            }

        }

        public List<tblSoftwareInventories> GetTblSoftwareInventories(string systemId)
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblSoftwareInventories.Where(k => k.IsActive == true && k.SystemId.ToLower() == systemId.ToLower()).OrderBy(k=>k.InventoryName).ToList();
            }

        }

        public List<tblConfigs> GetUserConfig(string systemId)
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblConfigs.Where(k => k.IsActive == true && k.SystemId.ToLower() == systemId.ToLower()).OrderBy(k=>k.Configkey).ToList();
            }

        }

        public List<tblConfigMaster> GetTemplateConfig()
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblConfigMaster.Where(k => k.IsActive == true).OrderBy(k=>k.Configkey).ToList();
            }

        }

        public string GetSystemIdbyUserName(string userName)
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblUserMachineMappings.Where(k => k.IsActive == true && k.UserId == userName ).Select(k=>k.SystemId).FirstOrDefault();
            }
        }

        public void SaveUserConfig(tblConfigs objtblConfigs)
        {
            using (var context = new DatarecoveryContext())
            {
                var existingData = context.tblConfigs.Where(k => k.IsActive == true && k.SystemId == objtblConfigs.SystemId && k.Configkey == objtblConfigs.Configkey).FirstOrDefault();

                if (existingData != null)
                {

                    existingData.IsActive = false;
                    existingData.UpdatedBy = userName;
                    existingData.UpdatedOn = DateTime.Now;

                    context.SaveChanges();
                }

                objtblConfigs.CreatedBy = userName;
                objtblConfigs.IsActive = true;
                objtblConfigs.CreatedOn = DateTime.Now;
                context.tblConfigs.Add(objtblConfigs);
                context.SaveChanges();

            }
        }

        public void SaveTemplateConfig(tblConfigMaster objtblConfigMaster)
        {
            using (var context = new DatarecoveryContext())
            {
                var existingData = context.tblConfigMaster.Where(k => k.IsActive == true  && k.Configkey == objtblConfigMaster.Configkey).FirstOrDefault();
                if (existingData != null)
                {

                    existingData.IsActive = false;
                    existingData.UpdatedBy = userName;
                    existingData.UpdatedOn = DateTime.Now;

                    context.SaveChanges();
                }

                objtblConfigMaster.CreatedBy = userName;
                objtblConfigMaster.IsActive = true;
                objtblConfigMaster.CreatedOn = DateTime.Now;
                context.tblConfigMaster.Add(objtblConfigMaster);
                context.SaveChanges();
            }
        }

        public List<string> GetUsers()
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblUserMachineMappings.Where(k => k.IsActive == true).Select(k => k.UserId).ToList();
            }
        }

        public List<string> GetConfigKeys()
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblConfigKeys.Where(k => k.IsActive == true).Select(k => k.ConfigKey).ToList();
            }
        }

        public List<string> GetConfigMasterKeys()
        {
            using (var context = new DatarecoveryContext())
            {
                return context.tblConfigMasterKeys.Where(k => k.IsActive == true).Select(k => k.ConfigKey).ToList();
            }
        }

       

    }
}