-- Which customers generated the most revenue? --

SELECT 
	c.CustomerName,
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
GROUP BY CustomerName
ORDER BY TotalRevenue DESC 
