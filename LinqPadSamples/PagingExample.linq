<Query Kind="Expression">
  <Connection>
    <ID>28ff8d6d-6118-4100-984c-9e1efdaabb15</ID>
    <Persist>true</Persist>
    <Server>WB122-10</Server>
    <Database>Northwind</Database>
    <ShowServer>true</ShowServer>
  </Connection>
</Query>

(from anItem in Customers
orderby anItem.ContactName
select anItem).Skip(5).Take(3)