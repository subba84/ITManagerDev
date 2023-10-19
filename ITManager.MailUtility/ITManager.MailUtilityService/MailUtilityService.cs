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

namespace ITManager.MailUtilityService
{
    public partial class MailUtilityService : ServiceBase
    {

        private System.Timers.Timer timer;
        public MailUtilityService()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            try
            {

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
                MailManager objmailmanager = new MailManager();
                objmailmanager.readEmails();

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

            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);

            }
        }
    }
}
