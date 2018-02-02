-- Provide a query that shows the total sales per country.

select BillingCountry, sum(total) Total from Invoice
group by BillingCountry
order by Total desc