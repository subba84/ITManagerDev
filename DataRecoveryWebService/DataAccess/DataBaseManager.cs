using DataRecoveryWebService.Models;
using DataRecoveryWebService.Models.ViewModels;
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
        public List<tblConfigs> GetConfig(string SystemId, string SerialNumber)
        {
            List<tblConfigs> result = new List<tblConfigs>();
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                if (context.tblConfigs.Where(k => k.IsActive == true && (k.SystemId == SystemId)).Any())
                {
                    result = context.tblConfigs.Where(k => k.IsActive == true && (k.SystemId.ToLower() == SystemId.ToLower() && k.SerialNumber.ToLower() == SerialNumber.ToLower())).ToList();
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
                var existingData = context.tblBackups.Where(k => k.IsActive == true && k.SystemId == objtblBackup.SystemId).ToList();
                if (existingData != null)
                {
                    context.tblBackups.RemoveRange(existingData);
                    context.SaveChanges();
                }
                context.tblBackups.Add(objtblBackup);
                context.SaveChanges();
            }

            return string.Empty;
        }

        public void UpdateSoftwareInventory(List<tblSoftwareInventories> tblInventory)
        {
            try
            {
                var softwareinventory = tblInventory.First();

                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    var exisitingData = context.tblSoftwareInventories.Where(k => k.IsActive == true && k.SystemId == softwareinventory.SystemId && k.SerialNumber == softwareinventory.SerialNumber).ToList();
                    if (exisitingData != null)
                    {
                        context.tblSoftwareInventories.RemoveRange(exisitingData);
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
                throw e;
            }
        }

        public void UpdateHardwareInventory(tblHardwareInventoriesVm tblInventory)
        {
            try
            {

                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    if (tblInventory.DriveDetails != null && tblInventory.DriveDetails.Count > 0)
                    {
                        var drivedetails = tblInventory.DriveDetails.First();


                        var exisitingData = context.tblDriveDetails.Where(k => k.IsActive == true && k.SystemId == drivedetails.SystemId && k.SerialNumber == drivedetails.SerialNumber).ToList();
                        if (exisitingData != null)
                        {
                            context.tblDriveDetails.RemoveRange(exisitingData);
                            context.SaveChanges();
                        }
                    }

                    context.tblDriveDetails.AddRange(tblInventory.DriveDetails);
                    context.SaveChanges();

                    var hardwareexisitingData = context.tblHardwareInventories.Where(k => k.IsActive == true && k.SystemId == tblInventory.SystemId && k.SerialNumber == tblInventory.SerialNumber).FirstOrDefault();
                    if (hardwareexisitingData != null)
                    {
                        context.tblHardwareInventories.Remove(hardwareexisitingData);
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
                throw e;
            }
        }

        public List<tblModules> GetModules(string SystemId)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                return context.tblModules.Where(k => k.IsActive == true && k.SystemId == SystemId).ToList();
            }
        }

        public tblRequests GetBackupRequests()
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                return context.tblRequests.Where(k => k.IsActive == true && k.RequestStatusId == (int)RequestStatuses.New || k.RequestStatusId == (int)RequestStatuses.InProgress).FirstOrDefault();
            }
        }

        public void UpdateBackupRequests(tblRequests objStatus)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                if (context.tblRequests.Where(k => k.IsActive == true && k.SystemId == objStatus.SystemId).Any())
                {
                    var data = context.tblRequests.Where(k => k.IsActive == true && k.RequestId == objStatus.RequestId).FirstOrDefault();

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

        public List<tblMailUtilityConfig> GetMailConfig()
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                return context.tblMailUtilityConfig.Where(k => k.IsActive == true).ToList();
            }
        }

        public void SaveMailmessage(List<tblMailMessage> objtblMailMessage)
        {
            int userId;
            try
            {
                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    foreach (var item in objtblMailMessage)
                    {
                      

                        var currentrow = context.tblMailMessage.Where(k => k.MailServerMessageId == item.MailServerMessageId).Count();
                        if (currentrow == 0)
                        {
                            context.tblMailMessage.AddRange(objtblMailMessage);
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

        public void SaveMailConversation(List<tblMailConversations> objtblMailConversation)
        {
            try
            {
                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    foreach (var item in objtblMailConversation)
                    {
                        var currentrow = context.tblMailConversations.Where(k => k.MailServerMessageId == item.MailServerMessageId).Count();
                        if (currentrow == 0)
                        {
                            context.tblMailConversations.AddRange(objtblMailConversation);
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

        public List<tblMailMessage> GetMailMessages()
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                return context.tblMailMessage.ToList();
            }
        }

        public tblHardwareInventories GetHardwareInventory(string SystemId)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                return context.tblHardwareInventories.Where(k => k.IsActive == true && k.SystemId.ToLower() == SystemId.ToLower()).FirstOrDefault();
            }
        }

        public string GenerateSupportTicket(TicketModel objTicketModel)
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                tblTicketNumberCreation_Default objtblTicketNumberCreation_Default = context.tblTicketNumberCreation_Default.FirstOrDefault();

                tblTicketGenerate objtblTicketGenerate = context.tblTicketGenerate.OrderByDescending(k => k.Id).FirstOrDefault();

                //List<NotificationFieldMatrix> notificationFieldMatrix = context.NotificationFieldMatrix.Where(k => k.RoleName == "End User" && k.IsActive == true).ToList();

                int recordnumber;

                if (objtblTicketGenerate != null)
                {
                    recordnumber = Convert.ToInt32(objtblTicketGenerate.Id) + 1;
                }
                else
                {
                    recordnumber = 1;
                }

                int recordnolenth = recordnumber.ToString().Length;
                int startingnolenth = objtblTicketNumberCreation_Default.StartingNumber.ToString().Length;

                int count = 0;
                string zero = null;

                count = objtblTicketNumberCreation_Default.NumberOfDigit.Value - recordnolenth - startingnolenth;
                for (int i = 0; i < count; i++)
                {
                    zero = zero + "0";
                }
                string recordid = objtblTicketNumberCreation_Default.PrifexText + objtblTicketNumberCreation_Default.StartingNumber + zero + recordnumber.ToString();


                objtblTicketGenerate = new tblTicketGenerate();
                objtblTicketGenerate.NumberOfDigit = objtblTicketNumberCreation_Default.NumberOfDigit;
                objtblTicketGenerate.PrifexText = objtblTicketNumberCreation_Default.PrifexText;
                objtblTicketGenerate.Priority = "Low";

                objtblTicketGenerate.RecordId = recordid;

                objtblTicketGenerate.TicketDescription = objTicketModel.Subject;

                objtblTicketGenerate.TicketSummary = objTicketModel.Message;

                objtblTicketGenerate.TicketStatus = "New";

                if (context.UserInformation.Where(k => k.EmailAddress == objTicketModel.UserId).Any())
                {
                    int userId = context.UserInformation.Where(k => k.EmailAddress == objTicketModel.UserId).Select(k => k.Id).FirstOrDefault();

                    objtblTicketGenerate.SubmittedBy = userId.ToString();

                    objtblTicketGenerate.TicketOwner = userId.ToString();
                }

                objtblTicketGenerate.AssetTag = null;

                objtblTicketGenerate.CreateBy = null;

                objtblTicketGenerate.Created = DateTime.Now;

                objtblTicketGenerate.CreatedDateTime = null;

                objtblTicketGenerate.Extra1 = null;

                objtblTicketGenerate.Extra2 = null;

                objtblTicketGenerate.Extra3 = null;

                objtblTicketGenerate.FileUpload = null;

                objtblTicketGenerate.FinancialYear = null;

                objtblTicketGenerate.FirmId = null;

                objtblTicketGenerate.Mode = null;

                objtblTicketGenerate.StartingNumber = objtblTicketNumberCreation_Default.StartingNumber;

                objtblTicketGenerate.RecordNo = recordnumber;

                objtblTicketGenerate.Service = null;

                objtblTicketGenerate.Severity = null;

                objtblTicketGenerate.TicketCategory = null;

                objtblTicketGenerate.TicketComments = null;

                //objtblTicketGenerate.TicketOwner = objTicketModel.UserId;

                objtblTicketGenerate.TicketSubCategory = null;

                objtblTicketGenerate.TimeSpent = null;

                objtblTicketGenerate.Type = null;

                objtblTicketGenerate.TypeSelect = null;

                objtblTicketGenerate.UpdateBy = null;

                objtblTicketGenerate.Updated = null;

                objtblTicketGenerate.CreatedDateTime = DateTime.Now.ToString();
                context.tblTicketGenerate.Add(objtblTicketGenerate);
                context.SaveChanges();

                return recordid;

            }
        }

        public void SaveAgentUpdates(AgentUpdatesViewModel objAgentUpdatesViewModel)
        {
            try
            {
                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    var existingRecord = context.tblAgentUpdates.Where(k => k.SerialNumber == objAgentUpdatesViewModel.SerialNumber && k.SystemId == objAgentUpdatesViewModel.SystemId).FirstOrDefault();
                    if (existingRecord != null)
                    {
                        existingRecord.TotalBackupSize = objAgentUpdatesViewModel.TotalBackupSize;
                        existingRecord.UpdatedOn = DateTime.Now;
                    }
                    else
                    {
                        tblAgentUpdates objtblAgentUpdates = new tblAgentUpdates();
                        objtblAgentUpdates.SystemId = objAgentUpdatesViewModel.SystemId;
                        objtblAgentUpdates.SerialNumber = objAgentUpdatesViewModel.SerialNumber;
                        objtblAgentUpdates.TotalBackupSize = objAgentUpdatesViewModel.TotalBackupSize;
                        objtblAgentUpdates.UpdatedOn = DateTime.Now;
                        objtblAgentUpdates.IsActive = true;
                        context.tblAgentUpdates.Add(objtblAgentUpdates);
                    }

                    var existingHardwareInventory = context.tblHardwareInventories.Where(k => k.SerialNumber == objAgentUpdatesViewModel.SerialNumber && k.SystemId == objAgentUpdatesViewModel.SystemId).ToList();
                    existingHardwareInventory.ForEach(k => k.LastScanDate = DateTime.Now);


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

        public void UpdateDiskDetails(List<tblDiskDetails> tblDiskDetails)
        {
            try
            {
                var diskDetails = tblDiskDetails.First();

                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    var exisitingData = context.tblDiskDetails.Where(k => k.IsActive == true && k.SystemId == diskDetails.SystemId && k.SerialNumber == diskDetails.SerialNumber).ToList();
                    if (exisitingData != null)
                    {
                        context.tblDiskDetails.RemoveRange(exisitingData);
                        context.SaveChanges();
                    }



                    context.tblDiskDetails.AddRange(tblDiskDetails);
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

        public void UpdateServiceDetails(List<tblServiceDetails> tblServiceDetails)
        {
            try
            {
                var serviceDetails = tblServiceDetails.First();

                using (DataRecoveryContext context = new DataRecoveryContext())
                {
                    var exisitingData = context.tblServiceDetails.Where(k => k.IsActive == true && k.SystemId == serviceDetails.SystemId && k.SerialNumber == serviceDetails.SerialNumber).ToList();
                    if (exisitingData != null)
                    {
                        context.tblServiceDetails.RemoveRange(exisitingData);
                        context.SaveChanges();
                    }



                    context.tblServiceDetails.AddRange(tblServiceDetails);
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

        public List<string> GetNotificationFieldMatrix()
        {
            using (DataRecoveryContext context = new DataRecoveryContext())
            {
                var data = context.NotificationFieldMatrix.Where(k => k.StageName == "New" && k.RoleName == "End User" && k.IsActive == true).ToList();

                return data.Select(k => k.FieldName).ToList();
            }
        }

    }
}