using System;
using System.IO;
using System.Threading;

namespace ITManager.Common
{
    public static class Logger
    {

        public static void LogInfo(string message)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            waitHandle.WaitOne();
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "EventLog.txt";
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ",DateTime.Now.ToString(),message));
            }
            waitHandle.Set();
        }

        public static void LogError(string message)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            waitHandle.WaitOne();
            string filename = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "EventLog.txt";
            using (StreamWriter w = File.AppendText(filename))
            {
                w.WriteLine(string.Format("Date : {0} --- Event : {1} ", DateTime.Now.ToString(), message));
            }
            waitHandle.Set();
        }

    }
}
