using ITManager.Common;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Net.Mail;

namespace ITManager.MailUitlityLibrary
{
    public class NativeSMTPManager
    {
        public void sendEmails(tblMailUtilityConfig objtblMailUtilityConfig, tblMailMessage objmail, string ticketNumber, List<string> notificationMatrixValues, string description, string summary)
        {
            string subjectTemplate = ConfigurationManager.AppSettings["ticketSubjectTemplate"].ToString();
            System.Net.Mail.SmtpClient mailServer = new System.Net.Mail.SmtpClient(objtblMailUtilityConfig.MailServer, int.Parse(objtblMailUtilityConfig.MailBoxPort.ToString()));
            List<string> lines = File.ReadAllLines(System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "EmailTemplate" + "\\" + "EmailTemplate.html").ToList();
            List<string> finalLines = new List<string>();

            foreach (var item in lines)
            {
                if(item.Contains("{{"))
                {
                    string currentvalue = Between(item, "{{", "}}");

                    if (notificationMatrixValues.Contains(currentvalue))
                    {
                        finalLines.Add(item);
                    }
                }
                else
                {
                    finalLines.Add(item);
                }
            }

            string finalTemplate = string.Join("", finalLines.ToArray());

            mailServer.EnableSsl = objtblMailUtilityConfig.IsSSL;
            finalTemplate = finalTemplate.Replace("{{TicketNumber}}", ticketNumber);
            finalTemplate = finalTemplate.Replace("{{Ticket Description}}", description);
            finalTemplate = finalTemplate.Replace("{{Ticket Summary}}", summary);
            finalTemplate = finalTemplate.Replace("{{Ticket Status}}", "New");
            finalTemplate = finalTemplate.Replace("{{Submitted By}}", objmail.FromAddress);
            finalTemplate = finalTemplate.Replace("{{Ticket Owner}}", objmail.FromAddress);


            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage(objtblMailUtilityConfig.MailBoxMailId, objmail.FromAddress);
            msg.Subject = subjectTemplate.Replace("TicketNumber", ticketNumber.Replace("\"", string.Empty)).ToString();
            System.Net.NetworkCredential creds = new System.Net.NetworkCredential(objtblMailUtilityConfig.MailBoxMailId, objtblMailUtilityConfig.MailBoxPassword);
            mailServer.Credentials = creds;
            msg.IsBodyHtml = true;
            msg.Body = finalTemplate;

            System.Net.ServicePointManager.ServerCertificateValidationCallback = delegate (object s,
             System.Security.Cryptography.X509Certificates.X509Certificate certificate,
             System.Security.Cryptography.X509Certificates.X509Chain chain,
             System.Net.Security.SslPolicyErrors sslPolicyErrors)
            {
                return true;
            };
            mailServer.Send(msg);

        }

        public string Between(string STR, string FirstString, string LastString)
        {
            string FinalString;
            int Pos1 = STR.IndexOf(FirstString) + FirstString.Length;
            int Pos2 = STR.IndexOf(LastString);
            FinalString = STR.Substring(Pos1, Pos2 - Pos1);
            return FinalString;
        }
    }
}
