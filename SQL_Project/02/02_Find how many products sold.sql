-- Find how many products sold
SELECT 
Count(DISTINCT ProductID) As TotalUniqueProducts, Sum(Quantity) As TotalQuantity
FROM OrderItem
