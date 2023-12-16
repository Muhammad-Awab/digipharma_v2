using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntEmployeeRecord
    {
        public int fk_PharmacyId { get; set; }
        public string? UserFullName { get; set; }
        public string? PhoneNumber { get; set; }
        public string? Address { get; set; }
        public string? WorkExperience { get; set; }
        public string? PharmacyName { get; set; }
        public string? Qualification { get; set; }
        public DateTime? DateOfJoining { get; set; }
        public string? Username { get; set; }
        public string? Password { get; set; }
        public string? Role{ get; set; }
        public string? UserImg { get; set; }
    }
}
