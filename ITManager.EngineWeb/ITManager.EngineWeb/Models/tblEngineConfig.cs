﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;



namespace ITManager.EngineWeb.Models
{
    public partial class tblEngineConfig
    {
        [Key]
        public int EngineConfigId { get; set; }
        [Required]
        [StringLength(50)]
        public string EngineName { get; set; }
        public int EnginePort { get; set; }
        public bool IsActive { get; set; }
    }
}