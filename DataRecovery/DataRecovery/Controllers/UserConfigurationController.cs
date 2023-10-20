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
    public class UserConfigurationController : Controller
    {
        public ActionResult GetUserConfig(string userName)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            return View(objBusinessManager.GetUserConfig(GetSystemIdByUserName()));
        }

        [HttpPost]
        public ActionResult Edit(ConfigsVm objconfigs)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            objBusinessManager.SaveUserConfig(objconfigs);

            return RedirectToAction("GetUserConfig");
        }

        public ActionResult Edit(int Id)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            return View(objBusinessManager.GetUserConfig(GetSystemIdByUserName()).Where(k => k.ConfigId == Id).FirstOrDefault());

        }

        public ActionResult Create()
        {
            BusinessManager objBusinessManager = new BusinessManager();

            ConfigsVm objconfigsVm = new ConfigsVm();
            objconfigsVm.SystemId = GetSystemIdByUserName();
            objconfigsVm.ConfigKeys = objBusinessManager.GetConfigKeys();



            return View(objconfigsVm);
        }

        [HttpPost]
        public ActionResult Create(ConfigsVm objconfigs)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            objBusinessManager.SaveUserConfig(objconfigs);

            return RedirectToAction("GetUserConfig");
        }


        string GetSystemIdByUserName()
        {
            string userName = ConfigurationManager.AppSettings["userName"].ToString();
            BusinessManager objBusinessManager = new BusinessManager();
            return objBusinessManager.GetSystemIdbyUserName(userName);
        }

    }
}
