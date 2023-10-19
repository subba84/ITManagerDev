using ITManager.Common;
using MailKit;
using MailKit.Net.Imap;
using MailKit.Net.Smtp;
using MailKit.Search;
using MailKit.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MimeKit;

namespace ITManager.MailUitlityLibrary
{
    public class IMAPManager
    {
        IList<UniqueId> uids;
        ImapClient client;

        public List<MailViewModel> readEmails(tblMailUtilityConfig objtblMailUtilityConfig)
        {
            List<MailViewModel> result = new List<MailViewModel>();
            try
            {

                using (client = new ImapClient())
                {
                    client.Connect(objtblMailUtilityConfig.MailServer, objtblMailUtilityConfig.MailBoxPort, SecureSocketOptions.SslOnConnect);
                    client.AuthenticationMechanisms.Remove("XOAUTH2");
                    client.AuthenticationMechanisms.Remove("NTLM");
                    client.Authenticate(objtblMailUtilityConfig.MailBoxMailId, objtblMailUtilityConfig.MailBoxPassword);

                    client.Inbox.Open(FolderAccess.ReadWrite);

                    //var summaries = client.Inbox.Fetch(0, -1, MessageSummaryItems.UniqueId | MessageSummaryItems.InternalDate | MessageSummaryItems.Envelope | MessageSummaryItems.Body);
                    //var orderBy = new OrderBy[] { OrderBy.Date };
                    //var threads = MessageThreader.Thread(summaries, ThreadingAlgorithm.OrderedSubject, orderBy);


                    uids = client.Inbox.Search(SearchQuery.All);

                    Console.WriteLine(uids.Count + " Mails Found");

                    foreach (var uid in uids)
                    {
                        MailViewModel objtblMailMessage = new MailViewModel();
                        var message = client.Inbox.GetMessage(uid);


                        objtblMailMessage.IsAutoReply = message.Headers.ToList().Where(k => k.Field.ToString() == "X-Autoreply" && k.Value.ToString() == "yes").Any() ? true : false;

                        if (!objtblMailMessage.IsAutoReply)
                        {
                            objtblMailMessage.MailProtocol = "IMAP";
                            objtblMailMessage.MailServerMessageId = message.MessageId;
                            objtblMailMessage.Subject = message.Subject;
                            objtblMailMessage.Body = message.TextBody;
                            objtblMailMessage.BodyType = message.Body.ContentType.ToString();
                            objtblMailMessage.CreatedBy = "Service";
                            objtblMailMessage.CreatedOn = DateTime.Now;
                            objtblMailMessage.FromAddress = message.From.ToString();
                            objtblMailMessage.IsActive = true;
                            objtblMailMessage.ReceivedOn = objtblMailMessage.ReceivedOn;
                            objtblMailMessage.UpdatedBy = "Service";
                            objtblMailMessage.UpdatedOn = DateTime.Now;
                            objtblMailMessage.InReplyTo = message.InReplyTo;
                            objtblMailMessage.CC = message.Cc.ToString();
                            objtblMailMessage.Bcc = message.Bcc.ToString();
                            message.Headers.Add(MimeKit.HeaderId.Comments, "");

                            result.Add(objtblMailMessage);
                        }

                        // write the message to a file
                        //message.WriteTo(string.Format("{0}.eml", uid));

                    }
                    client.Disconnect(true);
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message + ex.StackTrace);
                Logger.LogError(ex.Message + ex.StackTrace);
            }

            return result;
        }

        public void DeleteEmails(tblMailUtilityConfig objtblMailUtilityConfig)
        {
            try
            {

                using (client = new ImapClient(new ProtocolLogger("imap.log")))
                {
                    client.Connect(objtblMailUtilityConfig.MailServer, objtblMailUtilityConfig.MailBoxPort, SecureSocketOptions.SslOnConnect);

                    client.Authenticate(objtblMailUtilityConfig.MailBoxMailId, objtblMailUtilityConfig.MailBoxPassword);

                    client.Inbox.Open(FolderAccess.ReadWrite);

                    uids = client.Inbox.Search(SearchQuery.All);

                    foreach (var uid in uids)
                    {
                        client.Inbox.AddFlags(uid, MessageFlags.Deleted, true);
                    }

                    client.Disconnect(true);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message + ex.StackTrace);
                Logger.LogError(ex.Message + ex.StackTrace);
            }
        }
    }
}
