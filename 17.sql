SELECT Invoice.* FROM Invoice JOIN InvoiceLine ON Invoice.InvoiceId == InvoiceLine.InvoiceId GROUP BY Invoice.InvoiceId;