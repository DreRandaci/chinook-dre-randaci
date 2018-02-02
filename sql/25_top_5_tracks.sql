-- Provide a query that shows the top 5 most purchased songs.

select t.name, count(t.name) PurchaseCount
from Track t 
join InvoiceLine l on l.trackId = t.trackId
group by t.name
order by purchasecount DESC
limit 5
;