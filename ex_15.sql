-- 15
-- Напишите запрос, который показывает все треки, но не отображает их
-- идентификаторы. На выходе в первой колонке должно быть название трека,
-- во второй название альбома, в третье медиа-тип, в четвертой жанр трека.
SELECT T.Name as 'Track name', A.Title as 'Album', MT.Name as 'Media type', G.Name as 'Genre'
FROM Track T
    JOIN Album A on A.AlbumId = T.AlbumId
    JOIN MediaType MT on MT.MediaTypeId = T.MediaTypeId
    JOIN Genre G on G.GenreId = T.GenreId;
