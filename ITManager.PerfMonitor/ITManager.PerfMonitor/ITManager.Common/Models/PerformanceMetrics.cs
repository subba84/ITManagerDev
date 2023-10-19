using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.Common.Models
{
    public class PerformanceMetrics
    {
        public float CpuUtilization { get; set; }

        public float MemoryUtilization { get; set; }

        public float DiskUtilization { get; set; }

        public float NetworkUtilization { get; set; }
    }
}
