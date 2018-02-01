-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

select c.FirstName || " " || c.LastName, c.CustomerId, c.Country 
from Customer c
where c.Country != "USA";