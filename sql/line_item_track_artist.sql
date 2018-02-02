-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

select i.*, t.Name as 'Purchased Track Name', a.Name as 'Artist Name' from InvoiceLine i
join Track t on i.TrackId = t.TrackId
join Album al on al.AlbumId = t.AlbumId
join Artist a on a.ArtistId = al.ArtistId
;