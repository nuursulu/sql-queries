-- 14 ?
-- Напишите запрос, который показывает общее количество треков в
-- каждом Playlist. На выходе в первой колонке должно быть количество
-- треков, во второй название плейлиста.
SELECT COUNT( PlaylistTrack.TrackId), P.Name
FROM PlaylistTrack
    JOIN Playlist P on P.PlaylistId = PlaylistTrack.PlaylistId
--     JOIN Track T on T.TrackId = PlaylistTrack.TrackId
GROUP BY P.Name ;
