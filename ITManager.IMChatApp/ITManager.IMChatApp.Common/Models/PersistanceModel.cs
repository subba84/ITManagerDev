using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.IMChatApp.Common.Models
{
    public class PersistanceModel
    {
        // Client  socket.
        public Socket WorkSocket = null;
        // Size of receive buffer.
        public const int BUFFER_SIZE = 5242880;
        // Receive buffer.
        public byte[] Buffer = new byte[BUFFER_SIZE];
        // Received data string.
        public StringBuilder Sb = new StringBuilder();
    }
}
