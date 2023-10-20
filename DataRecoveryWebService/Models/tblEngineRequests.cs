﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;




namespace DataRecoveryWebService.Models
{
    public partial class tblEngineRequests
    {
        [Key]
        public int RequestId { get; set; }
        [Required]
        [StringLength(50)]
        public string EngineName { get; set; }
        [Required]
        public string GroupName { get; set; }
        [Required]
        [StringLength(50)]
        public string UpdateId { get; set; }
        public int RequestStatus { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime CreatedOn { get; set; }
        [Required]
        [StringLength(50)]
        public string CreatedBy { get; set; }
    }
}