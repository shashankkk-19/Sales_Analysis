-- Total sales and total orders by a customer 
SELECT 
    CustomerNameIndex,
    COUNT(OrderNumber) AS Orders,
	ROUND(SUM(OrderQuantity * UnitPrice),3) AS TotalSales
FROM SalesOrders
GROUP BY CustomerNameIndex;
