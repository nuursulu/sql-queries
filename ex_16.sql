-- 16
-- Напишите запрос, который показывает все счета-фактуры и количество
-- позиций. На выходе в первой колонке должен быть идентификатор счет-фактуры,
-- во второй количество позиций в счет-фактуре.
SELECT InvoiceId, COUNT(Quantity) as 'number of positions'
FROM InvoiceLine
GROUP BY InvoiceId;
