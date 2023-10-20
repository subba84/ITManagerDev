using DataRecovery.Business;
using DataRecovery.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DataRecovery.Controllers
{
    public class InventoryController : Controller
    {
        public ActionResult GetTblHardwareInventories(string userName)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            return View(objBusinessManager.GetTblHardwareInventories(GetSystemIdByUserName()));

        }

        public ActionResult GetTblSoftwareInventories(string userName)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            return View(objBusinessManager.GetTblSoftwareInventories(GetSystemIdByUserName()));
        }

        string GetSystemIdByUserName()
        {
            string userName = ConfigurationManager.AppSettings["userName"].ToString();
            BusinessManager objBusinessManager = new BusinessManager();
            return objBusinessManager.GetSystemIdbyUserName(userName);
        }
    }
}
