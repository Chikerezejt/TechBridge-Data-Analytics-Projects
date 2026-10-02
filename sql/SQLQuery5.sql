-- What is the average transaction value? --

SELECT 
	ROUND(
	AVG((t.Quantity * p.UnitPrice) * (1 - t.Discount)),2)
		AS AverageTransactionValue
FROM 
	transactionTable t
INNER JOIN productTable p
	ON t.ProductID = p.ProductID
