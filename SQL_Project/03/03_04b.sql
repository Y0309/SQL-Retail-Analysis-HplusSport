-- Determine what products sold together
SELECT a.ProductID As ProductID1,
b.ProductID As ProductID2,
Count(*) As TimesPurchaed
From OrderItem As a 
INNER JOIN OrderItem As b
On a.OrderID = b.OrderID
And a.ProductID < b.ProductID
GROUP BY a.ProductID, b.ProductID
ORDER BY TimesPurchaed DESC;