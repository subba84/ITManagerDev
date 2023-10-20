using DataRecoveryWebService.Filters;
using System.Web;
using System.Web.Mvc;

namespace DataRecoveryWebService
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
