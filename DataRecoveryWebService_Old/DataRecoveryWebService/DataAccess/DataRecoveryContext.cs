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

        public virtual DbSet<tblConfigMaster> tblConfigMaster { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }

    }
}