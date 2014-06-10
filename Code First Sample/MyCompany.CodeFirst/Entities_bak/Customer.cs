using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyCompany.CodeFirst.Entities
{
    //This is a hand-crafted entity/class.
    //  We create these ourselves in Code-First
    public class Customer
    {
        //By default conventions, Entity Framework will treat
        //  CustomerId as a Primary Key in the database AND
        //  an Identity column in the database table.
        public int CustomerId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        [NotMapped]  //Tell Entity Framework not to expect a column in the database table
        public string FormalName
        { get { return LastName + ", " + FirstName; } }

        [NotMapped]
        public string FullName
        { get { return FirstName + " " + LastName; } }

        //Navigation propertiies
        public virtual ICollection<Order> Orders { get; set; }
        //public virtual ContactDetail ContactDetail { get; set; }

    }
}
