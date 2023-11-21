namespace Pharmacy.Pages
{
      public class PagingInfo
    {
        public int TotalItems { get; set; }
        public int ItemsPerPage { get; set; } = 5;
        public int CurrentPage { get; set; }
        public int TotalPages
        {
            get
            {
                return (int)Math.Ceiling((decimal)TotalItems /
                    ItemsPerPage);
            }
        }
    }
}
