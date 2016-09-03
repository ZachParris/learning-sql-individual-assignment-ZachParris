/*Which sales agent made the most in sales in 2009? HINT: MAX*/

SELECT Employee.FirstName || ' ' || Employee.LastName AS "Sales Agent", MAX(Invoice.InvoiceId) AS "Yearly Sales" FROM Employee 
Join Customer ON Customer.SupportRepId == Employee.EmployeeId 
Join Invoice ON Invoice.CustomerId 
WHERE Invoice.InvoiceDate LIKE "2009%" 