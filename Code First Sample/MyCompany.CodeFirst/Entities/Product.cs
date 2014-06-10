using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;  //has Attributes we can use for our Entity
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyCompany.CodeFirst.Entities
{
    public class Product
    {
        public int ProductId { get; set; }

        [Required(ErrorMessage="Product Description is required")
        ,StringLength(75, MinimumLength = 5, ErrorMessage = "Product Descriptions must be between 5 and 75 characters in length")]
        public string Description { get; set; }

        [Required(ErrorMessage="Product Name is required")
        ,StringLength(25,MinimumLength=5,ErrorMessage="Product Names must be between 5 and 25 characters in length")]
        public string Name { get; set; }

        public int LineItemId { get; set; }

        public virtual ICollection<LineItem> LineItems { get; set; }
        public virtual ICollection<Category> Categories { get; set; }

    }
}
