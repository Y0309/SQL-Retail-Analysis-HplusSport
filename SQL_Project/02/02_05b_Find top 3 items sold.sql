-- Find top 3 items sold
Select Variety,size,Sum(Quantity) as TotalQuantity
From OrderItem
LEFT JOIN Product
On OrderItem.ProductID=Product.ProductID
Group By Product.ProductID
Order by TotalQuantity DESC
LIMIT 3;
