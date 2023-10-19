using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.IMChatApp.Server
{
    public class ConnectionDetails
    {
        public string Server { get; set; }

        public int port { get; set; }

        public string UserName { get; set; }

        public string Password { get; set; }

        public bool Ssl { get; set; }

    }
}
