-- Find null values in Customer table
Select *
From Customer
Where FirstName IS NULL OR LastName is null
OR Email IS NULL OR Phone IS NULL;