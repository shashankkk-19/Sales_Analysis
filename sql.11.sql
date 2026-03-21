-- Order percentage for more than 3,5 and 7 days 

SELECT p.ProductName, p.Index,
Round(count(distinct o.OrderNumber )*100/(select count( distinct o.OrderNumber) from salesorders as o ), 3) Order_percentage 
from products as p
Join Salesorders as o
on p.index= o.ProductDescriptionIndex 
where Datediff(str_to_date(ShipDate, "%d-%b-%y"), str_to_date(OrderDate, "%d-%b-%y") ) > 3 or
Datediff(str_to_date(ShipDate, "%d-%b-%y"), str_to_date(OrderDate, "%d-%b-%y") ) > 5 or
Datediff(str_to_date(ShipDate, "%d-%b-%y"), str_to_date(OrderDate, "%d-%b-%y") ) > 7 
Group by p.Index, p.ProductName 
order by Order_percentage ASC; 
