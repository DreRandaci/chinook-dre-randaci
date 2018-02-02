-- Provide a query that shows the top 3 best selling artists.

SELECT a.Name 'Artist', sum(li.UnitPrice) 'Total Sold' 
FROM InvoiceLine li, Track t, Album al, Artist a
WHERE li.TrackId = t.Trackid 
	and al.AlbumId = t.AlbumId 
	and a.ArtistId = al.ArtistId
GROUP BY a.Name
ORDER BY COUNT(a.ArtistId) DESC
limit 3;