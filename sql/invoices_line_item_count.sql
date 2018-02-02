-- Provide a query that shows all Invoices but includes the # of invoice line items.

select i.*, count(il.InvoiceId) as 'Line Item Count' from invoice i
join InvoiceLine il on i.invoiceid = il.invoiceid
group by i.invoiceid