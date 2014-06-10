using NorthwindSystem.DataAccessLayer;
using NorthwindSystem.Entities;
using System;
using System.Data.Entity;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NorthwindSystem.BusinessLogicLayer
{
    //This is the primary public access into the NorthwindSystem data
    public class NorthwindManager
    {
        public List<Employee> GetEmployees()
        {
            using (var context = new NWContext())
            {
                var result = context.Employees;
                return result.ToList();
            }
        }

        //TODO: Create a method called GetOrders() that will return a list of Order objets from teh database.
        public List<Order> GetOrders()
        {
            using (var context = new NWContext())
            {
                var result = context.Orders;
                return result.ToList();
            }
        }

        public List<Region> GetRegions()
        {
            using (var context = new NWContext())
            {
                var result = context.Regions.Include(item => item.Territories).OrderBy(item => item.RegionDescription);
                return result.ToList();
            }

        }

    }
}
