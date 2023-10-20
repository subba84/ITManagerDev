﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Configuration;

namespace DataRecovery.Models
{
    public partial class ConfigsVm
    {
        [Key]
        public int ConfigId { get; set; }
        [Required]
        [StringLength(50)]
        public string SystemId { get; set; }
        [Required]
        public string Configkey { get; set; }
        [Required]
        public string Configvalue { get; set; }
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

        public List<string> ConfigKeys { get; set; }
    }
}