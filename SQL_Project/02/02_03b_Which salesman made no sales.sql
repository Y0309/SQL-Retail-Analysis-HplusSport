-- Determine which sales people made no sales
SELECT Salesperson.SalespersonID, FirstName, LastName
FROM Salesperson
Left Join Orders On 
Salesperson.SalespersonID = Orders.SalespersonID
Where Orders.SalespersonID Is Null;
