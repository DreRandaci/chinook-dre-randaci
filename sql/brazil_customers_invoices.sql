-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select c.FirstName|| " " || c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry from Invoice i
left join Customer c on c.CustomerId == i.CustomerId
where c.Country == "Brazil";