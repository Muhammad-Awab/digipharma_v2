using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryEnt
{
    public class EntPointOfSale
    {
        public int pk_PointOfSaleId { get; set; }
        public int fk_BillingId { get; set; }
        public int fk_UserId { get; set; }
        public int fk_MedicineId { get; set; }
        public string? CustomerName { get; set; }
        public int? Quantity { get; set; }
        public string? TotalPrice { get; set; }
        public float? DiscountPrice { get; set; }
        public int? DiscountPercentage { get; set; }
        public float? GrandTotal { get; set; }
        public DateTime CurrentDate { get; set; }
        public DateTime? From { get; set; }
        public DateTime? To { get; set; }

    }
}
