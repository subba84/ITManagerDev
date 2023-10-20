using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web.Http;
using DataRecoveryWebService.Business;
using DataRecoveryWebService.Models;
using DataRecoveryWebService.Models.ViewModels;

namespace DataRecoveryWebService.Controllers
{
    public class EngineController : ApiController
    {
        EngineBusinessManager objBusinessManager = new EngineBusinessManager();

        [HttpGet]
        [Route("GetEngineRequests")]
        public List<tblEngineRequests> GetEngineRequests()
        {
            return objBusinessManager.GetEngineRequests();
        }

        [HttpPost]
        [Route("UpdateEngineRequests")]
        public void UpdateEngineRequests(EngineRequestUpdateVm objEngineRequestUpdateVm)
        {
            objBusinessManager.UpdateEngineRequests(objEngineRequestUpdateVm);
        }

        [HttpPost]
        [Route("SaveEngineUpdates")]
        public void SaveEngineUpdates(List<tblEngineUpdates> objtblEngineUpdates)
        {
            objBusinessManager.SaveEngineUpdates(objtblEngineUpdates);
        }

        [HttpPost]
        [Route("SaveEngineReports")]
        public void SaveEngineReports(List<tblEngineReports> objtblEngineReports)
        {
            objBusinessManager.SaveEngineReports(objtblEngineReports);
        }

        [HttpGet]
        [Route("GetEngineConfigs")]
        public List<tblEngineConfig> GetEngineConfigs()
        {
            return objBusinessManager.GetEngineConfigs();
        }

        [HttpPost]
        [Route("SaveEngineGroups")]
        public void SaveEngineGroups(List<tblEngineGroups> objtblEngineGroups)
        {
            objBusinessManager.SaveEngineGroups(objtblEngineGroups);
        }
    }
}