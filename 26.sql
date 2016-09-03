/*Provide a query that shows the top 3 best selling artists.*/

SELECT DISTINCT Artist.Name AS "Top 3 Artists", COUNT(InvoiceLine.InvoiceLineId) AS "Total" FROM InvoiceLine 
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId 
JOIN Track ON InvoiceLine.TrackId == Track.TrackId 
JOIN Album ON Track.AlbumId == Album.AlbumId 
JOIN Artist ON Album.ArtistId == Artist.ArtistId 
GROUP BY InvoiceLine.InvoiceLineId LIMIT 3;