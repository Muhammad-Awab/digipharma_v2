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
        public string? CurrentDate { get; set; }
        public string? Quantity { get; set; }
        public string? TotalPrice { get; set; }

    }
}
