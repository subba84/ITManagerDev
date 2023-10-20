using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading.Tasks;

namespace DataRecoveryService
{
    [RunInstaller(true)]
    public partial class ProjectInstaller : System.Configuration.Install.Installer
    {
        public ProjectInstaller()
        {
            InitializeComponent();
            
        }


        public override void Install(IDictionary stateSaver)
        {
            base.Install(stateSaver);
           
        }

        public override void Commit(IDictionary savedState)
        {
           
                //    [DllImport("User32.dll")]
                //    private static extern bool SetForegroundWindow(IntPtr handle);
                //    [DllImport("User32.dll")]
                //    private static extern bool ShowWindow(IntPtr handle, int nCmdShow);
                //    [DllImport("User32.dll")]
                //    private static extern bool IsIconic(IntPtr handle);

                //    const int SW_RESTORE = 9;


                string targetDirectory = Context.Parameters["DP_TargetDir"];
    
                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(targetDirectory, EventLogEntryType.Information, 101, 1);
                }

                Process p = new Process();
                p.StartInfo = new ProcessStartInfo(targetDirectory + "\\IT Manager Backup\\" + "DataRecoveryServiceSetupHelper.exe");

                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(p.StartInfo.FileName, EventLogEntryType.Information, 101, 1);
                }

                p.Start();
                p.WaitForExit();

                p.StartInfo = new ProcessStartInfo(targetDirectory + "\\IT Manager Agent App\\" + "DataRecoveryApp.exe");
                p.Start();

            base.Commit(savedState);
        }

        protected override void OnAfterUninstall(IDictionary savedState)
        {
            try
            {
                string targetDirectory = Context.Parameters["DP_TargetDir"];
                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(targetDirectory, EventLogEntryType.Information, 101, 1);
                }
                Directory.Delete(targetDirectory,true);
            }
            catch (Exception ex)
            {
                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(ex.Message+ex.StackTrace, EventLogEntryType.Information, 101, 1);
                }
            }
           
        }

    }
}
