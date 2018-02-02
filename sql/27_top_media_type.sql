-- Provide a query that shows the most purchased Media Type.

SELECT m.Name AS 'Media type', COUNT(m.MediaTypeId) 'Total Count' 
FROM InvoiceLine li, Track t, MediaType m
WHERE li.TrackId = t.TrackId
	and m.MediaTypeId = t.MediaTypeId
GROUP BY m.Name
ORDER BY m.MediaTypeId;