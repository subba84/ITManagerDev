using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace PerformanceManager
{
    public class PerformanceMonitor
    {
       

        public void ReadPerformanceStats()
        {
            PerformanceCounter cpuUsage;
            PerformanceCounter ramUsage;
            PerformanceCounter diskUsage;

            ulong totalRAM;

            cpuUsage = new PerformanceCounter("Processor", "% Processor Time", "_Total", "MyComputer");
            cpuUsage.NextValue();
            System.Threading.Thread.Sleep(1000);
            int cpupercentage = (int)cpuUsage.NextValue();

            ramUsage = new PerformanceCounter();

            // Setting it up to fetch Memory Usage
            ramUsage.CategoryName = "Memory";
            ramUsage.CounterName = "Available Bytes";

            // Fetching the first two reads !! Same reason as above !!
            ramUsage.NextValue();

            System.Threading.Thread.Sleep(1000);

            ramUsage.NextValue();

            //totalRAM = Microsoft.VisualBasic.Devices.ComputerInfo().TotalPhysicalMemory;

           // int ramPercentage = (int)(100 - ramUsage.NextValue() / totalRAM * 100);

            diskUsage = new PerformanceCounter();

            diskUsage.CategoryName = "PhysicalDisk";
            diskUsage.CounterName = "Disk Reads/sec";
            diskUsage.InstanceName = "_Total";

            int currentDiskReads = (int)diskUsage.NextValue();

        }

        public void UpdatePerformanceStatstoDB()
        {

        }

    }
}
