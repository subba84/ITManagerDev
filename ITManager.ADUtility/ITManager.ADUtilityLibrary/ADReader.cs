using System;
using System.Collections.Generic;
using System.Configuration;
using System.DirectoryServices;
using System.DirectoryServices.AccountManagement;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITManager.ADUtilityLibrary
{
    public class ADReader
    {
        string domain, userName, password;

        public void GetConfig()
        {
            domain = ConfigurationManager.AppSettings["AdServer"].ToString();
            userName = ConfigurationManager.AppSettings["AdServerUserName"].ToString();
            password = ConfigurationManager.AppSettings["AdServerPassword"].ToString();
        }

        public void GetADUsers()
        {
            try
            {
                GetConfig();
                using (var context = new PrincipalContext(ContextType.Domain, domain, userName, password))
                {
                    using (var searcher = new PrincipalSearcher(new UserPrincipal(context)))
                    {
                        foreach (var result in searcher.FindAll())
                        {
                            DirectoryEntry de = result.GetUnderlyingObject() as DirectoryEntry;
                            Console.WriteLine("First Name: " + de.Properties["givenName"].Value);
                            Console.WriteLine("Last Name : " + de.Properties["sn"].Value);
                            Console.WriteLine("SAM account name   : " + de.Properties["samAccountName"].Value);
                            Console.WriteLine("User principal name: " + de.Properties["userPrincipalName"].Value);
                            Console.WriteLine();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }

        }

        public void GetADComputers()
        {
            try
            {
                GetConfig();
                using (var context = new PrincipalContext(ContextType.Domain, domain, userName, password))
                {
                    using (var searcher = new PrincipalSearcher(new ComputerPrincipal(context)))
                    {
                        foreach (var result in searcher.FindAll())
                        {
                            DirectoryEntry de = result.GetUnderlyingObject() as DirectoryEntry;
                            Console.WriteLine("First Name: " + de.Properties["givenName"].Value);
                            Console.WriteLine("Last Name : " + de.Properties["sn"].Value);
                            Console.WriteLine("SAM account name   : " + de.Properties["samAccountName"].Value);
                            Console.WriteLine("User principal name: " + de.Properties["userPrincipalName"].Value);
                            Console.WriteLine();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        public void GetADGroups()
        {
            try
            {
                GetConfig();
                using (var context = new PrincipalContext(ContextType.Domain, domain, userName, password))
                {
                    using (var searcher = new PrincipalSearcher(new GroupPrincipal(context)))
                    {
                        foreach (var result in searcher.FindAll())
                        {
                            DirectoryEntry de = result.GetUnderlyingObject() as DirectoryEntry;
                            Console.WriteLine("First Name: " + de.Properties["givenName"].Value);
                            Console.WriteLine("Last Name : " + de.Properties["sn"].Value);
                            Console.WriteLine("SAM account name   : " + de.Properties["samAccountName"].Value);
                            Console.WriteLine("User principal name: " + de.Properties["userPrincipalName"].Value);
                            Console.WriteLine();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        public void GetADContacts()
        {
            try
            {
                GetConfig();
                using (var context = new PrincipalContext(ContextType.Domain, domain, userName, password))
                {
                    using (var searcher = new PrincipalSearcher(new GroupPrincipal(context)))
                    {
                        foreach (var result in searcher.FindAll())
                        {
                            DirectoryEntry de = result.GetUnderlyingObject() as DirectoryEntry;
                            Console.WriteLine("First Name: " + de.Properties["givenName"].Value);
                            Console.WriteLine("Last Name : " + de.Properties["sn"].Value);
                            Console.WriteLine("SAM account name   : " + de.Properties["samAccountName"].Value);
                            Console.WriteLine("User principal name: " + de.Properties["userPrincipalName"].Value);
                            Console.WriteLine();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        public void GetOUs()
        {
            try
            {
                GetConfig();
                using (var context = new PrincipalContext(ContextType.Domain, domain, userName, password))
                {
                    using (var searcher = new PrincipalSearcher(new GroupPrincipal(context)))
                    {
                        foreach (var result in searcher.FindAll())
                        {
                            DirectoryEntry de = result.GetUnderlyingObject() as DirectoryEntry;
                            Console.WriteLine("First Name: " + de.Properties["givenName"].Value);
                            Console.WriteLine("Last Name : " + de.Properties["sn"].Value);
                            Console.WriteLine("SAM account name   : " + de.Properties["samAccountName"].Value);
                            Console.WriteLine("User principal name: " + de.Properties["userPrincipalName"].Value);
                            Console.WriteLine();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        public void GetGroupPolicies()
        {
            try
            {
                GetConfig();
                using (var context = new PrincipalContext(ContextType.Domain, domain, userName, password))
                {
                    using (var searcher = new PrincipalSearcher(new GroupPrincipal(context)))
                    {
                        foreach (var result in searcher.FindAll())
                        {
                            DirectoryEntry de = result.GetUnderlyingObject() as DirectoryEntry;
                            Console.WriteLine("First Name: " + de.Properties["givenName"].Value);
                            Console.WriteLine("Last Name : " + de.Properties["sn"].Value);
                            Console.WriteLine("SAM account name   : " + de.Properties["samAccountName"].Value);
                            Console.WriteLine("User principal name: " + de.Properties["userPrincipalName"].Value);
                            Console.WriteLine();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        public void GetADInfo()
        {
            try
            {
                GetConfig();
                using (var context = new PrincipalContext(ContextType.Domain, domain, userName, password))
                {
                    using (var searcher = new PrincipalSearcher(new GroupPrincipal(context)))
                    {
                        foreach (var result in searcher.FindAll())
                        {
                            DirectoryEntry de = result.GetUnderlyingObject() as DirectoryEntry;
                            Console.WriteLine("First Name: " + de.Properties["givenName"].Value);
                            Console.WriteLine("Last Name : " + de.Properties["sn"].Value);
                            Console.WriteLine("SAM account name   : " + de.Properties["samAccountName"].Value);
                            Console.WriteLine("User principal name: " + de.Properties["userPrincipalName"].Value);
                            Console.WriteLine();
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}
