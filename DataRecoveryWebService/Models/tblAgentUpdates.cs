﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace DataRecoveryWebService.Models
{
    public partial class tblAgentUpdates
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [StringLength(50)]
        public string SystemId { get; set; }
        [Required]
        [StringLength(50)]
        public string SerialNumber { get; set; }

        public string TotalBackupSize { get; set; }

        [Column(TypeName = "datetime")]
        public DateTime UpdatedOn { get; set; }
        public bool IsActive { get; set; }
    }
}