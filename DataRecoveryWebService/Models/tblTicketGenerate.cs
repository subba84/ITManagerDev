using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataRecoveryWebService.Models
{
    public partial class tblTicketGenerate
    {
        [Key]
        public int Id { get; set; }
        public int? NumberOfDigit { get; set; }
        public int? StartingNumber { get; set; }
        public string PrifexText { get; set; }
        public int? RecordNo { get; set; }
        public string RecordId { get; set; }
        public string TicketDescription { get; set; }
        public string TicketSummary { get; set; }
        public string TicketStatus { get; set; }
        public string Priority { get; set; }
        public string Severity { get; set; }
        public string SubmittedBy { get; set; }
        public string CreatedDateTime { get; set; }
        public string TicketOwner { get; set; }
        public string FileUpload { get; set; }
        public string TicketComments { get; set; }
        public string AssetTag { get; set; }
        public string TimeSpent { get; set; }
        public string TypeSelect { get; set; }
        public string Type { get; set; }
        public string TicketCategory { get; set; }
        public string TicketSubCategory { get; set; }
        public string Service { get; set; }
        public string Extra1 { get; set; }
        public string Extra2 { get; set; }
        public string Extra3 { get; set; }
        public int? FirmId { get; set; }
        public string FinancialYear { get; set; }
        public string Mode { get; set; }
        public string Status { get; set; }
        public int? CreateBy { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? Created { get; set; }
        public int? UpdateBy { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime? Updated { get; set; }
    }
}