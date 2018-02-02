-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

select i.InvoiceId, i.InvoiceDate, i.`Total`, i.CustomerId, e.FirstName || " " || e.LastName as SalesAgent from Invoice i, Customer c, Employee e
where c.CustomerId = i.CustomerId
and e.EmployeeId = c.SupportRepId
ORDER BY SalesAgent == "Sales Support Agent";