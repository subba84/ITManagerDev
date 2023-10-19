using ITManager.EngineLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.EngineTestApp
{
    class Program
    {
        static void Main(string[] args)
        {
            EngineManager objEngineManager = new EngineManager();
            objEngineManager.SaveUpdates();
        }
    }
}
