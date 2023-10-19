using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.IMChatApp.Common.Models
{
    public class ClientModel
    {
        private readonly string userName;
        private readonly Socket connection;
        public bool IsConnected { get; set; }
        public Socket Connection { get; set; }
        public string UserName { get; set; }

    }
}
