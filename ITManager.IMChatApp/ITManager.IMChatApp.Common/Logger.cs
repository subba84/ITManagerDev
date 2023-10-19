using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NLog;

namespace ITManager.IMChatApp.Common
{
    public static class Logger
    {
        private static readonly NLog.Logger Log = NLog.LogManager.GetCurrentClassLogger();

        public static void LogInfo(string message)
        {
            Log.Info(message);
        }

        public static void LogError(string message)
        {
            Log.Error(message);
        }
    }
}
