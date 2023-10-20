using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using DataRecoveryWebService;
using DataRecoveryWebService.Business;
using DataRecoveryWebService.Models;

namespace DataRecoveryWebService.Controllers
{
    public class DataRecoveryController : ApiController
    {

        BusinessManager objBusinessManager = new BusinessManager();

        [HttpGet]
        [Route("GetConfig")]
        public List<tblConfigs> GetConfig(string SystemId)
        {
            return objBusinessManager.GetConfig(SystemId);
        }

        [HttpPost]
        [Route("UpdateBackupResult")]
        public string UpdateBackupResult(tblBackups objtblBackup)
        {
            objBusinessManager.UpdateBackupResult(objtblBackup);

            return "";
        }

        [HttpPost]
        [Route("UpdateHardwareInventory")]
        public void UpdateHardwareInventory(tblHardwareInventoriesVm objtblInventory)
        {
            objBusinessManager.UpdateHardwareInventory(objtblInventory);
        }

        [HttpPost]
        [Route("UpdateSoftwareInventory")]
        public void UpdateSoftwareInventory(List<tblSoftwareInventories> objtblInventory)
        {
            objBusinessManager.UpdateSoftwareInventory(objtblInventory);
        }

        [HttpGet]
        [Route("GetModules")]
        public List<tblModules> GetModules(string SystemId)
        {
            return objBusinessManager.GetModules(SystemId);
        }

        [HttpGet]
        [Route("GetConfigMaster")]
        public List<tblConfigMaster> GetConfigMaster()
        {
            return objBusinessManager.GetConfigMaster();
        }

        [HttpGet]
        [Route("GetBackupRequests")]
        public tblRequests GetBackupRequests(string SystemId)
        {
            return objBusinessManager.GetBackupRequests(SystemId);
        }

        [HttpPost]
        [Route("UpdateBackupRequests")]
        public void UpdateBackupRequests(tblRequests objStatus)
        {
            objBusinessManager.UpdateBackupRequests(objStatus);
        }

        [HttpPost]
        [Route("CreateBackupRequests")]
        public void CreateBackupRequests(tblRequests objStatus)
        {
            objBusinessManager.CreateBackupRequests(objStatus);
        }
    }
}