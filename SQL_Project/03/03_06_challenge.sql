-- Determine new customers
Select FirstName,
LastName, Count(OrderID) As TotalOrders
From Customer
Left Join Orders
On Customer.CustomerID = Orders.CustomerID
Group by Customer.CustomerID
Having Count(OrderID) = 0