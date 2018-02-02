-- Which sales agent made the most in sales over all?

select "Sales Winner", max("Total") as "Total" from (
select e.firstName || " " || e.lastName as "Sales Winner", sum(i.total) as "Total" from Invoice i
join customer c on c.customerid =  i.customerid
join employee e on e.employeeid = c.supportrepid
group by e.Employeeid
)