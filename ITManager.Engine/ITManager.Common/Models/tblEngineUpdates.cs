﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;


namespace ITManager.Common.Models
{
    public partial class tblEngineUpdates
    {
        public int Id { get; set; }

        public string EngineName { get; set; }
        public string UpdateId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int? MajorVersion { get; set; }
        public int? MinorVersion { get; set; }
        public int? KB { get; set; }
        public string UpdateClassificationTitle { get; set; }
        public string CompanyTitle { get; set; }
        public string ProductTitles { get; set; }
        public DateTime? ArrivalDate { get; set; }
        public DateTime? CreatedOn { get; set; }
        public string CreatedBy { get; set; }
    }
}