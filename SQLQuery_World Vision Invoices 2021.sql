-- Select all columns from 2021 Invoices table

SELECT * 
FROM dbo.Invoices_2021

--Finding out who created the most invoices for 2021

SELECT Created_By, COUNT(Created_by) AS InvoicesCreated
FROM dbo.Invoices_2021
GROUP BY Created_By
ORDER BY InvoicesCreated desc

-- USD supplier payments. Highest to lowest

SELECT Supplier, Total, Currency
FROM dbo.Invoices_2021
WHERE Currency = 'USD'
ORDER BY Total desc

-- Number of invoices used by different currencies

SELECT Currency, COUNT(*) as CurrencyNumber
FROM dbo.Invoices_2021
GROUP BY Currency
ORDER BY CurrencyNumber desc






