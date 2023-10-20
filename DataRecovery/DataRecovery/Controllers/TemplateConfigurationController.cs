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
    public class TemplateConfigurationController : Controller
    {

       

        public ActionResult GetTemplateConfig()
        {
            BusinessManager objBusinessManager = new BusinessManager();
            return View(objBusinessManager.GetTemplateConfig());

        }

        public ActionResult Edit(int Id)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            return View(objBusinessManager.GetTemplateConfig().Where(k=>k.ConfigId == Id).FirstOrDefault());

        }

        public ActionResult Create()
        {
            ConfigMasterVm objconfigmasterVm = new ConfigMasterVm();
            BusinessManager objBusinessManager = new BusinessManager();
            objconfigmasterVm.SystemId = GetSystemIdByUserName();
            objconfigmasterVm.ConfigMasterKeys = objBusinessManager.GetConfigMasterKeys();

            return View(objconfigmasterVm);
        }


        [HttpPost]
        public ActionResult Edit(ConfigMasterVm objconfigmasterVm)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            objBusinessManager.SaveTemplateConfig(objconfigmasterVm);

            return RedirectToAction("GetTemplateConfig");
        }

        [HttpPost]
        public ActionResult Create(ConfigMasterVm objconfigmasterVm)
        {
            BusinessManager objBusinessManager = new BusinessManager();
            objBusinessManager.SaveTemplateConfig(objconfigmasterVm);

            return RedirectToAction("GetTemplateConfig");
        }


        string GetSystemIdByUserName()
        {
            string userName = ConfigurationManager.AppSettings["userName"].ToString();
            BusinessManager objBusinessManager = new BusinessManager();
            return objBusinessManager.GetSystemIdbyUserName(userName);
        }


    }
}
