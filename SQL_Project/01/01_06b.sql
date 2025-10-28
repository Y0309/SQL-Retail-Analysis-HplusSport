-- Remove null values from customer table
Select FirstName, LastName,
Email, Phone
From Customer
Where Email IS NOT NULL And 
Phone IS NOT NULL;  