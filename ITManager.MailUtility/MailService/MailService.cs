using ITManager.Common;
using ITManager.MailUitlityLibrary;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

namespace MailService
{
    public partial class MailService : ServiceBase
    {
        private System.Timers.Timer timer;
        public MailService()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            try
            {
                Logger.LogError("Service Stared");

                int interval = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["interval"].ToString());
                this.timer = new System.Timers.Timer(interval);  // 30000 milliseconds = 30 seconds
                this.timer.AutoReset = true;
                this.timer.Elapsed += new System.Timers.ElapsedEventHandler(this.timer_Elapsed);
                this.timer.Start();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);

            }
        }

        private void timer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            try
            {
                Logger.LogError("Started reading emails");

                MailManager objmailmanager = new MailManager();
                objmailmanager.readEmails();

                Logger.LogError("Completed reading emails");

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
                Logger.LogError("Service Stared");
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);

            }
        }

       
    }
}
