using DataRecoveryWebService.Models;
using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Http.Description;
using System.Web.Http.Results;

namespace DataRecoveryWebService.DataAccess
{
    public class DataBaseManager
    {
        public List<tblConfigs> GetConfig(string SystemId)
        {
            List<tblConfigs> result = new List<tblConfigs>();
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                if (context.tblConfigs.Where(k => k.IsActive == true && (k.SystemId == SystemId)).Any())
                {
                    result = context.tblConfigs.Where(k => k.IsActive == true && (k.SystemId.ToLower() == SystemId.ToLower())).ToList();
                }
            }

            return result;
        }

        public List<tblConfigMaster> GetConfigMaster()
        {
            List<tblConfigMaster> result = new List<tblConfigMaster>();
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                if (context.tblConfigMaster.Where(k => k.IsActive == true).Any())
                {
                    result = context.tblConfigMaster.Where(k => k.IsActive == true).ToList();
                }
            }

            return result;
        }

        public string UpdateBackupResult(tblBackups objtblBackup)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                var existingData = context.tblBackups.Where(k => k.IsActive == true).ToList();

                existingData.ForEach(k => k.IsActive = false);

                context.SaveChanges();

                context.tblBackups.Add(objtblBackup);
                context.SaveChanges();
            }

            return string.Empty;
        }

        public void UpdateSoftwareInventory(List<tblSoftwareInventories> tblInventory)
        {
            try
            {


                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    var exisitingData = context.tblSoftwareInventories.Where(k => k.IsActive == true).ToList();

                    if (exisitingData != null)
                    {
                        exisitingData.ForEach(k => k.IsActive = false);
                        context.SaveChanges();
                    }

                    context.tblSoftwareInventories.AddRange(tblInventory);
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
                throw;
            }
        }

        public void UpdateHardwareInventory(tblHardwareInventoriesVm tblInventory)
        {
            try
            {


                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    var exisitingData = context.tblDriveDetails.Where(k => k.IsActive == true).ToList();
                    exisitingData.ForEach(k => k.IsActive = false);
                    context.SaveChanges();

                    context.tblDriveDetails.AddRange(tblInventory.DriveDetails);
                    context.SaveChanges();

                    var hardwareexisitingData = context.tblHardwareInventories.Where(k => k.IsActive == true).FirstOrDefault();
                    if (hardwareexisitingData != null)
                    {
                        hardwareexisitingData.IsActive = false;
                        context.SaveChanges();
                    }

                    tblHardwareInventories objtblhardwareInventory = new tblHardwareInventories();
                    objtblhardwareInventory.CPUType = tblInventory.CPUType;
                    objtblhardwareInventory.CPU_Core = tblInventory.CPU_Core;
                    objtblhardwareInventory.CreatedBy = tblInventory.CreatedBy;
                    objtblhardwareInventory.CreatedOn = tblInventory.CreatedOn;
                    objtblhardwareInventory.HasCdDrive = tblInventory.HasCdDrive;
                    objtblhardwareInventory.HostIP = tblInventory.HostIP;
                    objtblhardwareInventory.HostName = tblInventory.HostName;
                    objtblhardwareInventory.IsActive = true;
                    objtblhardwareInventory.LastLoginUser = tblInventory.LastLoginUser;
                    objtblhardwareInventory.LastScanDate = tblInventory.LastScanDate;
                    objtblhardwareInventory.Manufacturer = tblInventory.Manufacturer;
                    objtblhardwareInventory.Model = tblInventory.Model;
                    objtblhardwareInventory.OperatingSystem = tblInventory.OperatingSystem;
                    objtblhardwareInventory.PrinterConnected = tblInventory.PrinterConnected;
                    objtblhardwareInventory.RAMDetails = tblInventory.RAMDetails;
                    objtblhardwareInventory.RAMSlots = tblInventory.RAMSlots;
                    objtblhardwareInventory.SerialNumber = tblInventory.SerialNumber;
                    objtblhardwareInventory.SystemId = tblInventory.SystemId;
                    objtblhardwareInventory.WindowsActivated = tblInventory.WindowsActivated;

                    context.tblHardwareInventories.Add(objtblhardwareInventory);

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
                throw;
            }
        }

        public List<tblModules> GetModules(string SystemId)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                return context.tblModules.Where(k => k.IsActive == true && k.SystemId == SystemId).ToList();
            }
        }

        public tblRequests GetBackupRequests(string SystemId)
        {   
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                return context.tblRequests.Where(k => k.IsActive == true && k.SystemId == SystemId && k.RequestStatusId == (int)RequestStatuses.New).FirstOrDefault();
            }
        }

        public void UpdateBackupRequests(tblRequests objStatus)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                if(context.tblRequests.Where(k => k.IsActive == true && k.SystemId == objStatus.SystemId).Any())
                {
                    var data = context.tblRequests.Where(k => k.IsActive == true && k.SystemId == objStatus.SystemId).FirstOrDefault();

                    data.RequestStatusId = objStatus.RequestStatusId;
                    data.ResultMessage = objStatus.ResultMessage;
                    data.Updatedby = "Windows Service";
                    data.UpdatedOn = DateTime.Now;

                    context.SaveChanges();
                }
                
            }
        }

        public void CreateBackupRequests(tblRequests objStatus)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                if (!context.tblRequests.Where(k => k.IsActive == true && k.SystemId == objStatus.SystemId && (k.RequestStatusId == 1 || k.RequestStatusId == 2)).Any())
                {
                    context.tblRequests.Add(objStatus);

                    context.SaveChanges();
                }

            }
        }


    }
}