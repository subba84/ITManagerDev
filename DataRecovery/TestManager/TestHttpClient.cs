using DataRecovery.Common;
using DataRecovery.Models;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestManager
{
    class TestHttpClient
    {

        public async Task GetConfig()
        {
            string url = "http://localhost:82/GetConfig";

            HttpManager objmanager = new HttpManager();
            var data = await objmanager.GetRequest<List<tblConfigs>>(url);
            Console.WriteLine("");
        }

        public void UpdateBackup()
        {

        }

        public void UpdateHardWareInventory()
        {

        }

        public void UpdateSoftwareInventory()
        {

        }


    }
}
