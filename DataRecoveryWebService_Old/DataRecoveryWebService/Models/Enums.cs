using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DataRecoveryWebService.Models
{

    public enum RequestStatuses
    {
        New = 1,
        InProgress = 2,
        Complete = 3,
        Error = 4
    }

}