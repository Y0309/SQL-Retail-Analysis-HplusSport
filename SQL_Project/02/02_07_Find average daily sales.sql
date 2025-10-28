-- Find average daily sales
SELECT Sum(Quantity)/count(DISTINCT CreationDate) AS AverageDailySales
FROM Orders o
Left JOIN OrderItem p
On o.OrderID = p.OrderID

