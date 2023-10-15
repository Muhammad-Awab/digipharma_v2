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
        public string DiscountPercentage { get; set; }
        public string GrandTotal { get; set; }
        public string CurrentDate { get; set; }

    }
}
