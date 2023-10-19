using ITManager.IMChatApp.Common;
using ITManager.IMChatApp.Common.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ITManager.IMChatApp.Server
{
    public class TCPManager
    {
        private ConnectionDetails connectionDetails = new ConnectionDetails();
        private TcpListener objlistener;
        private Thread listenerthread;
        public static Hashtable clientsList = new Hashtable();
        List<ClientModel> clients = new List<ClientModel>();
        bool isRunning;

        public TCPManager(ConnectionDetails ConnectionDetails)
        {
            connectionDetails = ConnectionDetails;
        }

        [Obsolete]
        public void StartListenerThread()
        {
            listenerthread = new Thread(StartListener);
            listenerthread.Start();
        }

        [Obsolete]
        public void StartListener()
        {
            Logger.LogInfo("Listener Starting");

            IPAddress ipAddress = Dns.Resolve(connectionDetails.Server).AddressList[0];
            objlistener = new TcpListener(ipAddress, connectionDetails.port);
            
            objlistener.Start();

            isRunning = true;

            while (isRunning)
            {
                if (!objlistener.Pending())
                {
                    Thread.Sleep(500);
                    continue;
                }

                var tcpClient = objlistener.AcceptTcpClient();
                tcpClient.ReceiveTimeout = 20000;

                var clientThread = new Thread(() => AddClient(tcpClient.Client));
                clientThread.Start();
            }
        }

        public void AddClient(Socket objSocket)
        {
            try
            {
                var bytes = new byte[1024];
                var data = objSocket.Receive(bytes);

                var clientName = Encoding.Unicode.GetString(bytes, 0, data);

                if (clients.Any(client => client.UserName == clientName))
                {
                    ChatData chatdata = new ChatData { Command = Command.NameExist, To = clientName };
                    return;
                }

                var newClient = new ClientModel(){ UserName = clientName, Connection = objSocket };
                clients.Add(newClient);

                var state = new PersistanceModel
                {
                    WorkSocket = objSocket
                };

                objSocket.BeginReceive(state.Buffer, 0, state.BUFFER_SIZE, 0,OnReceive, state);

            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }
        }

        public void OnReceive(IAsyncResult ar)
        {
            var state = ar.AsyncState as PersistanceModel;
            if (state == null)
                return;
            var handler = state.WorkSocket;
            if (!handler.Connected)
                return;
            try
            {
                var bytesRead = handler.EndReceive(ar);
                if (bytesRead <= 0)
                    return;

                ParseRequest(state, handler);
            }

            catch (Exception)
            {
               
               
            }
        }

        /// <summary>
        /// Parse client request
        /// </summary>
        /// <param name="state"></param>
        /// <param name="handlerSocket"></param>
        private void ParseRequest(CPersistanceModel state, Socket handlerSocket)
        {
            var data = new ChatData() { };
            if (data.Command == Command.Disconnect)
            {
                //DisconnectClient(state.WorkSocket);
                return;
            }
            var clientStr = clients.FirstOrDefault(cl => cl.UserName == data.To);
            if (clientStr == null)
                return;
            clientStr.Connection.Send(data.ToByte());
            handlerSocket.BeginReceive(state.Buffer, 0, ChatHelper.StateObject.BUFFER_SIZE, 0,
              OnReceive, state);
        }

        /// <summary>
        /// Method to stop TCP communication
        /// </summary>
        public void StopServer()
        {
            isRunning = false;
            if (objlistener == null)
                return;
            objlistener.Stop();
        }
    }
}
