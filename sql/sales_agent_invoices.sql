-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

select i.InvoiceId, i.InvoiceDate, i.`Total`, i.CustomerId, e.FirstName || " " || e.LastName as SalesAgent from Invoice i
join Customer c on c.CustomerId = i.CustomerId
join Employee e on e.EmployeeId = c.SupportRepId
ORDER BY e.Title == "Sales Support Agent";