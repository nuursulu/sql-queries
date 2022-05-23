--23
-- Напишите запрос, который показывает треки 2013 года, отсортированные по
-- количеству проданных экземпляров. На выходе в первой колонке должно быть
-- название трека, во второй в отсортированном по убыванию порядку количество
-- экземпляров трека.
SELECT  T.Name, SUM(Quantity) as QuantitySum
FROM InvoiceLine I
         JOIN Invoice I2 on I.InvoiceId = I2.InvoiceId
         JOIN Track T on I.TrackId = T.TrackId
WHERE I2.InvoiceDate like '%2013%'
GROUP BY Name
ORDER BY QuantitySum DESC
;
