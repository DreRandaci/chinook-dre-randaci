-- How many Invoices were there in 2009 and 2011?

select (select count(*) InvoiceDate from Invoice where InvoiceDate between date('2009-01-01') and date('2009-12-31')) as Total2009, (select count(*) InvoiceDate from Invoice where InvoiceDate between date('2011-01-01') and date('2011-12-31')) as Total2011;