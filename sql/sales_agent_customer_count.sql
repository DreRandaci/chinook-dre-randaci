-- 21. sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

select e.firstname || ' ' || e.lastname as employeename,
count(c.customerid)
from employee e
join customer c on c.supportrepid = e.employeeid
group by employeename
;