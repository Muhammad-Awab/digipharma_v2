using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntRegistration
    {
        public int Id { get; set; }
        public string? PharmacyName { get; set; }
        public string? PharmacyOwnerName { get; set;}
        public string? Username { get; set; }
        public string? Password { get; set; }
        public string?  ConfirmPassword { get; set; }
    }
}
