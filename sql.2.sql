-- Avg sales and avg price for a particular channel 

SELECT Channel, avg(UnitPrice) as Avg_price ,
 avg(OrderQuantity*UnitPrice) as Avg_sales 
from salesorders
GROUP BY Channel; 
