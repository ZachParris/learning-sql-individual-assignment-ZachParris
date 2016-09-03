/*Provide a query that shows the # of customers assigned to each sales agent.*/

SELECT DISTINCT TOTAL(Invoice.CustomerId) AS "Total Customers", Employee.FirstName || ' ' || Employee.LastName AS "Sales Agent" 
FROM Employee 
Join Customer ON Employee.EmployeeId  == Invoice.CustomerId 
Join Invoice GROUP BY "Sales Agent"