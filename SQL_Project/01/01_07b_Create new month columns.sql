-- Create new month columns
SELECT *,
MONTH(CreationDate) AS MonthNumber,
MONTHNAME(CreationDate) AS MonthName
From Orders;
