-- Find infrequent customers
SELECT Customer.CustomerID,
FirstName, LastName,
Count(DISTINCT OrderID) As TotalOrders
From Orders
Left JOIN Customer
On Orders.CustomerID = Customer.CustomerID
GROUP BY Customer.CustomerID
HAVING Count(DISTINCT OrderID) = 1
