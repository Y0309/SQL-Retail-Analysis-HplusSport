-- Find top customers
SELECT FirstName, LastName, 
Count(DISTINCT Orders.OrderID) As TotalOrders,
Sum(Quantity) As TotalQuantity,
Sum(TotalDue) As TotalAmount
FROM Orders
Left Join OrderItem
On Orders.OrderID = OrderItem.OrderID
Left Join Customer
On Orders.CustomerID = Customer.CustomerID
Group BY Customer.CustomerID
Order by TotalAmount DESC
