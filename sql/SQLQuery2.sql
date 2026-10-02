-- Which product category generated the highest revenue? --

SELECT 
	p.Category,
	ROUND(
	SUM(
		(t.Quantity * p.UnitPrice) * (1 - t.Discount)),
		2)
		AS Revenue
FROM 
	productTable p
INNER JOIN transactionTable t
	ON p.ProductID = t.ProductID
GROUP BY Category
ORDER BY Revenue DESC 
