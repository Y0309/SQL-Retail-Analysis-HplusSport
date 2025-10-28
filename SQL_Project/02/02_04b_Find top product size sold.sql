-- Find top product size sold
 Select Size,
Sum(Quantity) As TotalQuantity
From OrderItem o
Left Join Product p On
o.ProductID = p.ProductID
Group By Size
Order By TotalQuantity Desc
