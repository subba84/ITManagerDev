﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace DataRecoveryWebService.Models
{
    public partial class tblModules
    {
        [Key]
        public int ModuleId { get; set; }
        [Required]
        [StringLength(50)]
        public string ModuleName { get; set; }
        [StringLength(50)]
        public string SystemId { get; set; }
        [StringLength(50)]
        public string SerialNumber { get; set; }
        [Required]
        [StringLength(50)]
        public string CreatedBy { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime CreatedOn { get; set; }
        [StringLength(50)]
        public string UpdatedBy { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? UpdatedOn { get; set; }
        public bool? IsActive { get; set; }
    }
}