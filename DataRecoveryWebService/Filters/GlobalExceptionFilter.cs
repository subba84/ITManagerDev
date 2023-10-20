using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Http.Filters;

namespace DataRecoveryWebService.Filters
{
    public class GlobalExceptionFilter: ExceptionFilterAttribute
    {
        public override void OnException(HttpActionExecutedContext context)
        {
            using (EventLog eventLog = new EventLog("Application"))
            {
                eventLog.Source = "Application";
                eventLog.WriteEntry(context.Exception.Message + context.Exception.StackTrace, EventLogEntryType.Error, 101, 1);
            }

        }
    }
}