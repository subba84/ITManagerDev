﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace DataRecoveryWebService.Models
{
    public partial class tblDiskDetails
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string SystemId { get; set; }
        [StringLength(50)]
        public string SerialNumber { get; set; }
        [Required]
        [StringLength(50)]
        public string Model { get; set; }
        [Required]
        public string DiskSerialNumber { get; set; }
        [StringLength(50)]
        public string MediaType { get; set; }
        [StringLength(50)]
        public string BusType { get; set; }
        [StringLength(50)]
        public string Size { get; set; }
        [StringLength(50)]
        public string HealthStatus { get; set; }
        [StringLength(50)]
        public string Manufacturer { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? CreatedOn { get; set; }
        [StringLength(50)]
        public string CreatedBy { get; set; }
        public bool? IsActive { get; set; }
    }
}