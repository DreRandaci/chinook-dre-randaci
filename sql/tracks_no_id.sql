-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

select t.name as 'Track Name', t.composer, t.milliseconds, t.bytes, t.unitprice, a.title as 'Album Name', m.name as 'Media Type Name',  g.name as 'Genre Name' from Track t
join album a on a.albumid = t.albumid
join genre g on g.genreid = t.genreid
join MediaType m on m.mediatypeid = t.mediatypeid