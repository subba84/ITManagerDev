using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataRecoveryWebService.Models
{
    public partial class tblTicketNumberCreation_Default
    {
        [Key]
        public int Id { get; set; }
        public int? NumberOfDigit { get; set; }
        public int? StartingNumber { get; set; }
        public string PrifexText { get; set; }
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