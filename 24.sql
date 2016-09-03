/*Provide a query that shows the most purchased track of 2013.*/

SELECT Track.Name, COUNT(InvoiceLine.Quantity) AS "Sales" FROM Track 
JOIN Invoice JOIN InvoiceLine ON Invoice.InvoiceId == InvoiceLine.InvoiceId 
WHERE Invoice.InvoiceDate LIKE "2013%"