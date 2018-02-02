-- Which sales agent made the most in sales in 2009?

-- SUPER HACKY WAY
    -- select the sales winners name,  
select e.firstName || " " || e.lastName as '2009 Sales Winner', sum(i.total) as `Total` from Invoice i
join customer c on c.customerid =  i.customerid
join employee e on e.employeeid = c.supportrepid
where i.invoiceDate like '2009%'
group by e.Employeeid
order by sum(i.total) desc
limit 1

-- WAY BETTER WAY

--select the column alias "2009 Sales Winner" (SQLite likes double quotes for this. it did not work with single quotes) which is the person with the max sales number 
select "2009 Sales Winner", max("Total") from (
    -- select the concatonated name and create that alias, select the sum of the invoice totals per sales agent
select e.firstName || " " || e.lastName as "2009 Sales Winner", sum(i.total) as "Total" from Invoice i
-- find which employees are sales agents by traversing the invoice table to the customer table to join employees
join customer c on c.customerid =  i.customerid
join employee e on e.employeeid = c.supportrepid
-- only invoices that contain 2009 ('like' == 'contains')
where i.invoiceDate like '2009%'
group by e.Employeeid
)