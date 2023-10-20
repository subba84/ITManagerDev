﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;



namespace DataRecoveryWebService.Models
{
    public partial class tblSoftwareInventories
    {
        [Key]
        public int InventoryId { get; set; }
        [Required]
        [StringLength(50)]
        public string SystemId { get; set; }
        [StringLength(50)]
        public string SerialNumber { get; set; }
        [Required]
        public string InventoryName { get; set; }
        public string InventoryVendor { get; set; }
        [StringLength(50)]
        public string InventoryVersion { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? InstalledDate { get; set; }
        public bool? IsActive { get; set; }

    }
}