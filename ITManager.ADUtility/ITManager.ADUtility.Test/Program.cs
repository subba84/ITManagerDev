using ITManager.ADUtilityLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.ADUtility.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            ADReader obj = new ADReader();
            obj.GetADGroups();
        }
    }
}
