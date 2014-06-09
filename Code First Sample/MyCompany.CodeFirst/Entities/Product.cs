using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyCompany.CodeFirst.Entities
{
    public class Product
    {
        public int ProductId { get; set; }
        public string Description { get; set; }
        public string Name { get; set; }
        public int LineItemId { get; set; }

        public virtual ICollection<LineItem> LineItems { get; set; }

    }
}
