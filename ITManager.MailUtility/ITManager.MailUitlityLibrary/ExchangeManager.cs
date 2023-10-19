using ITManager.Common;
using Microsoft.Exchange.WebServices.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.MailUitlityLibrary
{
    public class ExchangeManager
    {
        public List<MailViewModel> readEmails(tblMailUtilityConfig objtblMailUtilityConfig)
        {
            ExchangeService _service = new ExchangeService(ExchangeVersion.Exchange2013);
            List<MailViewModel> result = new List<MailViewModel>();
            try
            {
                _service.Credentials = new WebCredentials(objtblMailUtilityConfig.MailBoxUserName, objtblMailUtilityConfig.MailBoxPassword);
            }
            catch (Exception ex)
            {
                Logger.LogError("Cannot connect to exchange" + ex.Message + ex.StackTrace);
            }

            _service.Url = new Uri("https://" + objtblMailUtilityConfig.MailServer + "/EWS/Exchange.asmx");

            try
            {
                var findResults = _service.FindItems(WellKnownFolderName.Inbox, new ItemView(100000));
                Console.Write(findResults.TotalCount + "Emails Found");
                if (findResults.TotalCount > 0)
                {
                    _service.LoadPropertiesForItems(findResults, new PropertySet(ItemSchema.Body));
                    foreach (EmailMessage email in findResults)
                    {
                        var list = new List<EmailMessage> { email };
                        PropertySet properties = new PropertySet(BasePropertySet.FirstClassProperties);
                        _service.LoadPropertiesForItems(list, properties);

                        MailViewModel objMailViewModel = new MailViewModel();

                        objMailViewModel.Bcc = email.BccRecipients.Count > 0 ? email.BccRecipients.FirstOrDefault().Address : string.Empty;

                        objMailViewModel.Body = email.Body != null ? email.Body.Text : string.Empty;
                        objMailViewModel.BodyType = email.Body != null ? email.Body.BodyType.ToString() : string.Empty;
                        objMailViewModel.CC = email.CcRecipients.Count > 0 ? email.CcRecipients.FirstOrDefault().Address : string.Empty;
                        objMailViewModel.CreatedBy = "Mail Service";
                        objMailViewModel.CreatedOn = DateTime.Now;
                        objMailViewModel.FromAddress = email.Sender.Address;
                        objMailViewModel.InReplyTo = email.ReplyTo.Count > 0 ? email.ReplyTo.FirstOrDefault().Address : string.Empty;
                        objMailViewModel.IsActive = true;
                        objMailViewModel.MailServerMessageId = email.Id.UniqueId.ToString();
                        objMailViewModel.MailProtocol = "Exchange";
                        objMailViewModel.ReceivedOn = email.DateTimeReceived;
                        objMailViewModel.Subject = email.Subject;
                        result.Add(objMailViewModel);
                    }
                }
                else
                {
                    Logger.LogError("No New Emails Found");
                    Console.WriteLine("No New Emails Found");
                }

            }
            catch (Exception ex)
            {
                Logger.LogError("Cannot connect to exchange" + ex.Message + ex.StackTrace);
                Console.WriteLine("Cannot connect to exchange" + ex.Message + ex.StackTrace);
            }
            return result;
        }

        public void DeleteEmails(tblMailUtilityConfig objtblMailUtilityConfig)
        {
            ExchangeService _service = new ExchangeService(ExchangeVersion.Exchange2013_SP1);
            List<MailViewModel> result = new List<MailViewModel>();
            try
            {
                _service.Credentials = new WebCredentials(objtblMailUtilityConfig.MailBoxUserName, objtblMailUtilityConfig.MailBoxPassword);


                _service.Url = new Uri("https://" + objtblMailUtilityConfig.MailServer + "/EWS/Exchange.asmx");

                foreach (EmailMessage email in _service.FindItems(WellKnownFolderName.Inbox, new ItemView(100000)))
                {
                    email.Delete(DeleteMode.HardDelete);
                }

            }
            catch (Exception ex)
            {
                Logger.LogError("Cannot connect to exchange" + ex.Message + ex.StackTrace);
            }
        }
    }
}
