 -- Brief about delayed orders ; orders aking more than 5 days 

SELECT 
  OrderNumber,
  CustomerNameIndex,
  DAYOFWEEK(STR_TO_DATE(OrderDate, '%d-%b-%y')) AS OrderDayOfWeek,
  MONTH(STR_TO_DATE(OrderDate, '%d-%b-%y')) AS OrderMonth,
  WarehouseCode,
  DeliveryRegionIndex,
  Channel,
  CurrencyCode,
  OrderQuantity,
  UnitPrice,
 Round( OrderQuantity * UnitPrice , 2) AS TotalOrderValue,
  CASE 
    WHEN DATEDIFF(
      STR_TO_DATE(ShipDate, '%d-%b-%y'),
      STR_TO_DATE(OrderDate, '%d-%b-%y')
    ) > 5 THEN 1 ELSE 0 
  END AS IsLate
FROM salesorders;
