SELECT COUNT(InvoiceId) FROM invoice WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%' 

OR

SELECT TOTAL(Total) FROM invoice WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%' 