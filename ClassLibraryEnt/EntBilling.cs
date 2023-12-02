using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntBilling
    {
        public int pk_BillingId { get; set; }
        public string fk_MedId { get; set; }
        public int SellerId { get; set; }
        public decimal TotalPrice { get; set; }
        public decimal Discount { get; set; }
        public decimal DiscountPerc { get; set; }
        public decimal GrandTotal { get; set; }



    }
}
