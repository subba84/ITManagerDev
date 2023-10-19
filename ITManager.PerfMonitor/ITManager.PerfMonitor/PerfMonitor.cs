using ITManager.PerfMonitor.Library;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ITManager.PerfMonitor
{
    public partial class PerfMonitor : Form
    {
        public float finalResult;

        public PerfMonitor()
        {
            InitializeComponent();
        }

        private void PerfMonitor_Load(object sender, EventArgs e)
        {
            PerfMetricCalculator objPerfMonitor = new PerfMetricCalculator();
            //objPerfMonitor.GetSystemPerformanceCounters(Environment.MachineName);
            //objPerfMonitor.GetWMIPerformanceCounters();
            GetCPUCouter();
            timerPerf.Start();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void timerPerf_Tick(object sender, EventArgs e)
        {
            //float fCpu = pCpu.NextValue();
            //float fRam = pRam.NextValue();
            //float fDisk = pDisk.NextValue();

            progressBar1.Value = (int)finalResult;
            //progressBar2.Value = (int)fRam;
            //progressBar3.Value = (int)fDisk;

            label3.Text = string.Format("{0:0.00}%",finalResult);
            //label5.Text = string.Format("{0:0.00}%", fRam);
            //label6.Text = string.Format("{0:0.00}%", fDisk);
        }

        public async void GetCPUCouter()
        {
            CounterSample firstValue = pCpu.NextSample();
            await Task.Delay(900);
            CounterSample secondValue = pCpu.NextSample();
            finalResult = CounterSample.Calculate(firstValue, secondValue);
            await Task.Delay(900);
            GetCPUCouter();
        }
    }
}

