-- Provide a query that shows the most purchased track of 2013.

select t.name, count(t.name) purchaseCount
from track t 
join invoiceline l on l.trackid = t.trackid
join invoice i on l.invoiceid = i.invoiceid
where strftime('%Y', i.invoicedate) = "2013"
group by t.name
order by purchaseCount DESC
limit 1
;
