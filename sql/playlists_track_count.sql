-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

select p.Name as 'Playlist Name', count(pt.playlistid) as 'Track Count' from PlaylistTrack pt
left join playlist p on p.playlistid = pt.playlistid
group by p.name
;