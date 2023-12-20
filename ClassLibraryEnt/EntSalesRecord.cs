using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntSalesRecord
    {
        public int pk_SalesId { get; set; }
        public int fk_BillingId { get; set; }
        public float DiscountPrice { get; set; }
        public string? DiscountPercentage { get; set; }
        public int GrandTotal { get; set; }
        public DateTime CurrentDate { get; set; }
        public DateTime? From { get; set; }
        public DateTime? To { get; set; }

    }
}
