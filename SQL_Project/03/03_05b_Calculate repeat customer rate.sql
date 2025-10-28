-- Calculate repeat customer rate
With Repreat_Customers AS 
(SELECT CustomerID as Repeat_Cus
From Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1
)
SELECT 
(Count(DISTINCT Repeat_Cus)/
Count(DISTINCT CustomerID))*100 AS RepeatCustomerRate
FROM Orders
LEFT JOIN Repreat_Customers
ON Orders.CustomerID = Repreat_Customers.Repeat_Cus;
