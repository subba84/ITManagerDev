using InventoryManager;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Management;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DataRecoveryServiceSetupHelper
{
    public partial class FormSerialNumber : Form
    {
        public string SerailNumber { get; set; }

        public FormSerialNumber()
        {
            InitializeComponent();
        }

        private void FormSerialNumber_Load(object sender, EventArgs e)
        {
            try
            {


                string serialNumber = string.Empty;

                textBox1.Hide();
                label1.Hide();

                if (!Directory.Exists(System.AppDomain.CurrentDomain.BaseDirectory + "\\logs"))
                {
                    Directory.CreateDirectory(System.AppDomain.CurrentDomain.BaseDirectory + "\\logs");
                }

                ManagementObjectSearcher mSearcher = new ManagementObjectSearcher("SELECT SerialNumber, SMBIOSBIOSVersion, ReleaseDate FROM Win32_BIOS");
                ManagementObjectCollection collection = mSearcher.Get();
                foreach (ManagementObject obj in collection)
                {
                    serialNumber = (string)obj["SerialNumber"];

                }

                if (string.IsNullOrEmpty(serialNumber))
                {
                    Guid objguid = Guid.NewGuid();
                    serialNumber = objguid.ToString();
                    File.WriteAllText(Path.GetDirectoryName(Application.ExecutablePath) + "\\SerailNumber.txt", serialNumber);
                }


                lblSerialNumberValue.Text = serialNumber;

            }
            catch (Exception ex)
            {
                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(ex.Message + ex.StackTrace, EventLogEntryType.Information, 101, 1);
                }
            }
            using (EventLog eventLog = new EventLog("Application"))
            {
                eventLog.Source = "Application";
                eventLog.WriteEntry(Application.ExecutablePath, EventLogEntryType.Information, 101, 1);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {

            try
            {
                if (radioButton2.Checked)
                {
                    File.WriteAllText(Path.GetDirectoryName(Application.ExecutablePath) + "\\WebServiceUrl.txt", textBox1.Text);
                }
                Cursor.Current = Cursors.WaitCursor;
                SystemAnalyzer objanalyzer = new SystemAnalyzer();
                objanalyzer.AnalyzeHardwareComponents();
                Cursor.Current = Cursors.Default;
            }
            catch (Exception ex)
            {
                using (EventLog eventLog = new EventLog("Application"))
                {
                    eventLog.Source = "Application";
                    eventLog.WriteEntry(ex.Message + ex.StackTrace, EventLogEntryType.Information, 101, 1);
                }

            }



            Application.Exit();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked)
            {
                label1.Hide();
                textBox1.Hide();

            }


        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            label1.Show();
            textBox1.Show();

        }
    }
}
