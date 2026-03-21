-- Drop-Off rate percentage ; 0 as all orders shipped 

SELECT 
  COUNT(DISTINCT OrderNumber) AS TotalPlacedOrders,
  COUNT(DISTINCT CASE 
    WHEN STR_TO_DATE(ShipDate, "%d-%b-%y") IS NOT NULL 
    THEN OrderNumber 
  END) AS ShippedOrders,
  ROUND(
    (COUNT(DISTINCT OrderNumber) - 
     COUNT(DISTINCT CASE 
       WHEN STR_TO_DATE(ShipDate, "%d-%b-%y") IS NOT NULL 
       THEN OrderNumber 
     END)) * 100.0 / COUNT(DISTINCT OrderNumber), 
    2
  ) AS DropOffRatePercent
FROM salesorders;
