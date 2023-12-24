using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntEmployeeRecord
    {
        public int fk_PharmacyId { get; set; }
        [Required]
        public string? UserFullName { get; set; }
        [Required]
           
        public string? PhoneNumber { get; set; }
        [Required]

        public string? Address { get; set; }
        [Required]

        public string? WorkExperience { get; set; }
        [Required]

        public string? PharmacyName { get; set; }
        [Required]

        public string? Qualification { get; set; }
        [Required]

        public DateTime? DateOfJoining { get; set; }
       

        public string? Username { get; set; }
       

        public string? Password { get; set; }
       

        public string? Role{ get; set; }
        

        public string? UserImg { get; set; }

    }
}
