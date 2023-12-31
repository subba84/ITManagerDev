﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;




namespace DataRecoveryWebService.NewModels
{
    public partial class tblEmailConfiguration
    {
        [Key]
        public int Id { get; set; }
        public string Type { get; set; }
        public string Title { get; set; }
        public string Templete { get; set; }
        public string EmailId { get; set; }
        public string Password { get; set; }
        public bool UseDefaultCredentials { get; set; }
        public string Host { get; set; }
        public int? Port { get; set; }
        public bool EnableSsl { get; set; }
        public string Extra1 { get; set; }
        public string Extra2 { get; set; }
        public string Extra3 { get; set; }
        public bool IsActive { get; set; }
        public string SenderEmail { get; set; }
        public string DisplayName { get; set; }
        public string OutgoingProtocol { get; set; }
        public bool Auth { get; set; }
        public string IncomingProtocol { get; set; }
        public string IncomingServer { get; set; }
        public string IncomingPort { get; set; }
        public bool UseSSl { get; set; }
        [Required]
        [StringLength(50)]
        public string ActivityType { get; set; }
    }
}