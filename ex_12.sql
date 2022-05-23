-- 12
-- Напишите запрос, который включает название приобретенного трека и
-- имя исполнителя для каждой позиции счета-фактуры из таблицы InvoiceLine.
-- На выходе в первой колонке должен быть идентификатор счет-фактуры,
-- во второй название трека, в третьей имя исполнителя.
SELECT I.InvoiceId,T.Name, A2.Name
FROM InvoiceLine I
    JOIN Track T on I.TrackId = T.TrackId
    JOIN Album A on T.AlbumId = A.AlbumId
    JOIN Artist A2 on A.ArtistId = A2.ArtistId;

