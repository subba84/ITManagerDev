using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.IMChatApp.Common.Models
{
    public class ChatData
    {
        public string From { get; set; }
        public string To { get; set; }
        public string Message { get; set; }
        public string ClientAddress { get; set; }
        public byte[] File { get; set; }
        public Command Command { get; set; }
    }

    /// <summary>
    /// List of availlable commands
    /// </summary>
    public enum Command
    {
        Broadcast,
        Disconnect,
        SendMessage,
        SendFile,
        Call,
        AcceptCall,
        CancelCall,
        EndCall,
        Busy,
        NameExist,
        Null
    }
}
