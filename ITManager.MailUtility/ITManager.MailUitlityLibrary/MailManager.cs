using ITManager.Common;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.MailUitlityLibrary
{
    public class MailManager
    {
        string geturl;
        string posturl;
        string saveConversationsUrl;
        string getTicketUrl;
        string getnotificationmatrixurl;

        tblMailUtilityConfig tblMailUtilityIncomingConfig;
        tblMailUtilityConfig tblMailUtilityoutgoingConfig;

        List<MailViewModel> objmails;

        public void readEmails()
        {
            try
            {

                GetWebServiceUrls();

                List<tblMailUtilityConfig> obj = new List<tblMailUtilityConfig>();

                obj = HTTPClientWrapper<List<tblMailUtilityConfig>>.Get(geturl).Result;

                tblMailUtilityIncomingConfig = obj.Where(k => k.MailType == "Incoming" && k.IsActive == true).FirstOrDefault();

                tblMailUtilityoutgoingConfig = obj.Where(k => k.MailType == "Outgoing" && k.IsActive == true).FirstOrDefault();

                if (tblMailUtilityIncomingConfig.MailProtocol.ToLower() == "pop")
                {
                    POPManager objpopmanager = new POPManager();
                    objmails = objpopmanager.readEmails(tblMailUtilityIncomingConfig);
                    ProcessMails(objpopmanager);
                }
                else if (tblMailUtilityIncomingConfig.MailProtocol.ToLower() == "imap")
                {
                    IMAPManager objimapmanager = new IMAPManager();
                    objmails = objimapmanager.readEmails(tblMailUtilityIncomingConfig);
                    ProcessMails(objimapmanager);
                }
                else if (tblMailUtilityIncomingConfig.MailProtocol.ToLower() == "exchange")
                {
                    ExchangeManager objexchangeManager = new ExchangeManager();
                    objmails = objexchangeManager.readEmails(tblMailUtilityIncomingConfig);
                    ProcessMails(objexchangeManager);
                }
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }
        }

        private void ProcessMails(object instance)
        {
            try
            {
                string ticketExpression = ConfigurationManager.AppSettings["ticketExpression"].ToString();

                if (objmails != null && objmails.Count > 0)
                {
                    List<tblMailMessage> objnewmails = objmails.Select(c => new tblMailMessage() { Body = c.Body, CreatedBy = c.CreatedBy, CreatedOn = c.CreatedOn, BodyType = c.BodyType, FromAddress = c.FromAddress, MailMessageId = c.MailMessageId, IsActive = c.IsActive, MailProtocol = c.MailProtocol, MailServerMessageId = c.MailServerMessageId, ReceivedOn = c.ReceivedOn, Subject = c.Subject, UpdatedBy = c.UpdatedBy, UpdatedOn = c.UpdatedOn }).ToList();

                    if (objnewmails.Count > 0)
                    {

                        foreach (var item in objnewmails)
                        {
                            if (item.Subject!=null && item.Subject.Contains(ticketExpression))
                            {
                                
                            }
                            else
                            {
                                TicketModel objTicketModel = new TicketModel();
                                objTicketModel.Subject = item.Subject;
                                objTicketModel.Message = item.Body;
                                objTicketModel.UserId = item.FromAddress;
                                string ticketNumber = GenerateTicket(objTicketModel);
                                item.TicketNumber = ticketNumber;
                                NativeSMTPManager objsmtpManager = new NativeSMTPManager();
                                objsmtpManager.sendEmails(tblMailUtilityoutgoingConfig, item, ticketNumber, GenerateNotificationMatrix(),item.Body,item.Subject);

                                HTTPClientWrapper<List<tblMailMessage>>.PostRequest(posturl, objnewmails).Wait();
                            }

                        }

                        // save emails
                        

                        if (instance is IMAPManager)
                        {
                            ((IMAPManager)instance).DeleteEmails(tblMailUtilityIncomingConfig);
                        }
                        else if (instance is POPManager)
                        {
                            ((POPManager)instance).DeleteEmails(tblMailUtilityIncomingConfig);
                        }
                        else if (instance is ExchangeManager)
                        {
                            ((ExchangeManager)instance).DeleteEmails(tblMailUtilityIncomingConfig);
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }
        }

        public void GetWebServiceUrls()
        {
            try
            {
                string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\WebServiceUrl.txt";
                string baseurl;
                if (File.Exists(path))
                {
                    baseurl = File.ReadAllText(path);

                }
                else
                {
                    string domainalias = ConfigurationManager.AppSettings["DnsAlias"].ToString();
                    baseurl = domainalias + System.Net.NetworkInformation.IPGlobalProperties.GetIPGlobalProperties().DomainName;
                }
                geturl = baseurl + System.Configuration.ConfigurationManager.AppSettings["getURL"].ToString();
                posturl = baseurl + System.Configuration.ConfigurationManager.AppSettings["postURL"].ToString();
                saveConversationsUrl = baseurl + System.Configuration.ConfigurationManager.AppSettings["postconversationsURL"].ToString();
                getTicketUrl = baseurl + System.Configuration.ConfigurationManager.AppSettings["getTicket"].ToString();
                getnotificationmatrixurl = baseurl + System.Configuration.ConfigurationManager.AppSettings["getNotificationMatrix"].ToString();
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.Message + ex.StackTrace);
            }

        }

        public string GenerateTicket(TicketModel objTicketModel)
        {
            GetWebServiceUrls();

            string ticketNumber = HTTPClientWrapper<string>.PostRequest(getTicketUrl, objTicketModel).Result.ToString();

            return ticketNumber;

        }

        public List<string> GenerateNotificationMatrix()
        {
            GetWebServiceUrls();

            List<string> notificationMatrixValues = HTTPClientWrapper<List<string>>.Get(getnotificationmatrixurl).Result;

            return notificationMatrixValues;

        }

        public string Between(string STR, string FirstString, string LastString)
        {
            string FinalString;
            int Pos1 = STR.IndexOf(FirstString) + FirstString.Length;
            int Pos2 = STR.IndexOf(LastString);
            FinalString = STR.Substring(Pos1, Pos2 - Pos1);
            return FinalString;
        }
        public List<tblMailMessage> CheckExistingemails(List<tblMailMessage> objnewmails)
        {
            string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "Emails.json";
            List<string> emails = new List<string>();
            if (File.Exists(path))
            {
                List<string> existingMails = JsonConvert.DeserializeObject<List<string>>(File.ReadAllText(path));
                List<tblMailMessage> unreadMails = objnewmails.Where(k => !existingMails.Contains(k.MailServerMessageId)).ToList();
                return unreadMails;

            }
            else
            {
                objmails.ForEach(x => emails.Add(x.MailServerMessageId));
                string convertedJson = JsonConvert.SerializeObject(emails, Newtonsoft.Json.Formatting.Indented);
                File.WriteAllText(path, convertedJson);
                return objnewmails;
            }
        }

        public List<tblMailConversations> CheckExistingemailconversations(List<tblMailConversations> objreplymails)
        {
            string path = System.AppDomain.CurrentDomain.BaseDirectory + "\\" + "EmailConversations.json";
            List<string> emails = new List<string>();
            if (File.Exists(path))
            {
                List<string> existingMails = JsonConvert.DeserializeObject<List<string>>(File.ReadAllText(path));
                List<tblMailConversations> unreadMails = objreplymails.Where(k => !existingMails.Contains(k.MailServerMessageId)).ToList();
                return unreadMails;

            }
            else
            {
                objreplymails.ForEach(x => emails.Add(x.MailServerMessageId));
                string convertedJson = JsonConvert.SerializeObject(emails, Newtonsoft.Json.Formatting.Indented);
                File.WriteAllText(path, convertedJson);
                return objreplymails;
            }
        }

    }
}
