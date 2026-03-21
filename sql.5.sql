-- Joining on the basis of customer no.
SELECT * from salesorders as s
JOIN customer as c
ON s.CustomerNameIndex = c.Customer ; 
