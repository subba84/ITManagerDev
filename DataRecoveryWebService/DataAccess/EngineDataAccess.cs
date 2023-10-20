using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using DataRecoveryWebService.Models;
using DataRecoveryWebService.Models.ViewModels;

namespace DataRecoveryWebService.DataAccess
{
    public class EngineDataAccess
    {
        public List<tblEngineRequests> GetEngineRequests()
        {
            List<tblEngineRequests> result = new List<tblEngineRequests>();

            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                if (context.tblEngineRequests.Where(k => k.RequestStatus == (int)RequestStatuses.New || k.RequestStatus == (int)RequestStatuses.InProgress).Any())
                {
                    result = context.tblEngineRequests.Where(k => k.RequestStatus == (int)RequestStatuses.New || k.RequestStatus == (int)RequestStatuses.InProgress).ToList();
                }
            }

            return result;
        }

        public void UpdateEngineRequests(EngineRequestUpdateVm objEngineRequestUpdateVm)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                var existingdata = context.tblEngineRequests.Where(k => k.RequestId == objEngineRequestUpdateVm.RequestId).FirstOrDefault();
                existingdata.RequestStatus = objEngineRequestUpdateVm.RequestStatusId;
                context.SaveChanges();
            }

        }

        public void SaveEngineUpdates(List<tblEngineUpdates> objtblEngineUpdates)
        {
            try
            {
                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    var missingRecords = objtblEngineUpdates.Where(x => !context.tblEngineUpdates.Any(z => z.UpdateId == x.UpdateId && z.EngineName == x.EngineName)).ToList();
                    context.tblEngineUpdates.AddRange(missingRecords);
                    context.SaveChanges();
                }
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw e;
            }


        }

        public void SaveEngineReports(List<tblEngineReports> objtblEngineReports)
        {
            try
            {
                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    foreach (var item in objtblEngineReports)
                    {
                        if(!context.tblEngineReports.Where(k=>k.SystemId == item.SystemId && k.UpdateId == item.UpdateId).Any())
                        {
                            context.tblEngineReports.Add(item);
                            context.SaveChanges();
                        }
                        else
                        {
                            var existingrecord = context.tblEngineReports.Where(k => k.SystemId == item.SystemId && k.UpdateId == item.UpdateId).FirstOrDefault();
                            existingrecord.Status = item.Status;
                            existingrecord.UpdatedBy = "Windows Service";
                            existingrecord.UpdatedOn = DateTime.Now;
                            context.SaveChanges();

                        }
                    }
                    
                }
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw e;
            }

        }

        public List<tblEngineConfig> GetEngineConfigs()
        {
            List<tblEngineConfig> result = new List<tblEngineConfig>();
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                    result = context.tblEngineConfig.ToList();
            }
            return result;
        }

        public void SaveEngineGroups(List<tblEngineGroups> objtblEngineGroups)
        {
            try
            {
                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    context.tblEngineGroups.RemoveRange(context.tblEngineGroups);

                    context.SaveChanges();

                    context.tblEngineGroups.AddRange(objtblEngineGroups);

                    context.SaveChanges();
                }
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw e;
            }


        }
    }
}