﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;  //has Attributes we can use for our Entity
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyCompany.CodeFirst.Entities
{
    public class Order
    {
        [Key]  //explicitly sets the following property as Primary Key
        public int OrderId { get; set; }
        public DateTime OrderDate { get; set; }
        public string ShipToAddress { get; set; }
        public int CustomerId { get; set; }

        //Navigation propertiies
        public virtual Customer Customer { get; set; }
       // public virtual ICollection<LineItem> LineItems { get; set; }


    }
}
