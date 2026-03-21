-- FOR ORDERS WHO TAKE MORE THAN 10 DAYS TO REACH 

Select TotalRevenue, OrderNumber
from salesorders 
where DATEDIFF
( str_to_date(ShipDate, "%d-%b-%y"), str_to_date(OrderDate, "%d-%b-%y" ) ) >10; 
