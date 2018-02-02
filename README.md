# Chinook Database Queries
These are exercises querying the Chinook Database utilizing SQLite and DB Browser. The Chinook Dataset mimics a music service account database, so there are tables for Artists, Albums, Tracks, Playlists, Customers, Employees, and Invoices as outlined in the Entity Relationship Diagram (ERD) below. 

[Check Out the Chinook Database on Codeplex](https://chinookdatabase.codeplex.com/)

### ERD
Here is the ERD for the database

![chinook-erd](https://cloud.githubusercontent.com/assets/23462252/23724709/59d83bb0-0413-11e7-935c-b20bee8b31cc.jpg)

### Queries
Look in the `sql` directory for all the SQL files and queries. Each file contains a specific data extraction objective. 

#### Query Example (found in `sql/26_top_3_artis.sql`)
- Provide a query that shows the top 3 best selling artists.
```
SELECT a.Name 'Artist', sum(li.UnitPrice) 'Total Sold' 
FROM InvoiceLine li, Track t, Album al, Artist a
WHERE li.TrackId = t.Trackid 
	and al.AlbumId = t.AlbumId 
	and a.ArtistId = al.ArtistId
GROUP BY a.Name
ORDER BY COUNT(a.ArtistId) DESC
limit 3;
```