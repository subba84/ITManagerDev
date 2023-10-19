﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;




namespace ITManager.EngineWeb.Models
{
    public partial class tblHardwareInventories
    {
        [Key]
        public int HardwareInventoryId { get; set; }
        [Required]
        [StringLength(50)]
        public string SystemId { get; set; }
        [Required]
        [StringLength(50)]
        public string HostName { get; set; }
        [Required]
        [StringLength(256)]
        public string SerialNumber { get; set; }
        [Required]
        [StringLength(50)]
        public string Manufacturer { get; set; }
        [Required]
        [StringLength(50)]
        public string Model { get; set; }
        [Required]
        [StringLength(50)]
        public string CPUType { get; set; }
        [Required]
        [StringLength(50)]
        public string RAMDetails { get; set; }
        [Required]
        [StringLength(50)]
        public string WindowsActivated { get; set; }
        [Required]
        [StringLength(50)]
        public string PrinterConnected { get; set; }
        public bool HasCdDrive { get; set; }
        [Required]
        [StringLength(50)]
        public string RAMSlots { get; set; }
        [Required]
        [StringLength(50)]
        public string HostIP { get; set; }
        [Required]
        [StringLength(50)]
        public string OperatingSystem { get; set; }
        [Required]
        [StringLength(50)]
        public string LastLoginUser { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime LastScanDate { get; set; }
        [Required]
        [StringLength(50)]
        public string CPU_Core { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime CreatedOn { get; set; }
        [Required]
        [StringLength(50)]
        public string CreatedBy { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? UpdatedOn { get; set; }
        [StringLength(50)]
        public string UpdatedBy { get; set; }
        public bool IsActive { get; set; }
    }
}