/*Provide a query that shows the total sales per country. Which country's customers spent the most?*/

SELECT  Invoice.BillingCountry AS "Country", MAX(Invoice.Total) AS "Sales" FROM Customer 
Join Invoice ON Customer.CustomerId == Invoice.CustomerId 
GROUP BY "Country" ORDER BY SUM(Total) DESC