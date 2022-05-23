--24
-- Напишите запрос, который показывает топ-5 самых покупаемых треков за
-- все время. На выходе в первой колонке должно быть название трека, во второй
-- в отсортированном по убыванию порядке количество экземпляров трека.
SELECT  T.Name, SUM(Quantity) as QuantitySum
FROM InvoiceLine I
         JOIN Invoice I2 on I.InvoiceId = I2.InvoiceId
         JOIN Track T on I.TrackId = T.TrackId
GROUP BY Name
ORDER BY QuantitySum DESC
LIMIT 5;
;
