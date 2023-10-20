using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataRecoveryWebService.Models.ViewModels
{
    public class TicketModel
    {
        public string Subject { get; set; }

        public string Message { get; set; }

        public string UserId { get; set; }
    }
}