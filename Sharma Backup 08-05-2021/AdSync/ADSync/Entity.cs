using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ADSync
{
    public class Entity
    {
        public class AdUser
        {
            public string AccountExpirationDate { get; set; }
            public string accountExpires { get; set; }
            public string AccountLockoutTime { get; set; }
            public string AccountNotDelegated { get; set; }
            public string adminCount { get; set; }
            public string AllowReversiblePasswordEncryption { get; set; }
            public string AuthenticationPolicy { get; set; }
            public string AuthenticationPolicySilo { get; set; }
            public string BadLogonCount { get; set; }
            public string badPasswordTime { get; set; }
            public string badPwdCount { get; set; }
            public string CannotChangePassword { get; set; }
            public string CanonicalName { get; set; }
            public string Certificates { get; set; }
            public string City { get; set; }
            public string CN { get; set; }
            public string codePage { get; set; }
            public string Company { get; set; }
            public string CompoundIdentitySupported { get; set; }
            public string Country { get; set; }
            public string countryCode { get; set; }
            public string Created { get; set; }
            public string createTimeStamp { get; set; }
            public string Deleted { get; set; }
            public string Department { get; set; }
            public string Description { get; set; }
            public string DisplayName { get; set; }
            public string DistinguishedName { get; set; }
            public string Division { get; set; }
            public string DoesNotRequirePreAuth { get; set; }
            public string dSCorePropagationData { get; set; }
            public string EmailAddress { get; set; }
            public string EmployeeID { get; set; }
            public string EmployeeNumber { get; set; }
            public string Enabled { get; set; }
            public string Fax { get; set; }
            public string GivenName { get; set; }
            public string HomeDirectory { get; set; }
            public string HomedirRequired { get; set; }
            public string HomeDrive { get; set; }
            public string HomePage { get; set; }
            public string HomePhone { get; set; }
            public string Initials { get; set; }
            public string instanceType { get; set; }
            public string isCriticalSystemObject { get; set; }
            public string isDeleted { get; set; }
            public string KerberosEncryptionType { get; set; }
            public string LastBadPasswordAttempt { get; set; }
            public string LastKnownParent { get; set; }
            public string lastLogoff { get; set; }
            public string lastLogon { get; set; }
            public string LastLogonDate { get; set; }
            public string lastLogonTimestamp { get; set; }
            public string LockedOut { get; set; }
            public string lockoutTime { get; set; }
            public string logonCount { get; set; }
            public string logonHours { get; set; }
            public string LogonWorkstations { get; set; }
            public string Manager { get; set; }
            public string MemberOf { get; set; }
            public string MNSLogonAccount { get; set; }
            public string MobilePhone { get; set; }
            public string Modified { get; set; }
            public string modifyTimeStamp { get; set; }
            public string msDSSupportedEncryptionTypes { get; set; }
            public string msDSUserAccountControlComputed { get; set; }
            public string Name { get; set; }
            public string nTSecurityDescriptor { get; set; }
            public string ObjectCategory { get; set; }
            public string ObjectClass { get; set; }
            public string ObjectGUID { get; set; }
            public string objectSid { get; set; }
            public string Office { get; set; }
            public string OfficePhone { get; set; }
            public string Organization { get; set; }
            public string OtherName { get; set; }
            public string PasswordExpired { get; set; }
            public string PasswordLastSet { get; set; }
            public string PasswordNeverExpires { get; set; }
            public string PasswordNotRequired { get; set; }
            public string POBox { get; set; }
            public string PostalCode { get; set; }
            public string PrimaryGroup { get; set; }
            public string primaryGroupID { get; set; }
            public string PrincipalsAllowedToDelegateToAccount { get; set; }
            public string ProfilePath { get; set; }
            public string ProtectedFromAccidentalDeletion { get; set; }
            public string pwdLastSet { get; set; }
            public string SamAccountName { get; set; }
            public string sAMAccountType { get; set; }
            public string ScriptPath { get; set; }
            public string sDRightsEffective { get; set; }
            public string ServicePrincipalNames { get; set; }
            public string SID { get; set; }
            public string SIDHistory { get; set; }
            public string SmartcardLogonRequired { get; set; }
            public string State { get; set; }
            public string StreetAddress { get; set; }
            public string Surname { get; set; }
            public string Title { get; set; }
            public string TrustedForDelegation { get; set; }
            public string TrustedToAuthForDelegation { get; set; }
            public string UseDESKeyOnly { get; set; }
            public string userAccountControl { get; set; }
            public string userCertificate { get; set; }
            public string UserPrincipalName { get; set; }
            public string uSNChanged { get; set; }
            public string uSNCreated { get; set; }
            public string whenChanged { get; set; }
            public string whenCreated { get; set; }

        }

        public class ADComputer
        {
            public string AccountExpirationDate { get; set; }
            public string accountExpires { get; set; }
            public string AccountLockoutTime { get; set; }
            public string AccountNotDelegated { get; set; }
            public string AllowReversiblePasswordEncryption { get; set; }
            public string AuthenticationPolicy { get; set; }
            public string AuthenticationPolicySilo { get; set; }
            public string BadLogonCount { get; set; }
            public string badPasswordTime { get; set; }
            public string badPwdCount { get; set; }
            public string CannotChangePassword { get; set; }
            public string CanonicalName { get; set; }
            public string Certificates { get; set; }
            public string CN { get; set; }
            public string codePage { get; set; }
            public string CompoundIdentitySupported { get; set; }
            public string countryCode { get; set; }
            public string Created { get; set; }
            public string createTimeStamp { get; set; }
            public string Deleted { get; set; }
            public string Description { get; set; }
            public string DisplayName { get; set; }
            public string DistinguishedName { get; set; }
            public string DNSHostName { get; set; }
            public string DoesNotRequirePreAuth { get; set; }
            public string dSCorePropagationData { get; set; }
            public string Enabled { get; set; }
            public string HomedirRequired { get; set; }
            public string HomePage { get; set; }
            public string instanceType { get; set; }
            public string IPv4Address { get; set; }
            public string IPv6Address { get; set; }
            public string isCriticalSystemObject { get; set; }
            public string isDeleted { get; set; }
            public string KerberosEncryptionType { get; set; }
            public string LastBadPasswordAttempt { get; set; }
            public string LastKnownParent { get; set; }
            public string lastLogoff { get; set; }
            public string lastLogon { get; set; }
            public string LastLogonDate { get; set; }
            public string lastLogonTimestamp { get; set; }
            public string localPolicyFlags { get; set; }
            public string Location { get; set; }
            public string LockedOut { get; set; }
            public string logonCount { get; set; }
            public string ManagedBy { get; set; }
            public string MemberOf { get; set; }
            public string MNSLogonAccount { get; set; }
            public string Modified { get; set; }
            public string modifyTimeStamp { get; set; }
            public string msDSSupportedEncryptionTypes { get; set; }
            public string msDSUserAccountControlComputed { get; set; }
            public string Name { get; set; }
            public string nTSecurityDescriptor { get; set; }
            public string ObjectCategory { get; set; }
            public string ObjectClass { get; set; }
            public string ObjectGUID { get; set; }
            public string objectSid { get; set; }
            public string OperatingSystem { get; set; }
            public string OperatingSystemHotfix { get; set; }
            public string OperatingSystemServicePack { get; set; }
            public string OperatingSystemVersion { get; set; }
            public string PasswordExpired { get; set; }
            public string PasswordLastSet { get; set; }
            public string PasswordNeverExpires { get; set; }
            public string PasswordNotRequired { get; set; }
            public string PrimaryGroup { get; set; }
            public string primaryGroupID { get; set; }
            public string PrincipalsAllowedToDelegateToAccount { get; set; }
            public string ProtectedFromAccidentalDeletion { get; set; }
            public string pwdLastSet { get; set; }
            public string SamAccountName { get; set; }
            public string sAMAccountType { get; set; }
            public string sDRightsEffective { get; set; }
            public string ServiceAccount { get; set; }
            public string servicePrincipalName { get; set; }
            public string ServicePrincipalNames { get; set; }
            public string SID { get; set; }
            public string SIDHistory { get; set; }
            public string TrustedForDelegation { get; set; }
            public string TrustedToAuthForDelegation { get; set; }
            public string UseDESKeyOnly { get; set; }
            public string userAccountControl { get; set; }
            public string userCertificate { get; set; }
            public string UserPrincipalName { get; set; }
            public string uSNChanged { get; set; }
            public string uSNCreated { get; set; }
            public string whenChanged { get; set; }
            public string whenCreated { get; set; }


        }
    }
}
