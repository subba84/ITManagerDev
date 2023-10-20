using DataRecovery.Common;
using DataRecovery.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.IO;
using System.Threading;

namespace InventoryManager
{
    public class Utilities
    {
        public async void SaveAgentUpdates(AgentUpdatesViewModel objAgentUpdatesViewModel)
        {
            string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\WebServiceUrl.txt";
            string baseurl;
            if (File.Exists(path))
            {
                baseurl = File.ReadAllText(path);

            }
            else
            {
                string domainalias = ConfigurationManager.AppSettings["DnsAlias"].ToString();
                baseurl = domainalias + System.Net.NetworkInformation.IPGlobalProperties.GetIPGlobalProperties().DomainName;
            }

            string SaveAgentUpdatesRequestWebServiceUrl = baseurl + ConfigurationManager.AppSettings["SaveAgentUpdatesRequestWebServiceUrl"].ToString();
            HttpManager objHttpManager = new HttpManager();
            objHttpManager.PostRequest<AgentUpdatesViewModel>(SaveAgentUpdatesRequestWebServiceUrl, objAgentUpdatesViewModel).Wait();
        }

        public void ProcessAgentUpdates(AgentUpdatesViewModel objAgentUpdatesViewModel)
        {
            EventWaitHandle waitHandle = new EventWaitHandle(true, EventResetMode.AutoReset, "SHARED_BY_ALL_PROCESSES");
            waitHandle.WaitOne();
            string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "LastScannedDate.txt";
            if (File.Exists(path))
            {
                FileInfo info = new System.IO.FileInfo(path);
                DateTime lastRan = Convert.ToDateTime(File.ReadAllText(path));
                var daysDifference = (DateTime.Now - lastRan).Days;
                File.Delete(path);
                using (StreamWriter w = File.AppendText(path))
                {
                    w.WriteLine(DateTime.Now.ToString());
                }
                
                SaveAgentUpdates(objAgentUpdatesViewModel);
                
            }
            else
            {
                using (StreamWriter w = File.AppendText(path))
                {
                    w.WriteLine(DateTime.Now.ToString());
                }
                SaveAgentUpdates(objAgentUpdatesViewModel);
            }

            waitHandle.Set();
        }
    }
}
