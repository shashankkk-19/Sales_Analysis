-- Gross profit margin for sales per month  

SELECT ProductDescriptionIndex,
 MONTH(str_to_date(OrderDate, "%d-%b-%y")) as month , 
 ROUND(SUM(OrderQuantity* UnitPrice),2) as Total_sales, 
ROUND(SUM(UnitPrice) ,2) as Total_unitprice, 
ROUND(SUM(OrderQuantity * UnitPrice) - SUM(UnitPrice),2)  as GrossProfit, 
(ROUND(SUM(OrderQuantity * UnitPrice) - SUM(UnitPrice),2) / Round(SUM(OrderQuantity * UnitPrice),3) ) as Profitmargin
from salesorders 
group by ProductDescriptionIndex, month 
order by month; 
