using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntMedicineRecord
    {
        public int pk_MedId { get; set; }
        public int Enterer { get; set; }
        [Required]
        public string? Name { get; set; }
        [Range(1, 99999, ErrorMessage = "Kindly Enter the Unit Price.")]
        public float UnitPrice { get; set; }
        [Required]
        public string? Location { get; set; }
        [Range(1, 99999, ErrorMessage = "Kindly Enter the Stock.")]

        public int Stock { get; set; }
        [Required]

        public string? Manufacturer { get; set; }
        [Required]

        public string? Supplier { get; set; }
        [Required]

        public DateTime? MfgDate { get; set; }
        [Required]

        public DateTime? ExpDate { get; set; }
        public string CategoryName { get; set; }
        public int CategoryId { get; set; }

    }
}
