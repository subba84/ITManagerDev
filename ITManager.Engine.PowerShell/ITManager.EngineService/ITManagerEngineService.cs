using ITManager.Common;
using ITManager.EngineLibrary;
using System;
using System.Configuration;
using System.ServiceProcess;
using System.Threading;

namespace ITManager.EngineService
{
    public partial class ITManagerEngineService : ServiceBase
    {
        public System.Timers.Timer SaveUpdateTimer = new System.Timers.Timer();

        public System.Timers.Timer DeployUpdateTimer = new System.Timers.Timer();

        public System.Timers.Timer MonitorUpdateTimer = new System.Timers.Timer();

        public System.Timers.Timer GroupUpdateTimer = new System.Timers.Timer();

        public ITManagerEngineService()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            try
            {

                SaveUpdateTimer.Interval = Convert.ToInt32(ConfigurationManager.AppSettings["SaveUpdateTimerInterval"].ToString());

                DeployUpdateTimer.Interval = Convert.ToInt32(ConfigurationManager.AppSettings["DeployUpdateTimerInterval"].ToString());

                MonitorUpdateTimer.Interval = Convert.ToInt32(ConfigurationManager.AppSettings["MonitorUpdateTimerInterval"].ToString());

                GroupUpdateTimer.Interval = Convert.ToInt32(ConfigurationManager.AppSettings["GroupUpdateTimerInterval"].ToString());

                SaveUpdateTimer.Elapsed += new System.Timers.ElapsedEventHandler(SaveUpdateTimer_Elapsed);

                DeployUpdateTimer.Elapsed += new System.Timers.ElapsedEventHandler(DeployUpdateTimer_Elapsed);

                MonitorUpdateTimer.Elapsed += new System.Timers.ElapsedEventHandler(MonitorUpdateTimer_Elapsed);

                GroupUpdateTimer.Elapsed += new System.Timers.ElapsedEventHandler(GroupUpdateTimer_Elapsed);

              

                SaveUpdateTimer.Start();
                DeployUpdateTimer.Start();
                MonitorUpdateTimer.Start();
                GroupUpdateTimer.Start();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }


        }

        protected override void OnStop()
        {
            try
            {
                Logger.LogInfo("Service Stopped");
            }
            catch (Exception ex)
            {
                Logger.LogInfo(ex.Message + ex.StackTrace);
            }
        }

        private void SaveUpdateTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                EngineManager objEngineManager = new EngineManager();

                Thread threadsaveupdate = new Thread(objEngineManager.SaveUpdates);
                threadsaveupdate.Start();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }

        }

        private void GroupUpdateTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                EngineManager objEngineManager = new EngineManager();

                Thread threadsaveupdate = new Thread(objEngineManager.UpdateGroups);
                threadsaveupdate.Start();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }

        }

        private void DeployUpdateTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                EngineManager objEngineManager = new EngineManager();

                Thread threaddeployupdate = new Thread(objEngineManager.DeployUpdates);
                threaddeployupdate.Start();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }

        }

        private void MonitorUpdateTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                EngineManager objEngineManager = new EngineManager();

                Thread threaddeployupdate = new Thread(objEngineManager.MonitorUpdates);
                threaddeployupdate.Start();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }

        }
    }
}
