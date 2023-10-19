using ITManager.Common;
using MailKit;
using MailKit.Net.Smtp;
using MailKit.Search;
using MailKit.Security;
using MimeKit;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace ITManager.MailUitlityLibrary
{
    public class SMTPManager
    {
        //public List<tblMailMessage> readEmails(tblMailUtilityConfig objtblMailUtilityConfig)
        //{
        //	List<tblMailMessage> result = new List<tblMailMessage>();

        //	using (var client = new SmtpClient(new ProtocolLogger("imap.log")))
        //	{
        //		client.Connect(objtblMailUtilityConfig.MailServer, objtblMailUtilityConfig.MailBoxPort, SecureSocketOptions.SslOnConnect);

        //		client.Authenticate(objtblMailUtilityConfig.MailBoxUserName, objtblMailUtilityConfig.MailBoxPassword);

        //		for (int i = 0; i < client.Count; i++)
        //		{
        //			tblMailMessage objtblMailMessage = new tblMailMessage();

        //			var message = client.(i);

        //			objtblMailMessage.MailProtocol = "SMTP";
        //			objtblMailMessage.MailServerMessageId = message.MessageId;
        //			objtblMailMessage.Body = message.Body.ToString();
        //			objtblMailMessage.BodyType = message.Body.ContentType.ToString();
        //			objtblMailMessage.CreatedBy = "Service";
        //			objtblMailMessage.CreatedOn = DateTime.Now;
        //			objtblMailMessage.FromAddress = message.From.ToString();
        //			objtblMailMessage.IsActive = true;
        //			objtblMailMessage.ReceivedOn = objtblMailMessage.ReceivedOn;
        //			objtblMailMessage.UpdatedBy = "Service";
        //			objtblMailMessage.UpdatedOn = DateTime.Now;

        //			result.Add(objtblMailMessage);

        //			// write the message to a file
        //		}

        //		client.Disconnect(true);
        //	}

        //	return result;
        //}

        public void sendEmails(tblMailUtilityConfig objtblMailUtilityConfig, tblMailMessage objmail, string ticketNumber)
        {
            string subjectTemplate = ConfigurationManager.AppSettings["ticketSubjectTemplate"].ToString();
            using (var client = new SmtpClient())
            {
                client.Connect(objtblMailUtilityConfig.MailServer, objtblMailUtilityConfig.MailBoxPort, SecureSocketOptions.Auto);

                client.Authenticate(objtblMailUtilityConfig.MailBoxMailId, objtblMailUtilityConfig.MailBoxPassword);

                string template = File.ReadAllText(System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "EmailTemplate" + "\\" + "EmailTemplate.html");

                template = template.Replace("{{TicketNumber}}", ticketNumber);

                MimeKit.MimeMessage msg = new MimeKit.MimeMessage();
                msg.From.Add(MailboxAddress.Parse(objtblMailUtilityConfig.MailBoxMailId));
                msg.To.Add(MailboxAddress.Parse(objmail.FromAddress));
                msg.Subject = subjectTemplate.Replace("TicketNumber", ticketNumber.Replace("\"", string.Empty)).ToString();
                var bodyBuilder = new BodyBuilder();
                bodyBuilder.HtmlBody = template;
                msg.Body = bodyBuilder.ToMessageBody();
                msg.InReplyTo = objmail.MailServerMessageId;
                client.Send(msg);
                client.Disconnect(true);
            }
        }
    }
}
