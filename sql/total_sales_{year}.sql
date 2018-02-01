-- What are the respective total sales for each of those years?

select strftime('%Y', InvoiceDate) as Year, sum(total) as TotalSales 
from Invoice 
where InvoiceDate between ('2009-01-01') and date('2011-12-31')
group by Year