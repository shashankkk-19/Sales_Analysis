-- Identify declining products based on revenue over the last 6 months.
SELECT ProductDescriptionIndex, MONTH(str_to_date(OrderDate, "%d-%b-%y") ) as month, 
Round(Sum(OrderQuantity*UnitPrice) , 2) as Monthlysales
 from salesorders 
 WHERE str_to_date(OrderDate, "%d-%b-%y") >=date_sub( (select max(str_to_date(OrderDate, "%d-%b-%y") )
 from salesorders ) , Interval 6 month ) 
 group by ProductDescriptionIndex, month
 Order by Monthlysales asc , month asc  ; 