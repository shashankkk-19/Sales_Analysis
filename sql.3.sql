 -- Top 5 customers based on total revenue 

SELECT  CustomerNameIndex , Round(SUM(OrderQuantity * UnitPrice),3) as Total_sales 
 from salesorders
 group by CustomerNameIndex
 order by Total_sales DESC
 LIMIT 5; 
