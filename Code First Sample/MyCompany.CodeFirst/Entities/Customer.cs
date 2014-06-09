using System;
using System.Collections.Generic;
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
        //  CustomerID as a Primary Key in the database AND
        //  an Identity column in the database table.
        public int CustomerID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        //Navigation propertiies
        public virtual IEnumerable<Order> Orders { get; set; }
    }
}
