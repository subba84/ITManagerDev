using DataRecoveryWebService.Models;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Configuration;

namespace DataRecoveryWebService
{
    public partial class DataRecoveryContext : DbContext
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["DatarecoveryConnection"].ConnectionString;

        public DataRecoveryContext(): base(connectionString)
        {
           
        }

        public virtual DbSet<tblBackups> tblBackups { get; set; }
        public virtual DbSet<tblConfigs> tblConfigs { get; set; }
        public virtual DbSet<tblSoftwareInventories> tblSoftwareInventories { get; set; }
        public virtual DbSet<tblHardwareInventories> tblHardwareInventories { get; set; }
        public virtual DbSet<tblModules> tblModules { get; set; }
        public virtual DbSet<tblUserMachineMappings> tblUserMachineMappings { get; set; }

        public virtual DbSet<tblDriveDetails> tblDriveDetails { get; set; }

        public virtual DbSet<tblRequests> tblRequests { get; set; }

        public virtual DbSet<tblMailMessage> tblMailMessage { get; set; }

        public virtual DbSet<tblMailUtilityConfig> tblMailUtilityConfig { get; set; }

        public virtual DbSet<tblConfigMaster> tblConfigMaster { get; set; }

        public virtual DbSet<tblEngineReports> tblEngineReports { get; set; }

        public virtual DbSet<tblEngineRequests> tblEngineRequests { get; set; }

        public virtual DbSet<tblEngineUpdates> tblEngineUpdates { get; set; }

        public virtual DbSet<tblEngineConfig> tblEngineConfig { get; set; }

        public virtual DbSet<tblMailConversations> tblMailConversations { get; set; }

        public virtual DbSet<tblEngineGroups> tblEngineGroups { get; set; }

        public virtual DbSet<tblTicketGenerate> tblTicketGenerate { get; set; }

        public virtual DbSet<tblTicketNumberCreation_Default> tblTicketNumberCreation_Default { get; set; }

        public virtual DbSet<tblAgentUpdates> tblAgentUpdates { get; set; }

        public virtual DbSet<NotificationFieldMatrix> NotificationFieldMatrix { get; set; }

        public virtual DbSet<tblDiskDetails> tblDiskDetails { get; set; }

        public virtual DbSet<tblServiceDetails> tblServiceDetails { get; set; }

        public virtual DbSet<UserInformation> UserInformation { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }

    }
}