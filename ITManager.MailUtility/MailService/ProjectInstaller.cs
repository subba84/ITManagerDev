using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace MailService
{
    [RunInstaller(true)]
    public partial class ProjectInstaller : System.Configuration.Install.Installer
    {
        public ProjectInstaller()
        {
            InitializeComponent();
        }

        public override void Commit(IDictionary savedState)
        {
            string targetDirectory = Context.Parameters["DP_TargetDir"];

            using (EventLog eventLog = new EventLog("Application"))
            {
                eventLog.Source = "Application";
                eventLog.WriteEntry(targetDirectory, EventLogEntryType.Information, 101, 1);
            }

            Process p = new Process();
            p.StartInfo = new ProcessStartInfo(targetDirectory + "MailServiceSetupHelper.exe");

            using (EventLog eventLog = new EventLog("Application"))
            {
                eventLog.Source = "Application";
                eventLog.WriteEntry(p.StartInfo.FileName, EventLogEntryType.Information, 101, 1);
            }

            p.Start();
            p.WaitForExit();

            base.Commit(savedState);
        }

    }
}
