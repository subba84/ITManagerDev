using ITManager.EngineLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.EngineService
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main()
        {

            EngineManager objEngineManager = new EngineManager();

            objEngineManager.UpdateGroups();

            ServiceBase[] ServicesToRun;
            ServicesToRun = new ServiceBase[]
            {
                new ITManagerEngineService()
            };
            ServiceBase.Run(ServicesToRun);
        }
    }
}
