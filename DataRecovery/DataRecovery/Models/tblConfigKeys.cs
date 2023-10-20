using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DataRecovery.Models
{
    public class tblConfigKeys
    {
        [Key]
        public int ConfigKeyId { get; set; }

        public string ConfigKey { get; set; }

        public bool IsActive { get; set; }
    }
}