-- Which customer type generated the highest revenue? --

SELECT 
	c.CustomerType,
	ROUND(
	SUM(
		(t.Quantity * p.UnitPrice) * (1 - t.Discount)),
		2)
		AS TotalRevenue
FROM 
	customersTable c
INNER JOIN transactionTable t
	ON c.CustomerID = t.CustomerID
INNER JOIN productTable p
	ON p.ProductID = t.ProductID
GROUP BY CustomerType
ORDER BY TotalRevenue DESC 
