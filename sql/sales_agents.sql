-- Provide a query showing only the Employees who are Sales Agents.

select * from Employee e
where e.Title == "Sales Support Agent";