using DataRecoveryWebService.Business;
using DataRecoveryWebService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace DataRecoveryWebService.Controllers
{
    public class MailUtilityController : ApiController
    {

        BusinessManager objBusinessManager = new BusinessManager();

        [HttpGet]
        [Route("GetMailConfig")]
        public List<tblMailUtilityConfig> GetMailConfig()
        {
            return objBusinessManager.GetMailConfig();
        }

        [HttpPost]
        [Route("SaveMailmessage")]
        public void SaveMailmessage(List<tblMailMessage> objtblMailMessage)
        {
            objBusinessManager.SaveMailmessage(objtblMailMessage);
        }

        [HttpPost]
        [Route("SaveMailConversation")]
        public void SaveMailConversation(List<tblMailConversations> objtblMailConversation)
        {
            objBusinessManager.SaveMailConversation(objtblMailConversation);
        }

        [HttpGet]
        [Route("GetMailMessages")]
        public List<tblMailMessage> GetMailMessages()
        {
            return objBusinessManager.GetMailMessages();
        }

        [HttpGet]
        [Route("GetNotificationFieldMatrix")]
        public List<string> GetNotificationFieldMatrix()
        {
            return objBusinessManager.GetNotificationFieldMatrix();
        }
    }
}
