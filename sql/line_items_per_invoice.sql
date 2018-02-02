-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

select count(*) as 'Number of Items', InvoiceId from InvoiceLine
group by InvoiceId