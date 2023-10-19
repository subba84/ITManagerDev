using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ITManager.Common
{
    public class Logger
    {

        public static void LogError(string error)
        {
            try
            {
                EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
                waitHandle.WaitOne(5000);
                string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "EventLog.txt";
                using (StreamWriter w = File.AppendText(filename))
                {
                    w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), error));
                }
                waitHandle.Set();
            }
            catch (Exception ex)
            {
                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(ex.Message + ex.StackTrace, EventLogEntryType.Information, 101, 1);
                }
            }

        }
    }
}
