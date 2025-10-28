-- Determine top customer state
Select 
State, 
Sum(Quantity) as TotalQuantity
From Orders
Left Join OrderItem
On Orders.OrderID = OrderItem.OrderID
Left Join Customer
On Orders.CustomerID = Customer.CustomerID
Group By State
Order By TotalQuantity Desc
Limit 1;