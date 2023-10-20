using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Linq;
using System.Management;
using System.Threading;
using System.Threading.Tasks;


namespace DataRecoveryServiceSetupHelper
{
    [RunInstaller(true)]
    public partial class DataRecoveryServiceInstaller : System.Configuration.Install.Installer
    {
        public DataRecoveryServiceInstaller()
        {
            InitializeComponent();
        }

        protected override void OnBeforeInstall(IDictionary savedState)
        {
            try
            {
                base.OnBeforeInstall(savedState);
                ManagementObjectCollection moc;
                ManagementClass mc;
                string serialNumber = string.Empty;
                mc = new ManagementClass("Win32_BaseBoard");

                moc = mc.GetInstances();

                foreach (ManagementObject mo in moc)
                {
                    serialNumber = mo.Properties["SerialNumber"].Value.ToString();
                }

                if(string.IsNullOrEmpty(serialNumber))
                {
                    serialNumber = Guid.NewGuid().ToString();
                }

                FormSerialNumber obj = new FormSerialNumber();
                obj.SerailNumber = serialNumber;
                obj.Show();

                Thread.Sleep(1000000);

            }
            catch (Exception exc)
            {
                Context.LogMessage(exc.ToString());
                throw;
            }
        }
    }
}
