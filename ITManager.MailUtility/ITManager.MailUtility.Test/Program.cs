using ITManager.MailUitlityLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.MailUtility.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            MailManager objmanager = new MailManager();
            objmanager.readEmails();
            Console.ReadKey();
        }
    }
}
