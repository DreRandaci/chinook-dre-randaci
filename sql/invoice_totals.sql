-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

select i.`Total`, c.FirstName || " " || c.LastName as CustomerName, c.Country, e.FirstName || " " || e.LastName as SalesAgent from Invoice i
join Customer c on c.CustomerId = i.CustomerId
join Employee e on e.EmployeeId = c.SupportRepId
order by SalesAgent;