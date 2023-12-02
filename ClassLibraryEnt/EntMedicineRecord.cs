using System;
using System.Collections.Generic;
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
        public string? Name { get;set; }
        public float UnitPrice { get;set; }
        public string? Location { get;set; }
        public int Stock { get;set; }
        public string? Manufacturer { get;set; }
        public string? Supplier { get;set; }
        public DateTime? MfgDate { get;set; }
        public DateTime? ExpDate { get;set; }
        public string? Group { get; set; }
        public int Position { get; set; }
        public DateTime? EntryDate { get;set; }
        public int Number { get; set; }

        [JsonPropertyName("small")]
        public string? Sign { get; set; }
        public double Molar { get; set; }
        public IList<int>? Electrons { get; set; }
        public override string ToString()
        {
            return $"{Name} - {UnitPrice}";
        }
    }
}
