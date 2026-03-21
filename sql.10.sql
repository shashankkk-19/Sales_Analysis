-- Average order volume 
Select
ProductDescriptionIndex,
CustomerNameIndex, 
DeliveryRegionIndex, 
CurrencyCode,
Round(ROUND(SUM(OrderQuantity* UnitPrice),2) / Count( distinct OrderNumber ), 3) as AOV 
from salesorders 
Group by ProductDescriptionIndex,CustomerNameIndex, DeliveryRegionIndex,CurrencyCode ;
