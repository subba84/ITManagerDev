using ITManager.Common;
using MailKit;
using MailKit.Net.Pop3;
using MailKit.Search;
using MailKit.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.MailUitlityLibrary
{
    public class POPManager
    {
        Pop3Client client;
        int count;
        public List<MailViewModel> readEmails(tblMailUtilityConfig objtblMailUtilityConfig)
        {
            List<MailViewModel> result = new List<MailViewModel>();

            try
            {


                using (client = new Pop3Client())
                {
                    if(objtblMailUtilityConfig.IsSSL)
                    {
                        client.Connect(objtblMailUtilityConfig.MailServer, objtblMailUtilityConfig.MailBoxPort, SecureSocketOptions.SslOnConnect);
                    }
                    else
                    {
                        client.Connect(objtblMailUtilityConfig.MailServer, objtblMailUtilityConfig.MailBoxPort, SecureSocketOptions.Auto);
                    }

                    

                    client.Authenticate(objtblMailUtilityConfig.MailBoxUserName, objtblMailUtilityConfig.MailBoxPassword);

                    count = client.Count;

                    Console.WriteLine(count + " Mails Found");

                    for (int i = 0; i < count; i++)
                    {
                        MailViewModel objtblMailMessage = new MailViewModel();
                        var message = client.GetMessage(i);

                        objtblMailMessage.MailProtocol = "POP";
                        objtblMailMessage.MailServerMessageId = message.MessageId;
                        objtblMailMessage.Body = message.Body.ToString();
                        objtblMailMessage.BodyType = message.Body.ContentType.ToString();
                        objtblMailMessage.CreatedBy = "Service";
                        objtblMailMessage.CreatedOn = DateTime.Now;
                        objtblMailMessage.FromAddress = message.From.ToString();
                        objtblMailMessage.IsActive = true;
                        objtblMailMessage.ReceivedOn = objtblMailMessage.ReceivedOn;
                        objtblMailMessage.UpdatedBy = "Service";
                        objtblMailMessage.UpdatedOn = DateTime.Now;

                        result.Add(objtblMailMessage);

                        // write the message to a file
                        message.WriteTo(string.Format("{0}.msg", i));


                    }

                    client.Disconnect(true);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message + ex.StackTrace);
            }
            return result;
        }

        public void DeleteEmails(tblMailUtilityConfig objtblMailUtilityConfig)
        {
            try
            {
                using (client = new Pop3Client(new ProtocolLogger("pop.log")))
                {
                    client.Connect(objtblMailUtilityConfig.MailServer, objtblMailUtilityConfig.MailBoxPort, SecureSocketOptions.SslOnConnect);

                    client.Authenticate(objtblMailUtilityConfig.MailBoxUserName, objtblMailUtilityConfig.MailBoxPassword);

                    count = client.Count;
                    for (int i = 0; i < count; i++)
                    {
                        // mark the message for deletion
                        client.DeleteMessage(i);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message + ex.StackTrace);
            }
        }


    }
}
