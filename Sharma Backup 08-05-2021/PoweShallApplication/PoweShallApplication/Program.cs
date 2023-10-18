using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text;
using System.Management.Automation;
using System.Collections.ObjectModel;
using System.Management.Automation.Runspaces;
using static PoweShallApplication.Entity;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace PoweShallApplication
{
    class Program
    {
        static void Main(string[] args)
        {
           // RunScript("Get-Process");
           RunScript("Get-ADUser -Properties * -Filter *");
           RunScriptADComputer("Get-ADComputer -Properties * -Filter *");

        }
        private static string RunScript(string scriptText)
        {
            // create Powershell runspace
            Runspace runspace = RunspaceFactory.CreateRunspace();
            // open it
            runspace.Open();
            // create a pipeline and feed it the script text
            Pipeline pipeline = runspace.CreatePipeline();
            pipeline.Commands.AddScript(scriptText);
            // add an extra command to transform the script output objects into nicely formatted strings
            // remove this line to get the actual objects that the script returns. For example, the script
            // "Get-Process" returns a collection of System.Diagnostics.Process instances.
           // pipeline.Commands.Add("Out-String");
            // execute the script
            Collection<PSObject> results = pipeline.Invoke();
            // close the runspace
            runspace.Close();
            // convert the script result into a single string
            List<AdUser> adUserList = new List<AdUser>();
            foreach (PSObject obj in results)
            {
                AdUser adUser = new AdUser();
                adUser.AccountExpirationDate = (obj.Properties["AccountExpirationDate"].Value == null ? "" : obj.Properties["AccountExpirationDate"].Value.ToString()); 
                adUser.accountExpires = (obj.Properties["accountExpires"].Value == null ? "" : obj.Properties["accountExpires"].Value.ToString());
                adUser.AccountLockoutTime = (obj.Properties["AccountLockoutTime"].Value == null ? "" : obj.Properties["AccountLockoutTime"].Value.ToString()); 
                adUser.AccountNotDelegated = (obj.Properties["AccountNotDelegated"].Value == null ? "" : obj.Properties["AccountNotDelegated"].Value.ToString()); 
                adUser.adminCount = (obj.Properties["adminCount"].Value == null ? "" : obj.Properties["adminCount"].Value.ToString());  
                adUser.AllowReversiblePasswordEncryption = (obj.Properties["AllowReversiblePasswordEncryption"].Value == null ? "" : obj.Properties["AllowReversiblePasswordEncryption"].Value.ToString()); 
                adUser.AuthenticationPolicy = (obj.Properties["AuthenticationPolicy"].Value == null ? "" : obj.Properties["AuthenticationPolicy"].Value.ToString()); 
                adUser.AuthenticationPolicySilo = (obj.Properties["AuthenticationPolicySilo"].Value == null ? "" : obj.Properties["AuthenticationPolicySilo"].Value.ToString());  
                adUser.BadLogonCount = (obj.Properties["BadLogonCount"].Value == null ? "" : obj.Properties["BadLogonCount"].Value.ToString());  
                adUser.badPasswordTime = (obj.Properties["badPasswordTime"].Value == null ? "" : obj.Properties["badPasswordTime"].Value.ToString());  
                adUser.badPwdCount = (obj.Properties["badPwdCount"].Value == null ? "" : obj.Properties["badPwdCount"].Value.ToString());  
                adUser.CannotChangePassword = (obj.Properties["CannotChangePassword"].Value == null ? "" : obj.Properties["CannotChangePassword"].Value.ToString()); 
                adUser.CanonicalName = (obj.Properties["CanonicalName"].Value == null ? "" : obj.Properties["CanonicalName"].Value.ToString()); 
                adUser.Certificates = (obj.Properties["Certificates"].Value == null ? "" : obj.Properties["Certificates"].Value.ToString()); 
                adUser.City = (obj.Properties["City"].Value == null ? "" : obj.Properties["City"].Value.ToString());  
                adUser.CN = (obj.Properties["CN"].Value == null ? "" : obj.Properties["CN"].Value.ToString());  
                adUser.codePage = (obj.Properties["codePage"].Value == null ? "" : obj.Properties["codePage"].Value.ToString());  
                adUser.Company = (obj.Properties["Company"].Value == null ? "" : obj.Properties["Company"].Value.ToString()); 
                adUser.CompoundIdentitySupported = (obj.Properties["CompoundIdentitySupported"].Value == null ? "" : obj.Properties["CompoundIdentitySupported"].Value.ToString());  
                adUser.Country = (obj.Properties["Country"].Value == null ? "" : obj.Properties["Country"].Value.ToString());  
                adUser.countryCode = (obj.Properties["countryCode"].Value == null ? "" : obj.Properties["countryCode"].Value.ToString()); 
                adUser.Created = (obj.Properties["Created"].Value == null ? "" : obj.Properties["Created"].Value.ToString()); 
                adUser.createTimeStamp = (obj.Properties["createTimeStamp"].Value == null ? "" : obj.Properties["createTimeStamp"].Value.ToString());
                adUser.Deleted = (obj.Properties["Deleted"].Value == null ? "" : obj.Properties["Deleted"].Value.ToString());  
                adUser.Department = (obj.Properties["Department"].Value == null ? "" : obj.Properties["Department"].Value.ToString());  
                adUser.Description = (obj.Properties["Description"].Value == null ? "" : obj.Properties["Description"].Value.ToString());  
                adUser.DisplayName = (obj.Properties["DisplayName"].Value == null ? "" : obj.Properties["DisplayName"].Value.ToString());  
                adUser.DistinguishedName = (obj.Properties["DistinguishedName"].Value == null ? "" : obj.Properties["DistinguishedName"].Value.ToString()); 
                adUser.Division = (obj.Properties["Division"].Value == null ? "" : obj.Properties["Division"].Value.ToString()); 
                adUser.DoesNotRequirePreAuth = (obj.Properties["DoesNotRequirePreAuth"].Value == null ? "" : obj.Properties["DoesNotRequirePreAuth"].Value.ToString()); 
                adUser.dSCorePropagationData = (obj.Properties["dSCorePropagationData"].Value == null ? "" : obj.Properties["dSCorePropagationData"].Value.ToString()); 
                adUser.EmailAddress = (obj.Properties["EmailAddress"].Value == null ? "" : obj.Properties["EmailAddress"].Value.ToString()); 
                adUser.EmployeeID = (obj.Properties["EmployeeID"].Value == null ? "" : obj.Properties["EmployeeID"].Value.ToString());  
                adUser.EmployeeNumber = (obj.Properties["EmployeeNumber"].Value == null ? "" : obj.Properties["EmployeeNumber"].Value.ToString());  
                adUser.Enabled = (obj.Properties["Enabled"].Value == null ? "" : obj.Properties["Enabled"].Value.ToString()); 
                adUser.Fax = (obj.Properties["Fax"].Value == null ? "" : obj.Properties["Fax"].Value.ToString());  
                adUser.GivenName = (obj.Properties["GivenName"].Value == null ? "" : obj.Properties["GivenName"].Value.ToString());  
                adUser.HomeDirectory = (obj.Properties["HomeDirectory"].Value == null ? "" : obj.Properties["HomeDirectory"].Value.ToString()); 
                adUser.HomedirRequired = (obj.Properties["HomedirRequired"].Value == null ? "" : obj.Properties["HomedirRequired"].Value.ToString());  
                adUser.HomeDrive = (obj.Properties["HomeDrive"].Value == null ? "" : obj.Properties["HomeDrive"].Value.ToString());  
                adUser.HomePage = (obj.Properties["HomePage"].Value == null ? "" : obj.Properties["HomePage"].Value.ToString());  
                adUser.HomePhone = (obj.Properties["HomePhone"].Value == null ? "" : obj.Properties["HomePhone"].Value.ToString()); 
                adUser.Initials = (obj.Properties["Initials"].Value == null ? "" : obj.Properties["Initials"].Value.ToString());  
                adUser.instanceType = (obj.Properties["instanceType"].Value == null ? "" : obj.Properties["instanceType"].Value.ToString()); 
                adUser.isCriticalSystemObject = (obj.Properties["isCriticalSystemObject"].Value == null ? "" : obj.Properties["isCriticalSystemObject"].Value.ToString()); 
                adUser.isDeleted = (obj.Properties["isDeleted"].Value == null ? "" : obj.Properties["isDeleted"].Value.ToString());  
                adUser.KerberosEncryptionType = (obj.Properties["KerberosEncryptionType"].Value == null ? "" : obj.Properties["KerberosEncryptionType"].Value.ToString()); 
                adUser.LastBadPasswordAttempt = (obj.Properties["LastBadPasswordAttempt"].Value == null ? "" : obj.Properties["LastBadPasswordAttempt"].Value.ToString()); 
                adUser.LastKnownParent = (obj.Properties["LastKnownParent"].Value == null ? "" : obj.Properties["LastKnownParent"].Value.ToString()); 
                adUser.lastLogoff = (obj.Properties["lastLogoff"].Value == null ? "" : obj.Properties["lastLogoff"].Value.ToString()); 
                adUser.lastLogon = (obj.Properties["lastLogon"].Value == null ? "" : obj.Properties["lastLogon"].Value.ToString());  
                adUser.LastLogonDate = (obj.Properties["LastLogonDate"].Value == null ? "" : obj.Properties["LastLogonDate"].Value.ToString());  
                adUser.lastLogonTimestamp = (obj.Properties["lastLogonTimestamp"].Value == null ? "" : obj.Properties["lastLogonTimestamp"].Value.ToString());  
                adUser.LockedOut = (obj.Properties["LockedOut"].Value == null ? "" : obj.Properties["LockedOut"].Value.ToString());  
                adUser.lockoutTime = (obj.Properties["lockoutTime"].Value == null ? "" : obj.Properties["lockoutTime"].Value.ToString()); 
                adUser.logonCount = (obj.Properties["logonCount"].Value == null ? "" : obj.Properties["logonCount"].Value.ToString());  
                adUser.logonHours = (obj.Properties["logonHours"].Value == null ? "" : obj.Properties["logonHours"].Value.ToString()); 
                adUser.LogonWorkstations = (obj.Properties["LogonWorkstations"].Value == null ? "" : obj.Properties["LogonWorkstations"].Value.ToString());  
                adUser.Manager = (obj.Properties["Manager"].Value == null ? "" : obj.Properties["Manager"].Value.ToString()); 
                adUser.MemberOf = (obj.Properties["MemberOf"].Value == null ? "" : obj.Properties["MemberOf"].Value.ToString()); 
                adUser.MNSLogonAccount = (obj.Properties["MNSLogonAccount"].Value == null ? "" : obj.Properties["MNSLogonAccount"].Value.ToString()); 
                adUser.MobilePhone = (obj.Properties["MobilePhone"].Value == null ? "" : obj.Properties["MobilePhone"].Value.ToString()); 
                adUser.Modified = (obj.Properties["Modified"].Value == null ? "" : obj.Properties["Modified"].Value.ToString()); 
                adUser.modifyTimeStamp = (obj.Properties["modifyTimeStamp"].Value == null ? "" : obj.Properties["modifyTimeStamp"].Value.ToString());  
                adUser.msDSSupportedEncryptionTypes = (obj.Properties["msDSSupportedEncryptionTypes"].Value == null ? "" : obj.Properties["msDSSupportedEncryptionTypes"].Value.ToString()); 
                adUser.msDSUserAccountControlComputed = (obj.Properties["msDSUserAccountControlComputed"].Value == null ? "" : obj.Properties["msDSUserAccountControlComputed"].Value.ToString()); 
                adUser.Name = (obj.Properties["Name"].Value == null ? "" : obj.Properties["Name"].Value.ToString());  
                adUser.nTSecurityDescriptor = (obj.Properties["nTSecurityDescriptor"].Value == null ? "" : obj.Properties["nTSecurityDescriptor"].Value.ToString());  
                adUser.ObjectCategory = (obj.Properties["ObjectCategory"].Value == null ? "" : obj.Properties["ObjectCategory"].Value.ToString());  
                adUser.ObjectClass = (obj.Properties["ObjectClass"].Value == null ? "" : obj.Properties["ObjectClass"].Value.ToString());  
                adUser.ObjectGUID = (obj.Properties["ObjectGUID"].Value == null ? "" : obj.Properties["ObjectGUID"].Value.ToString()); 
                adUser.objectSid = (obj.Properties["objectSid"].Value == null ? "" : obj.Properties["objectSid"].Value.ToString());  
                adUser.Office = (obj.Properties["Office"].Value == null ? "" : obj.Properties["Office"].Value.ToString());  
                adUser.OfficePhone = (obj.Properties["OfficePhone"].Value == null ? "" : obj.Properties["OfficePhone"].Value.ToString());
                adUser.Organization = (obj.Properties["Organization"].Value == null ? "" : obj.Properties["Organization"].Value.ToString());  
                adUser.OtherName = (obj.Properties["OtherName"].Value == null ? "" : obj.Properties["OtherName"].Value.ToString());  
                adUser.PasswordExpired = (obj.Properties["PasswordExpired"].Value == null ? "" : obj.Properties["PasswordExpired"].Value.ToString()); 
                adUser.PasswordLastSet = (obj.Properties["PasswordLastSet"].Value == null ? "" : obj.Properties["PasswordLastSet"].Value.ToString()); 
                adUser.PasswordNeverExpires = (obj.Properties["PasswordNeverExpires"].Value == null ? "" : obj.Properties["PasswordNeverExpires"].Value.ToString()); 
                adUser.PasswordNotRequired = (obj.Properties["PasswordNotRequired"].Value == null ? "" : obj.Properties["PasswordNotRequired"].Value.ToString()); 
                adUser.POBox = (obj.Properties["POBox"].Value == null ? "" : obj.Properties["POBox"].Value.ToString()); 
                adUser.PostalCode = (obj.Properties["PostalCode"].Value == null ? "" : obj.Properties["PostalCode"].Value.ToString());  
                adUser.PrimaryGroup = (obj.Properties["PrimaryGroup"].Value == null ? "" : obj.Properties["PrimaryGroup"].Value.ToString()); 
                adUser.primaryGroupID = (obj.Properties["primaryGroupID"].Value == null ? "" : obj.Properties["primaryGroupID"].Value.ToString()); 
                adUser.PrincipalsAllowedToDelegateToAccount = (obj.Properties["PrincipalsAllowedToDelegateToAccount"].Value == null ? "" : obj.Properties["PrincipalsAllowedToDelegateToAccount"].Value.ToString()); 
                adUser.ProfilePath = (obj.Properties["ProfilePath"].Value == null ? "" : obj.Properties["ProfilePath"].Value.ToString());  
                adUser.ProtectedFromAccidentalDeletion = (obj.Properties["ProtectedFromAccidentalDeletion"].Value == null ? "" : obj.Properties["ProtectedFromAccidentalDeletion"].Value.ToString());  
                adUser.pwdLastSet = (obj.Properties["pwdLastSet"].Value == null ? "" : obj.Properties["pwdLastSet"].Value.ToString());  
                adUser.SamAccountName = (obj.Properties["SamAccountName"].Value == null ? "" : obj.Properties["SamAccountName"].Value.ToString());  
                adUser.sAMAccountType = (obj.Properties["sAMAccountType"].Value == null ? "" : obj.Properties["sAMAccountType"].Value.ToString());  
                adUser.ScriptPath = (obj.Properties["ScriptPath"].Value == null ? "" : obj.Properties["ScriptPath"].Value.ToString());  
                adUser.sDRightsEffective = (obj.Properties["sDRightsEffective"].Value == null ? "" : obj.Properties["sDRightsEffective"].Value.ToString());  
                adUser.ServicePrincipalNames = (obj.Properties["ServicePrincipalNames"].Value == null ? "" : obj.Properties["ServicePrincipalNames"].Value.ToString());  
                adUser.SID = (obj.Properties["SID"].Value == null ? "" : obj.Properties["SID"].Value.ToString());  
                adUser.SIDHistory = (obj.Properties["SIDHistory"].Value == null ? "" : obj.Properties["SIDHistory"].Value.ToString());  
                adUser.SmartcardLogonRequired = (obj.Properties["SmartcardLogonRequired"].Value == null ? "" : obj.Properties["SmartcardLogonRequired"].Value.ToString());  
                adUser.State = (obj.Properties["State"].Value == null ? "" : obj.Properties["State"].Value.ToString());  
                adUser.StreetAddress = (obj.Properties["StreetAddress"].Value == null ? "" : obj.Properties["StreetAddress"].Value.ToString()); 
                adUser.Surname = (obj.Properties["Surname"].Value == null ? "" : obj.Properties["Surname"].Value.ToString()); 
                adUser.Title = (obj.Properties["Title"].Value == null ? "" : obj.Properties["Title"].Value.ToString()); 
                adUser.TrustedForDelegation = (obj.Properties["TrustedForDelegation"].Value == null ? "" : obj.Properties["TrustedForDelegation"].Value.ToString()); 
                adUser.TrustedToAuthForDelegation = (obj.Properties["TrustedToAuthForDelegation"].Value == null ? "" : obj.Properties["TrustedToAuthForDelegation"].Value.ToString());  
                adUser.UseDESKeyOnly = (obj.Properties["UseDESKeyOnly"].Value == null ? "" : obj.Properties["UseDESKeyOnly"].Value.ToString());  
                adUser.userAccountControl = (obj.Properties["userAccountControl"].Value == null ? "" : obj.Properties["userAccountControl"].Value.ToString());  
                adUser.userCertificate = (obj.Properties["userCertificate"].Value == null ? "" : obj.Properties["userCertificate"].Value.ToString());  
                adUser.UserPrincipalName = (obj.Properties["UserPrincipalName"].Value == null ? "" : obj.Properties["UserPrincipalName"].Value.ToString());  
                adUser.uSNChanged = (obj.Properties["uSNChanged"].Value == null ? "" : obj.Properties["uSNChanged"].Value.ToString());  
                adUser.uSNCreated = (obj.Properties["uSNCreated"].Value == null ? "" : obj.Properties["uSNCreated"].Value.ToString()); 
                adUser.whenChanged = (obj.Properties["whenChanged"].Value == null ? "" : obj.Properties["whenChanged"].Value.ToString()); 
                adUser.whenCreated = (obj.Properties["whenCreated"].Value == null ? "" : obj.Properties["whenCreated"].Value.ToString()); 


                adUserList.Add(adUser);
            }
            InsertADUser(adUserList);
            return "";// adUserList;
        }

        private static string RunScriptADComputer(string scriptText)
        {
            // create Powershell runspace
            Runspace runspace = RunspaceFactory.CreateRunspace();
            // open it
            runspace.Open();
            // create a pipeline and feed it the script text
            Pipeline pipeline = runspace.CreatePipeline();
            pipeline.Commands.AddScript(scriptText);
            // add an extra command to transform the script output objects into nicely formatted strings
            // remove this line to get the actual objects that the script returns. For example, the script
            // "Get-Process" returns a collection of System.Diagnostics.Process instances.
            // pipeline.Commands.Add("Out-String");
            // execute the script
            Collection<PSObject> results = pipeline.Invoke();
            // close the runspace
            runspace.Close();
            // convert the script result into a single string
            List<ADComputer> aDComputerList = new List<ADComputer>();
            foreach (PSObject obj in results)
            {
                ADComputer aDComputer = new ADComputer();
                aDComputer.AccountExpirationDate = (obj.Properties["AccountExpirationDate"].Value ==null ? "": obj.Properties["AccountExpirationDate"].Value.ToString());
                aDComputer.accountExpires = (obj.Properties["accountExpires"].Value == null ? "" : obj.Properties["accountExpires"].Value.ToString());  
                aDComputer.AccountLockoutTime = (obj.Properties["AccountLockoutTime"].Value == null ? "" : obj.Properties["AccountLockoutTime"].Value.ToString()); 
                aDComputer.AccountNotDelegated = (obj.Properties["AccountNotDelegated"].Value == null ? "" : obj.Properties["AccountNotDelegated"].Value.ToString()); 
                aDComputer.AllowReversiblePasswordEncryption = (obj.Properties["AllowReversiblePasswordEncryption"].Value == null ? "" : obj.Properties["AllowReversiblePasswordEncryption"].Value.ToString()); 
                aDComputer.AuthenticationPolicy = (obj.Properties["AuthenticationPolicy"].Value == null ? "" : obj.Properties["AuthenticationPolicy"].Value.ToString()); 
                aDComputer.AuthenticationPolicySilo = (obj.Properties["AuthenticationPolicySilo"].Value == null ? "" : obj.Properties["AuthenticationPolicySilo"].Value.ToString());  
                aDComputer.BadLogonCount = (obj.Properties["BadLogonCount"].Value == null ? "" : obj.Properties["BadLogonCount"].Value.ToString());  
                aDComputer.badPasswordTime = (obj.Properties["badPasswordTime"].Value == null ? "" : obj.Properties["badPasswordTime"].Value.ToString()); 
                aDComputer.badPwdCount = (obj.Properties["badPwdCount"].Value == null ? "" : obj.Properties["badPwdCount"].Value.ToString());  
                aDComputer.CannotChangePassword = (obj.Properties["CannotChangePassword"].Value == null ? "" : obj.Properties["CannotChangePassword"].Value.ToString());  
                aDComputer.CanonicalName = (obj.Properties["CanonicalName"].Value == null ? "" : obj.Properties["CanonicalName"].Value.ToString());  
                aDComputer.Certificates = (obj.Properties["Certificates"].Value == null ? "" : obj.Properties["Certificates"].Value.ToString());  
                aDComputer.CN = (obj.Properties["CN"].Value == null ? "" : obj.Properties["CN"].Value.ToString());  
                aDComputer.codePage = (obj.Properties["codePage"].Value == null ? "" : obj.Properties["codePage"].Value.ToString());  
                aDComputer.CompoundIdentitySupported = (obj.Properties["CompoundIdentitySupported"].Value == null ? "" : obj.Properties["CompoundIdentitySupported"].Value.ToString());  
                aDComputer.countryCode = (obj.Properties["countryCode"].Value == null ? "" : obj.Properties["countryCode"].Value.ToString());  
                aDComputer.Created = (obj.Properties["Created"].Value == null ? "" : obj.Properties["Created"].Value.ToString()); 
                aDComputer.createTimeStamp = (obj.Properties["createTimeStamp"].Value == null ? "" : obj.Properties["createTimeStamp"].Value.ToString()); 
                aDComputer.Deleted = (obj.Properties["Deleted"].Value == null ? "" : obj.Properties["Deleted"].Value.ToString()); 
                aDComputer.Description = (obj.Properties["Description"].Value == null ? "" : obj.Properties["Description"].Value.ToString()); 
                aDComputer.DisplayName = (obj.Properties["DisplayName"].Value == null ? "" : obj.Properties["DisplayName"].Value.ToString()); 
                aDComputer.DistinguishedName = (obj.Properties["DistinguishedName"].Value == null ? "" : obj.Properties["DistinguishedName"].Value.ToString());  
                aDComputer.DNSHostName = (obj.Properties["DNSHostName"].Value == null ? "" : obj.Properties["DNSHostName"].Value.ToString()); 
                aDComputer.DoesNotRequirePreAuth = (obj.Properties["DoesNotRequirePreAuth"].Value == null ? "" : obj.Properties["DoesNotRequirePreAuth"].Value.ToString());  
                aDComputer.dSCorePropagationData = (obj.Properties["dSCorePropagationData"].Value == null ? "" : obj.Properties["dSCorePropagationData"].Value.ToString());  
                aDComputer.Enabled = (obj.Properties["Enabled"].Value == null ? "" : obj.Properties["Enabled"].Value.ToString()); 
                aDComputer.HomedirRequired = (obj.Properties["HomedirRequired"].Value == null ? "" : obj.Properties["HomedirRequired"].Value.ToString());  
                aDComputer.HomePage = (obj.Properties["HomePage"].Value == null ? "" : obj.Properties["HomePage"].Value.ToString());  
                aDComputer.instanceType = (obj.Properties["instanceType"].Value == null ? "" : obj.Properties["instanceType"].Value.ToString()); 
                aDComputer.IPv4Address = (obj.Properties["IPv4Address"].Value == null ? "" : obj.Properties["IPv4Address"].Value.ToString());  
                aDComputer.IPv6Address = (obj.Properties["IPv6Address"].Value == null ? "" : obj.Properties["IPv6Address"].Value.ToString());  
                aDComputer.isCriticalSystemObject = (obj.Properties["isCriticalSystemObject"].Value == null ? "" : obj.Properties["isCriticalSystemObject"].Value.ToString());  
                aDComputer.isDeleted = (obj.Properties["isDeleted"].Value == null ? "" : obj.Properties["isDeleted"].Value.ToString());  
                aDComputer.KerberosEncryptionType = (obj.Properties["KerberosEncryptionType"].Value == null ? "" : obj.Properties["KerberosEncryptionType"].Value.ToString());  
                aDComputer.LastBadPasswordAttempt = (obj.Properties["LastBadPasswordAttempt"].Value == null ? "" : obj.Properties["LastBadPasswordAttempt"].Value.ToString()); 
                aDComputer.LastKnownParent = (obj.Properties["LastKnownParent"].Value == null ? "" : obj.Properties["LastKnownParent"].Value.ToString());  
                aDComputer.lastLogoff = (obj.Properties["lastLogoff"].Value == null ? "" : obj.Properties["lastLogoff"].Value.ToString()); 
                aDComputer.lastLogon = (obj.Properties["lastLogon"].Value == null ? "" : obj.Properties["lastLogon"].Value.ToString());  
                aDComputer.LastLogonDate = (obj.Properties["LastLogonDate"].Value == null ? "" : obj.Properties["LastLogonDate"].Value.ToString()); 
                aDComputer.lastLogonTimestamp = (obj.Properties["lastLogonTimestamp"].Value == null ? "" : obj.Properties["lastLogonTimestamp"].Value.ToString());  
                aDComputer.localPolicyFlags = (obj.Properties["localPolicyFlags"].Value == null ? "" : obj.Properties["localPolicyFlags"].Value.ToString()); 
                aDComputer.Location = (obj.Properties["Location"].Value == null ? "" : obj.Properties["Location"].Value.ToString());  
                aDComputer.LockedOut = (obj.Properties["LockedOut"].Value == null ? "" : obj.Properties["LockedOut"].Value.ToString());  
                aDComputer.logonCount = (obj.Properties["logonCount"].Value == null ? "" : obj.Properties["logonCount"].Value.ToString());  
                aDComputer.ManagedBy = (obj.Properties["ManagedBy"].Value == null ? "" : obj.Properties["ManagedBy"].Value.ToString()); 
                aDComputer.MemberOf = (obj.Properties["MemberOf"].Value == null ? "" : obj.Properties["MemberOf"].Value.ToString());  
                aDComputer.MNSLogonAccount = (obj.Properties["MNSLogonAccount"].Value == null ? "" : obj.Properties["MNSLogonAccount"].Value.ToString());  
                aDComputer.Modified = (obj.Properties["Modified"].Value == null ? "" : obj.Properties["Modified"].Value.ToString());  
                aDComputer.modifyTimeStamp = (obj.Properties["modifyTimeStamp"].Value == null ? "" : obj.Properties["modifyTimeStamp"].Value.ToString());  
                aDComputer.msDSSupportedEncryptionTypes = (obj.Properties["msDSSupportedEncryptionTypes"].Value == null ? "" : obj.Properties["msDSSupportedEncryptionTypes"].Value.ToString());  
                aDComputer.msDSUserAccountControlComputed = (obj.Properties["msDSUserAccountControlComputed"].Value == null ? "" : obj.Properties["msDSUserAccountControlComputed"].Value.ToString());  
                aDComputer.Name = (obj.Properties["Name"].Value == null ? "" : obj.Properties["Name"].Value.ToString());  
                aDComputer.nTSecurityDescriptor = (obj.Properties["nTSecurityDescriptor"].Value == null ? "" : obj.Properties["nTSecurityDescriptor"].Value.ToString());  
                aDComputer.ObjectCategory = (obj.Properties["ObjectCategory"].Value == null ? "" : obj.Properties["ObjectCategory"].Value.ToString());  
                aDComputer.ObjectClass = (obj.Properties["ObjectClass"].Value == null ? "" : obj.Properties["ObjectClass"].Value.ToString());  
                aDComputer.objectSid = (obj.Properties["objectSid"].Value == null ? "" : obj.Properties["objectSid"].Value.ToString());  
                aDComputer.OperatingSystem = (obj.Properties["OperatingSystem"].Value == null ? "" : obj.Properties["OperatingSystem"].Value.ToString());  
                aDComputer.OperatingSystemHotfix = (obj.Properties["OperatingSystemHotfix"].Value == null ? "" : obj.Properties["OperatingSystemHotfix"].Value.ToString());  
                aDComputer.OperatingSystemServicePack = (obj.Properties["OperatingSystemServicePack"].Value == null ? "" : obj.Properties["OperatingSystemServicePack"].Value.ToString()); 
                aDComputer.OperatingSystemVersion = (obj.Properties["OperatingSystemVersion"].Value == null ? "" : obj.Properties["OperatingSystemVersion"].Value.ToString()); 
                aDComputer.PasswordExpired = (obj.Properties["PasswordExpired"].Value == null ? "" : obj.Properties["PasswordExpired"].Value.ToString());  
                aDComputer.PasswordLastSet = (obj.Properties["PasswordLastSet"].Value == null ? "" : obj.Properties["PasswordLastSet"].Value.ToString());  
                aDComputer.PasswordNeverExpires = (obj.Properties["PasswordNeverExpires"].Value == null ? "" : obj.Properties["PasswordNeverExpires"].Value.ToString()); 
                aDComputer.PasswordNotRequired = (obj.Properties["PasswordNotRequired"].Value == null ? "" : obj.Properties["PasswordNotRequired"].Value.ToString()); 
                aDComputer.PrimaryGroup = (obj.Properties["PrimaryGroup"].Value == null ? "" : obj.Properties["PrimaryGroup"].Value.ToString()); 
                aDComputer.primaryGroupID = (obj.Properties["primaryGroupID"].Value == null ? "" : obj.Properties["primaryGroupID"].Value.ToString());  
                aDComputer.PrincipalsAllowedToDelegateToAccount = (obj.Properties["PrincipalsAllowedToDelegateToAccount"].Value == null ? "" : obj.Properties["PrincipalsAllowedToDelegateToAccount"].Value.ToString());  
                aDComputer.ProtectedFromAccidentalDeletion = (obj.Properties["ProtectedFromAccidentalDeletion"].Value == null ? "" : obj.Properties["ProtectedFromAccidentalDeletion"].Value.ToString());  
                aDComputer.pwdLastSet = (obj.Properties["pwdLastSet"].Value == null ? "" : obj.Properties["pwdLastSet"].Value.ToString()); 
                aDComputer.SamAccountName = (obj.Properties["SamAccountName"].Value == null ? "" : obj.Properties["SamAccountName"].Value.ToString());  
                aDComputer.sAMAccountType = (obj.Properties["sAMAccountType"].Value == null ? "" : obj.Properties["sAMAccountType"].Value.ToString());  
                aDComputer.sDRightsEffective = (obj.Properties["sDRightsEffective"].Value == null ? "" : obj.Properties["sDRightsEffective"].Value.ToString()); 
                aDComputer.ServiceAccount = (obj.Properties["ServiceAccount"].Value == null ? "" : obj.Properties["ServiceAccount"].Value.ToString()); 
                aDComputer.servicePrincipalName = (obj.Properties["servicePrincipalName"].Value == null ? "" : obj.Properties["servicePrincipalName"].Value.ToString()); 
                aDComputer.ServicePrincipalNames = (obj.Properties["ServicePrincipalNames"].Value == null ? "" : obj.Properties["ServicePrincipalNames"].Value.ToString()); 
                aDComputer.SID = (obj.Properties["SID"].Value == null ? "" : obj.Properties["SID"].Value.ToString()); 
                aDComputer.SIDHistory = (obj.Properties["SIDHistory"].Value == null ? "" : obj.Properties["SIDHistory"].Value.ToString());
                aDComputer.TrustedForDelegation = (obj.Properties["TrustedForDelegation"].Value == null ? "" : obj.Properties["TrustedForDelegation"].Value.ToString());
                aDComputer.TrustedToAuthForDelegation = (obj.Properties["TrustedToAuthForDelegation"].Value == null ? "" : obj.Properties["TrustedToAuthForDelegation"].Value.ToString());  
                aDComputer.UseDESKeyOnly = (obj.Properties["UseDESKeyOnly"].Value == null ? "" : obj.Properties["UseDESKeyOnly"].Value.ToString()); 
                aDComputer.userAccountControl = (obj.Properties["userAccountControl"].Value == null ? "" : obj.Properties["userAccountControl"].Value.ToString());  
                aDComputer.userCertificate = (obj.Properties["userCertificate"].Value == null ? "" : obj.Properties["userCertificate"].Value.ToString()); 
                aDComputer.UserPrincipalName = (obj.Properties["UserPrincipalName"].Value == null ? "" : obj.Properties["UserPrincipalName"].Value.ToString()); 
                aDComputer.uSNChanged = (obj.Properties["uSNChanged"].Value == null ? "" : obj.Properties["uSNChanged"].Value.ToString());
                aDComputer.uSNCreated = (obj.Properties["uSNCreated"].Value == null ? "" : obj.Properties["uSNCreated"].Value.ToString());  
                aDComputer.whenChanged = (obj.Properties["whenChanged"].Value == null ? "" : obj.Properties["whenChanged"].Value.ToString());  
                aDComputer.whenCreated = (obj.Properties["whenCreated"].Value == null ? "" : obj.Properties["whenCreated"].Value.ToString()); 
                aDComputerList.Add(aDComputer);
            }

            InsertADComputer(aDComputerList);
            return "";// adUserList;
        }

        public static void InsertADComputer(List<ADComputer> aDComputers )
        {
            string strcon = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            foreach (ADComputer aDComputer in aDComputers)
            {
                SqlCommand cmd = new SqlCommand("usp_InsertADComputerDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@AccountExpirationDate", aDComputer.AccountExpirationDate);
                cmd.Parameters.AddWithValue("@AccountExpires", aDComputer.accountExpires);
                cmd.Parameters.AddWithValue("@AccountLockoutTime", aDComputer.AccountLockoutTime);
                cmd.Parameters.AddWithValue("@AccountNotDelegated", aDComputer.AccountNotDelegated);
                cmd.Parameters.AddWithValue("@AllowReversiblePasswordEncryption", aDComputer.AllowReversiblePasswordEncryption);
                cmd.Parameters.AddWithValue("@AuthenticationPolicy", aDComputer.AuthenticationPolicy);
                cmd.Parameters.AddWithValue("@AuthenticationPolicySilo", aDComputer.AuthenticationPolicySilo);
                cmd.Parameters.AddWithValue("@BadLogonCount", aDComputer.BadLogonCount);
                cmd.Parameters.AddWithValue("@BadPasswordTime", aDComputer.badPasswordTime);
                cmd.Parameters.AddWithValue("@BadPwdCount", aDComputer.badPwdCount);
                cmd.Parameters.AddWithValue("@CannotChangePassword", aDComputer.CannotChangePassword);
                cmd.Parameters.AddWithValue("@CanonicalName", aDComputer.CanonicalName);
                cmd.Parameters.AddWithValue("@Certificates", aDComputer.Certificates);
                cmd.Parameters.AddWithValue("@CN", aDComputer.CN);
                cmd.Parameters.AddWithValue("@CodePage", aDComputer.codePage);
                cmd.Parameters.AddWithValue("@CompoundIdentitySupported", aDComputer.CompoundIdentitySupported);
                cmd.Parameters.AddWithValue("@CountryCode", aDComputer.countryCode);
                cmd.Parameters.AddWithValue("@Created", aDComputer.Created);
                cmd.Parameters.AddWithValue("@CreateTimeStamp", aDComputer.createTimeStamp);
                cmd.Parameters.AddWithValue("@Deleted", aDComputer.Deleted);
                cmd.Parameters.AddWithValue("@Description", aDComputer.Description);
                cmd.Parameters.AddWithValue("@DisplayName", aDComputer.DisplayName);
                cmd.Parameters.AddWithValue("@DistinguishedName", aDComputer.DistinguishedName);
                cmd.Parameters.AddWithValue("@DNSHostName", aDComputer.DNSHostName);
                cmd.Parameters.AddWithValue("@DoesNotRequirePreAuth", aDComputer.DoesNotRequirePreAuth);
                cmd.Parameters.AddWithValue("@DSCorePropagationData", aDComputer.dSCorePropagationData);
                cmd.Parameters.AddWithValue("@Enabled", aDComputer.Enabled);
                cmd.Parameters.AddWithValue("@HomedirRequired", aDComputer.HomedirRequired);
                cmd.Parameters.AddWithValue("@HomePage", aDComputer.HomePage);
                cmd.Parameters.AddWithValue("@InstanceType", aDComputer.instanceType);
                cmd.Parameters.AddWithValue("@IPv4Address", aDComputer.IPv4Address);
                cmd.Parameters.AddWithValue("@IPv6Address", aDComputer.IPv6Address);
                cmd.Parameters.AddWithValue("@IsCriticalSystemObject", aDComputer.isCriticalSystemObject);
                cmd.Parameters.AddWithValue("@IsDeleted", aDComputer.isDeleted);
                cmd.Parameters.AddWithValue("@KerberosEncryptionType", aDComputer.KerberosEncryptionType);
                cmd.Parameters.AddWithValue("@LastBadPasswordAttempt", aDComputer.LastBadPasswordAttempt);
                cmd.Parameters.AddWithValue("@LastKnownParent", aDComputer.LastKnownParent);
                cmd.Parameters.AddWithValue("@LastLogoff", aDComputer.lastLogoff);
                cmd.Parameters.AddWithValue("@LastLogon", aDComputer.lastLogon);
                cmd.Parameters.AddWithValue("@LastLogonDate", aDComputer.LastLogonDate);
                cmd.Parameters.AddWithValue("@LastLogonTimestamp", aDComputer.lastLogonTimestamp);
                cmd.Parameters.AddWithValue("@LocalPolicyFlags", aDComputer.localPolicyFlags);
                cmd.Parameters.AddWithValue("@Location", aDComputer.Location);
                cmd.Parameters.AddWithValue("@LockedOut", aDComputer.LockedOut);
                cmd.Parameters.AddWithValue("@LogonCount", aDComputer.logonCount);
                cmd.Parameters.AddWithValue("@ManagedBy", aDComputer.ManagedBy);
                cmd.Parameters.AddWithValue("@MemberOf", aDComputer.MemberOf);
                cmd.Parameters.AddWithValue("@MNSLogonAccount", aDComputer.MNSLogonAccount);
                cmd.Parameters.AddWithValue("@Modified", aDComputer.Modified);
                cmd.Parameters.AddWithValue("@ModifyTimeStamp", aDComputer.modifyTimeStamp);
                cmd.Parameters.AddWithValue("@MsDSSupportedEncryptionTypes", aDComputer.msDSSupportedEncryptionTypes);
                cmd.Parameters.AddWithValue("@MsDSUserAccountControlComputed", aDComputer.msDSUserAccountControlComputed);
                cmd.Parameters.AddWithValue("@Name", aDComputer.Name);
                cmd.Parameters.AddWithValue("@NTSecurityDescriptor", aDComputer.nTSecurityDescriptor);
                cmd.Parameters.AddWithValue("@ObjectCategory", aDComputer.ObjectCategory);
                cmd.Parameters.AddWithValue("@ObjectClass", aDComputer.ObjectClass);
                cmd.Parameters.AddWithValue("@ObjectGUID", aDComputer.ObjectGUID);
                cmd.Parameters.AddWithValue("@ObjectSid", aDComputer.objectSid);
                cmd.Parameters.AddWithValue("@OperatingSystem", aDComputer.OperatingSystem);
                cmd.Parameters.AddWithValue("@OperatingSystemHotfix", aDComputer.OperatingSystemHotfix);
                cmd.Parameters.AddWithValue("@OperatingSystemServicePack", aDComputer.OperatingSystemServicePack);
                cmd.Parameters.AddWithValue("@OperatingSystemVersion", aDComputer.OperatingSystemVersion);
                cmd.Parameters.AddWithValue("@PasswordExpired", aDComputer.PasswordExpired);
                cmd.Parameters.AddWithValue("@PasswordLastSet", aDComputer.PasswordLastSet);
                cmd.Parameters.AddWithValue("@PasswordNeverExpires", aDComputer.PasswordNeverExpires);
                cmd.Parameters.AddWithValue("@PasswordNotRequired", aDComputer.PasswordNotRequired);
                cmd.Parameters.AddWithValue("@PrimaryGroup", aDComputer.PrimaryGroup);
                cmd.Parameters.AddWithValue("@PrimaryGroupID", aDComputer.primaryGroupID);
                cmd.Parameters.AddWithValue("@PrincipalsAllowedToDelegateToAccount", aDComputer.PrincipalsAllowedToDelegateToAccount);
                cmd.Parameters.AddWithValue("@ProtectedFromAccidentalDeletion", aDComputer.ProtectedFromAccidentalDeletion);
                cmd.Parameters.AddWithValue("@PwdLastSet", aDComputer.pwdLastSet);
                cmd.Parameters.AddWithValue("@SamAccountName", aDComputer.SamAccountName);
                cmd.Parameters.AddWithValue("@SAMAccountType", aDComputer.sAMAccountType);
                cmd.Parameters.AddWithValue("@SDRightsEffective", aDComputer.sDRightsEffective);
                cmd.Parameters.AddWithValue("@ServiceAccount", aDComputer.ServiceAccount);
                cmd.Parameters.AddWithValue("@ServicePrincipalName", aDComputer.servicePrincipalName);
                cmd.Parameters.AddWithValue("@ServicePrincipalNames", aDComputer.ServicePrincipalNames);
                cmd.Parameters.AddWithValue("@SID", aDComputer.SID);
                cmd.Parameters.AddWithValue("@SIDHistory", aDComputer.SIDHistory);
                cmd.Parameters.AddWithValue("@TrustedForDelegation", aDComputer.TrustedForDelegation);
                cmd.Parameters.AddWithValue("@TrustedToAuthForDelegation", aDComputer.TrustedToAuthForDelegation);
                cmd.Parameters.AddWithValue("@UseDESKeyOnly", aDComputer.UseDESKeyOnly);
                cmd.Parameters.AddWithValue("@UserAccountControl", aDComputer.userAccountControl);
                cmd.Parameters.AddWithValue("@UserCertificate", aDComputer.userCertificate);
                cmd.Parameters.AddWithValue("@UserPrincipalName", aDComputer.UserPrincipalName);
                cmd.Parameters.AddWithValue("@USNChanged", aDComputer.uSNChanged);
                cmd.Parameters.AddWithValue("@USNCreated", aDComputer.uSNCreated);
                cmd.Parameters.AddWithValue("@WhenChanged", aDComputer.whenChanged);
                cmd.Parameters.AddWithValue("@WhenCreated", aDComputer.whenCreated);                
                con.Open();
                int k = cmd.ExecuteNonQuery();
                con.Close();
            }
            
           
                
        }

        public static void InsertADUser(List<AdUser> aDUsers)
        {
            string strcon = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //create new sqlconnection and connection to database by using connection string from web.config file  
            SqlConnection con = new SqlConnection(strcon);
            foreach (AdUser adUser in aDUsers)
            {
                SqlCommand cmd = new SqlCommand("usp_InsertADUsers", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@AccountExpirationDate", adUser.AccountExpirationDate);
                cmd.Parameters.AddWithValue("@accountExpires", adUser.accountExpires);
                cmd.Parameters.AddWithValue("@AccountLockoutTime", adUser.AccountLockoutTime);
                cmd.Parameters.AddWithValue("@AccountNotDelegated", adUser.AccountNotDelegated);
                cmd.Parameters.AddWithValue("@AdminCount", adUser.adminCount);
                cmd.Parameters.AddWithValue("@AllowReversiblePasswordEncryption", adUser.AllowReversiblePasswordEncryption);
                cmd.Parameters.AddWithValue("@AuthenticationPolicy", adUser.AuthenticationPolicy);
                cmd.Parameters.AddWithValue("@AuthenticationPolicySilo", adUser.AuthenticationPolicySilo);
                cmd.Parameters.AddWithValue("@BadLogonCount", adUser.BadLogonCount);
                cmd.Parameters.AddWithValue("@BadPasswordTime", adUser.badPasswordTime);
                cmd.Parameters.AddWithValue("@BadPwdCount", adUser.badPwdCount);
                cmd.Parameters.AddWithValue("@CannotChangePassword", adUser.CannotChangePassword);
                cmd.Parameters.AddWithValue("@CanonicalName", adUser.CanonicalName);
                cmd.Parameters.AddWithValue("@Certificates", adUser.Certificates);
                cmd.Parameters.AddWithValue("@City", adUser.City);
                cmd.Parameters.AddWithValue("@CN", adUser.CN);
                cmd.Parameters.AddWithValue("@CodePage", adUser.codePage);
                cmd.Parameters.AddWithValue("@Company", adUser.Company);
                cmd.Parameters.AddWithValue("@CompoundIdentitySupported", adUser.CompoundIdentitySupported);
                cmd.Parameters.AddWithValue("@Country", adUser.Country);
                cmd.Parameters.AddWithValue("@CountryCode", adUser.countryCode);
                cmd.Parameters.AddWithValue("@Created", adUser.Created);
                cmd.Parameters.AddWithValue("@CreateTimeStamp", adUser.createTimeStamp);
                cmd.Parameters.AddWithValue("@Deleted", adUser.Deleted);
                cmd.Parameters.AddWithValue("@Department", adUser.Department);
                cmd.Parameters.AddWithValue("@Description", adUser.Description);
                cmd.Parameters.AddWithValue("@DisplayName", adUser.DisplayName);
                cmd.Parameters.AddWithValue("@DistinguishedName", adUser.DistinguishedName);
                cmd.Parameters.AddWithValue("@Division", adUser.Division);
                cmd.Parameters.AddWithValue("@DoesNotRequirePreAuth", adUser.DoesNotRequirePreAuth);
                cmd.Parameters.AddWithValue("@dSCorePropagationData", adUser.dSCorePropagationData);
                cmd.Parameters.AddWithValue("@EmailAddress", adUser.EmailAddress);
                cmd.Parameters.AddWithValue("@EmployeeID", adUser.EmployeeID);
                cmd.Parameters.AddWithValue("@EmployeeNumber", adUser.EmployeeNumber);
                cmd.Parameters.AddWithValue("@Enabled", adUser.Enabled);
                cmd.Parameters.AddWithValue("@Fax", adUser.Fax);
                cmd.Parameters.AddWithValue("@GivenName", adUser.GivenName);
                cmd.Parameters.AddWithValue("@HomeDirectory", adUser.HomeDirectory);
                cmd.Parameters.AddWithValue("@HomedirRequired", adUser.HomedirRequired);
                cmd.Parameters.AddWithValue("@HomeDrive", adUser.HomeDrive);
                cmd.Parameters.AddWithValue("@HomePage", adUser.HomePage);
                cmd.Parameters.AddWithValue("@HomePhone", adUser.HomePhone);
                cmd.Parameters.AddWithValue("@Initials", adUser.Initials);
                cmd.Parameters.AddWithValue("@instanceType", adUser.instanceType);
                cmd.Parameters.AddWithValue("@isDeleted", adUser.isDeleted);
                cmd.Parameters.AddWithValue("@KerberosEncryptionType", adUser.KerberosEncryptionType);
                cmd.Parameters.AddWithValue("@LastBadPasswordAttempt", adUser.LastBadPasswordAttempt);
                cmd.Parameters.AddWithValue("@LastKnownParent", adUser.LastKnownParent);
                cmd.Parameters.AddWithValue("@lastLogoff", adUser.lastLogoff);
                cmd.Parameters.AddWithValue("@lastLogon", adUser.lastLogon);
                cmd.Parameters.AddWithValue("@LastLogonDate", adUser.LastLogonDate);
                cmd.Parameters.AddWithValue("@lastLogonTimestamp", adUser.lastLogonTimestamp);
                cmd.Parameters.AddWithValue("@LockedOut", adUser.LockedOut);
                cmd.Parameters.AddWithValue("@LogonCount", adUser.logonCount);
                cmd.Parameters.AddWithValue("@LogonWorkstations", adUser.LogonWorkstations);
                cmd.Parameters.AddWithValue("@Manager", adUser.Manager);
                cmd.Parameters.AddWithValue("@MemberOf", adUser.MemberOf);
                cmd.Parameters.AddWithValue("@MNSLogonAccount", adUser.MNSLogonAccount);
                cmd.Parameters.AddWithValue("@MobilePhone", adUser.MobilePhone);
                cmd.Parameters.AddWithValue("@Modified", adUser.Modified);
                cmd.Parameters.AddWithValue("@modifyTimeStamp", adUser.modifyTimeStamp);
                cmd.Parameters.AddWithValue("@MsdsuserAccountControlComputed", adUser.msDSUserAccountControlComputed);
                cmd.Parameters.AddWithValue("@Name", adUser.Name);
                cmd.Parameters.AddWithValue("@NTSecurityDescriptor", adUser.nTSecurityDescriptor);
                cmd.Parameters.AddWithValue("@ObjectCategory", adUser.ObjectCategory);
                cmd.Parameters.AddWithValue("@ObjectClass", adUser.ObjectClass);
                cmd.Parameters.AddWithValue("@ObjectGUID", adUser.ObjectGUID);
                cmd.Parameters.AddWithValue("@ObjectSid", adUser.objectSid);
                cmd.Parameters.AddWithValue("@Office", adUser.Office);
                cmd.Parameters.AddWithValue("@OfficePhone", adUser.OfficePhone);
                cmd.Parameters.AddWithValue("@Organization", adUser.Organization);
                cmd.Parameters.AddWithValue("@OtherName", adUser.OtherName);
                cmd.Parameters.AddWithValue("@PasswordExpired", adUser.PasswordExpired);
                cmd.Parameters.AddWithValue("@PasswordLastSet", adUser.PasswordLastSet);
                cmd.Parameters.AddWithValue("@PasswordNeverExpires", adUser.PasswordNeverExpires);
                cmd.Parameters.AddWithValue("@PasswordNotRequired", adUser.PasswordNotRequired);
                cmd.Parameters.AddWithValue("@POBox", adUser.POBox);
                cmd.Parameters.AddWithValue("@PostalCode", adUser.PostalCode);
                cmd.Parameters.AddWithValue("@PrimaryGroup", adUser.PrimaryGroup);
                cmd.Parameters.AddWithValue("@PrimaryGroupID", adUser.primaryGroupID);
                cmd.Parameters.AddWithValue("@PrincipalsAllowedToDelegateToAccount", adUser.PrincipalsAllowedToDelegateToAccount);
                cmd.Parameters.AddWithValue("@ProfilePath", adUser.ProfilePath);
                cmd.Parameters.AddWithValue("@ProtectedFromAccidentalDeletion", adUser.ProtectedFromAccidentalDeletion);
                cmd.Parameters.AddWithValue("@pwdLastSet", adUser.pwdLastSet);
                cmd.Parameters.AddWithValue("@SamAccountName", adUser.SamAccountName);
                //cmd.Parameters.AddWithValue("@Password", adUser.Password);
                cmd.Parameters.AddWithValue("@SAMAccountType", adUser.sAMAccountType);
                cmd.Parameters.AddWithValue("@ScriptPath", adUser.ScriptPath);
                cmd.Parameters.AddWithValue("@sDRightsEffective", adUser.sDRightsEffective);

                cmd.Parameters.AddWithValue("@ServicePrincipalNames", adUser.ServicePrincipalNames);
                cmd.Parameters.AddWithValue("@SID", adUser.SID);
                cmd.Parameters.AddWithValue("@SIDHistory", adUser.SIDHistory);
                cmd.Parameters.AddWithValue("@SmartcardLogonRequired", adUser.SmartcardLogonRequired);
                cmd.Parameters.AddWithValue("@State", adUser.State);
                cmd.Parameters.AddWithValue("@StreetAddress", adUser.StreetAddress);
                cmd.Parameters.AddWithValue("@Surname", adUser.Surname);
                cmd.Parameters.AddWithValue("@Title", adUser.Title);
                cmd.Parameters.AddWithValue("@TrustedForDelegation", adUser.TrustedForDelegation);
                cmd.Parameters.AddWithValue("@TrustedToAuthForDelegation", adUser.TrustedToAuthForDelegation);
                cmd.Parameters.AddWithValue("@UseDESKeyOnly", adUser.UseDESKeyOnly);
                cmd.Parameters.AddWithValue("@userAccountControl", adUser.userAccountControl);
                cmd.Parameters.AddWithValue("@userCertificate", adUser.userCertificate);
                cmd.Parameters.AddWithValue("@UserPrincipalName", adUser.UserPrincipalName);
                cmd.Parameters.AddWithValue("@USNChanged", adUser.uSNChanged);
                cmd.Parameters.AddWithValue("@USNCreated", adUser.uSNCreated);
                cmd.Parameters.AddWithValue("@whenChanged", adUser.whenChanged);
                cmd.Parameters.AddWithValue("@whenCreated", adUser.whenCreated);
                con.Open();
                int k = cmd.ExecuteNonQuery();
                con.Close();
            }



        }

    }
}
