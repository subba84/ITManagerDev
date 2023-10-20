using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DataRecovery.Models
{
    public class tblConfigMasterKeys
    {
        [Key]
        public int ConfigMasterKeyId { get; set; }

        public string ConfigKey { get; set; }

        public bool IsActive { get; set; }
    }
}