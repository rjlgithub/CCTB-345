<Query Kind="Expression">
  <Connection>
    <ID>28ff8d6d-6118-4100-984c-9e1efdaabb15</ID>
    <Persist>true</Persist>
    <Server>WB122-10</Server>
    <Database>Northwind</Database>
    <ShowServer>true</ShowServer>
  </Connection>
</Query>

from cust in Customers
select new
{
  Name = cust.CompanyName,
  OrderCount = cust.Orders.Count,
  OrderDates = from anOrder in cust.Orders
  			   select anOrder.OrderDate 
}