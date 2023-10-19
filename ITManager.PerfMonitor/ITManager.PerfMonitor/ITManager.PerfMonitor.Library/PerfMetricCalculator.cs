using ITManager.Common;
using ITManager.Common.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Management;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.PerfMonitor.Library
{
    public class PerfMetricCalculator
    {
        public PerformanceMetrics GetPrformanceCounter(int sourceType,string machineName)
        {
            PerformanceMetrics objPerformanceMetrics = new PerformanceMetrics();



            return objPerformanceMetrics;
        }

        public void GetSystemPerformanceCounters(string machineName)
        {
            PerformanceCounter Counter;
            PerformanceMetrics objPerformanceMetrics = new PerformanceMetrics();
            try
            {
                Counter = new PerformanceCounter("Processor", @"% Processor Time", @"_Total", machineName);

                objPerformanceMetrics.CpuUtilization = Counter.RawValue;

                Counter = new PerformanceCounter("Memory", "Available MBytes","",machineName);

                objPerformanceMetrics.MemoryUtilization = Counter.NextValue();

                Counter = new PerformanceCounter("Memory", "Available MBytes");

                objPerformanceMetrics.MemoryUtilization = Counter.NextValue();

                Counter = new PerformanceCounter("[Network interface]", "Bytes total / sec","",machineName);

                objPerformanceMetrics.NetworkUtilization = Counter.NextValue();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }
            
        }

        public void GetWMIPerformanceCounters()
        {
            ManagementClass mc;
            ManagementObjectCollection moc;
            try
            {
                mc = new ManagementClass("win32_processor");
                moc = mc.GetInstances();
                double usedMemory;
                double totalMemory =0;
                double avialableMemory =0;

                PerformanceMetrics objPerformanceMetrics = new PerformanceMetrics();

                foreach (ManagementObject mo in moc)
                {
                    objPerformanceMetrics.CpuUtilization = Convert.ToInt64(mo.Properties["LoadPercentage"].Value.ToString());
                    
                }

                mc = new ManagementClass("win32_OperatingSystem");
                moc = mc.GetInstances();
                foreach (ManagementObject mo in moc)
                {
                    double a = Convert.ToDouble(mo.Properties["FreePhysicalMemory"].Value.ToString());
                    avialableMemory = Math.Round(a);

                }

                mc = new ManagementClass("Win32_ComputerSystem");
                moc = mc.GetInstances();
                foreach (ManagementObject mo in moc)
                {
                    totalMemory = Math.Round(Convert.ToDouble(mo.Properties["TotalPhysicalMemory"].Value.ToString()));
                    
                }
                usedMemory = (((totalMemory - avialableMemory)/1024)/1024)/1024;





            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }
        }
    }
}
