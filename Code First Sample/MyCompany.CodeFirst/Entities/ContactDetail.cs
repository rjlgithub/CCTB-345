using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyCompany.CodeFirst.Entities
{
    //This provides extra contact infor for a customer,
    //  stored in a separate table withe a 0/1 to 1 relationship
    public class ContactDetail
    {
        [Key, ForeignKey("Customer")]
        public int ContactDetailId { get; set; }
        public string HomeNumber { get; set; }
        public string OfficeNumber { get; set; }

        //Navigation property
        public virtual Customer Customer { get; set; }

    }
}
