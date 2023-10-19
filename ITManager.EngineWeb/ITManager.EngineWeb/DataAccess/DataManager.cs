using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ITManager.EngineWeb.Models;
using ITManager.EngineWeb.Models.ViewModels;

namespace ITManager.EngineWeb.DataAccess
{
    public class DataManager
    {
        public List<tblEngineUpdates> GetEngineUpdates()
        {
            using(EngineContext context = new EngineContext())
            {
                return context.tblEngineUpdates.ToList();
            }

        }

        public List<EngineReportVm> GetEngineReports()
        {
            using (EngineContext context = new EngineContext())
            {
                List<EngineReportVm> objresult = (from p in context.tblEngineReports
                                                  join q in context.tblEngineUpdates on p.UpdateId equals q.UpdateId
                                                  
                                                   select new EngineReportVm
                                                   {
                                                       EngineName = p.EngineName,
                                                       ApprovedDate = p.CreatedOn,
                                                       InstallStatus = p.Status,
                                                       UpdateName =q.Title,
                                                       SystemName = p.SystemId
                                                   }).ToList();
                return objresult;
            }

        }

        public void CreateUpdateRequest(string updateId,string groupName,string engineName)
        {
            using (EngineContext context = new EngineContext())
            {
                tblEngineRequests objtblEngineRequests = new tblEngineRequests();
                objtblEngineRequests.GroupName = groupName;
                objtblEngineRequests.EngineName = engineName;
                objtblEngineRequests.CreatedBy = "Web App";
                objtblEngineRequests.CreatedOn = DateTime.Now;
                objtblEngineRequests.RequestStatus = (int)RequestStatuses.New;
                objtblEngineRequests.UpdateId = updateId;

                context.tblEngineRequests.Add(objtblEngineRequests);
                context.SaveChanges();
            }
        }

        public UpdatesVm LoadUpdates()
        {
            UpdatesVm objUpdatesVm = new UpdatesVm();
            using (EngineContext context = new EngineContext())
            {
                objUpdatesVm.EngineGroups = context.tblEngineGroups.Where(k => k.IsActive == true).ToList();
                objUpdatesVm.EngineUpdates = context.tblEngineUpdates.ToList();
                objUpdatesVm.EngineConfig = context.tblEngineConfig.Where(k=>k.IsActive).ToList();
            }

            return objUpdatesVm;

        }


    }
}