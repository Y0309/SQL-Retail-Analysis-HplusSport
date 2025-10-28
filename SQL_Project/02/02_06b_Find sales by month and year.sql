-- Find sales by month and year
SELECT Monthname(CreationDate) AS MonthName,
       Year(CreationDate) AS OrderYear,
       Count(DISTINCT Orders.OrderID) AS TotalOrders,
       Sum(Quantity) AS TotalQantity,
       Sum(TotalDue) As TotalAmount
From Orders
Left Join OrderItem
On Orders.OrderID = OrderItem.OrderID
Group By MonthName, OrderYear
Order by OrderYear, Month(CreationDate)
