using ITManager.EngineWeb.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace ITManager.EngineWeb.DataAccess
{
    public class EngineContext : DbContext
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["DatarecoveryConnection"].ConnectionString;

        public EngineContext() : base(connectionString)
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

        public virtual DbSet<tblEngineGroups> tblEngineGroups { get; set; }

        public virtual DbSet<tblEngineConfig> tblEngineConfig { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}