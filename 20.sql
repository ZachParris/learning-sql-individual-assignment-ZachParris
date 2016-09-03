/*Which sales agent made the most in sales in 2010?*/

SELECT Employee.FirstName || ' ' || Employee.LastName AS "Sales Agent", SUM(Invoice.Total) AS "Yearly Sales" FROM Employee 
Join Customer ON Customer.SupportRepId == Employee.EmployeeId 
Join Invoice ON Invoice.CustomerId 
WHERE Invoice.InvoiceDate LIKE "2010%" 