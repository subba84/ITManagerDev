using DataRecoveryWebService.DataAccess;
using DataRecoveryWebService.Models;
using DataRecoveryWebService.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataRecoveryWebService.Business
{
    public class BusinessManager
    {

        DataBaseManager objDataBaseManager = new DataBaseManager();

        public List<tblConfigs> GetConfig(string SystemId, string SerialNumber)
        {
            return objDataBaseManager.GetConfig(SystemId, SerialNumber);
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

        public tblRequests GetBackupRequests()
        {
            return objDataBaseManager.GetBackupRequests();
        }

        public void UpdateBackupRequests(tblRequests objStatus)
        {
            objDataBaseManager.UpdateBackupRequests(objStatus);
        }
        public void CreateBackupRequests(tblRequests objStatus)
        {
            objDataBaseManager.CreateBackupRequests(objStatus);
        }

        public List<tblMailUtilityConfig> GetMailConfig()
        {
            return objDataBaseManager.GetMailConfig();
        }

        public void SaveMailmessage(List<tblMailMessage> objtblMailMessage)
        {
            objDataBaseManager.SaveMailmessage(objtblMailMessage);
        }

        public tblHardwareInventories GetHardwareInventory(string SystemId)
        {
            return objDataBaseManager.GetHardwareInventory(SystemId);
        }

        public void SaveMailConversation(List<tblMailConversations> objtblMailConversation)
        {
            objDataBaseManager.SaveMailConversation(objtblMailConversation);
        }

        public List<tblMailMessage> GetMailMessages()
        {
            return objDataBaseManager.GetMailMessages();
        }

        public string GenerateSupportTicket(TicketModel objTicketModel)
        {
            return objDataBaseManager.GenerateSupportTicket(objTicketModel);
        }

        public void SaveAgentUpdates(AgentUpdatesViewModel objAgentUpdatesViewModel)
        {
            objDataBaseManager.SaveAgentUpdates(objAgentUpdatesViewModel);
        }

        public void UpdateDiskDetails(List<tblDiskDetails> tblDiskDetails)
        {
            objDataBaseManager.UpdateDiskDetails(tblDiskDetails);
        }

        public void UpdateServiceDetails(List<tblServiceDetails> tblServiceDetails)
        {
            objDataBaseManager.UpdateServiceDetails(tblServiceDetails);
        }

        public List<string> GetNotificationFieldMatrix()
        {
            return objDataBaseManager.GetNotificationFieldMatrix();
        }
    }
}