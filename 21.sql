/*Which sales agent made the most in sales over all?*/

SELECT Employee.FirstName || ' ' || Employee.LastName AS "Sales Agent", SUM(Total) AS "Yearly Sales" FROM Employee 
Join Customer ON Customer.SupportRepId == Employee.EmployeeId 
Join Invoice ON Invoice.Total 