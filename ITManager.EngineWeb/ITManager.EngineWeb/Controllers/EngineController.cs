using ITManager.EngineWeb.BusinessAccess;
using ITManager.EngineWeb.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ITManager.EngineWeb.Controllers
{
    public class EngineController : Controller
    {

        BusinessManager objBusinessManager = new BusinessManager();
        // GET: Engine
        public ActionResult Index()
        {
            return View(objBusinessManager.GetEngineUpdates());
        }

        public ActionResult LoadUpdates()
        {
            return View(objBusinessManager.LoadUpdates());
        }

        public ActionResult GetEngineReports()
        {
            return View(objBusinessManager.GetEngineReports());
        }

        [HttpPost]
        public ActionResult LoadUpdates(string EngineName, string EngineGroup,string EngineUpdate)
        {
            objBusinessManager.CreateUpdateRequest(EngineUpdate, EngineGroup, EngineName);
            return View(objBusinessManager.LoadUpdates());
        }
    }
}