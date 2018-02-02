-- Provide a query that includes the purchased track name with each invoice line item.

select i.InvoiceId, t.Name from InvoiceLine i
join Track t on i.TrackId = t.TrackIdt 