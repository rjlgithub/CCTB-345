using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;  //has Attributes we can use for our Entity
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyCompany.CodeFirst
{
    public class LineItem
    {
        public int LineItemId { get; set; }
        public int Quantity { get; set; }
        public int OrderId { get; set; }
        public int ProductId { get; set; }

        //public virtual Customer Customer { get; set; }
        public virtual Order Order { get; set; }
        public virtual Product Product { get; set; }


    }
}
