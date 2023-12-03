using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntPointOfSale
    {
        public int pk_POSId { get; set; }
        public int fk_BillingId { get; set; }
        public int fk_MedId { get; set; }
        public int Quantity { get; set; }
        public decimal Medicineprice { get; set; }
        public string MedicineName { get; set; }
        public DateTime CurrentDate { get; set; }
        public DateTime? From { get; set; }
        public DateTime? To { get; set; }

    }
}
