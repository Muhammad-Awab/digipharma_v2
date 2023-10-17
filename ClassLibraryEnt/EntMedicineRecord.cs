using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntMedicineRecord
    {
        public int pk_MedicineId { get; set; }
        public int fk_UserId { get; set; }
        public string? Name { get;set; }
        public float UnitPrice { get;set; }
        public string? Location { get;set; }
        public int Stock { get;set; }
        public string? Manufacturer { get;set; }
        public string? Supplier { get;set; }
        public DateTime? MfgDate { get;set; }
        public DateTime? ExpDate { get;set; }
        public string? EntryDate { get;set; }

    }
}
