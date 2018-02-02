-- Which country's customers spent the most?

select c.country, sum(total) Total from Invoice i, customer c
where i.customerid = c.customerid
group by c.country
order by Total desc