-- how many orders deliver timely 

Select 
Channel ,
count(*) as Timelyorders, 
Round(SUM(UnitPrice), 3)  
as Total_unitprice 
from salesorders
where Datediff
( str_to_date(ShipDate , "%d-%b-%y"), str_to_date(OrderDate, "%d-%b-%y")) < 5
Group by Channel;
