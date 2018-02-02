--  Provide a query that shows total sales made by each sales agent.

select e.firstname || " " || e.lastname as 'Sales Agent', sum(i.total) as 'Total sales' from invoice i
join customer c on c.customerid =  i.customerid
join employee e on e.employeeid = c.supportrepid
group by e.employeeid;