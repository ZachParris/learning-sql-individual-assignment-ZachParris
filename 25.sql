/*Provide a query that shows the top 5 most purchased tracks over all.*/

SELECT Track.Name, COUNT(InvoiceLine.TrackId) AS "Sales" FROM InvoiceLine 
JOIN Track ON Track.TrackId == InvoiceLine.TrackId 
JOIN Invoice ON Invoice.InvoiceId == InvoiceLine.InvoiceId 
GROUP BY InvoiceLine.TrackId LIMIT 5;