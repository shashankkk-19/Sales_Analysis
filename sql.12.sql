-- Recency, frequency and monetary of each customer 

SELECT CustomerNameIndex ,
DATEDIFF(str_to_date('12-jan-20', "%d-%b-%y"), MAX(str_to_date(OrderDate, "%d-%b-%y")) ) as Recency,
Count( distinct OrderNumber) as Frequency,
ROUND(SUM(TotalRevenue),2) as Monetary 
from salesorders
Group by CustomerNameIndex 
Order by recency asc, frequency asc, monetary asc ;  

