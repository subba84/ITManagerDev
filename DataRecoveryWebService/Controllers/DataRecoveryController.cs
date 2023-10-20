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
using DataRecoveryWebService.Models.ViewModels;

namespace DataRecoveryWebService.Controllers
{
    public class DataRecoveryController : ApiController
    {

        BusinessManager objBusinessManager = new BusinessManager();

        [HttpGet]
        [Route("GetConfig")]
        public List<tblConfigs> GetConfig(string SystemId, string SerialNumber)
        {
            return objBusinessManager.GetConfig(SystemId, SerialNumber);
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
        public tblRequests GetBackupRequests()
        {
            return objBusinessManager.GetBackupRequests();
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

        [HttpGet]
        [Route("GetHardwareInventory")]
        public tblHardwareInventories GetHardwareInventory(string SystemId)
        {
            return objBusinessManager.GetHardwareInventory(SystemId);
        }

        [HttpPost]
        [Route("GenerateSupportTicket")]
        public string GenerateSupportTicket(TicketModel objTicketModel)
        {
            return objBusinessManager.GenerateSupportTicket(objTicketModel);
        }

        [HttpPost]
        [Route("SaveAgentUpdates")]
        public void SaveAgentUpdates(AgentUpdatesViewModel objAgentUpdatesViewModel)
        {
            objBusinessManager.SaveAgentUpdates(objAgentUpdatesViewModel);
        }

        [HttpPost]
        [Route("UpdateDiskDetails")]
        public void UpdateDiskDetails(List<tblDiskDetails> tblDiskDetails)
        {
            objBusinessManager.UpdateDiskDetails(tblDiskDetails);
        }

        [HttpPost]
        [Route("UpdateServiceDetails")]
        public void UpdateServiceDetails(List<tblServiceDetails> tblServiceDetails)
        {
            objBusinessManager.UpdateServiceDetails(tblServiceDetails);
        }
    }
}