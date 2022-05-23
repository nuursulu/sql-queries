-- 10 
-- Просматривая таблицу InvoiceLine, напишите запрос, который
-- подсчитывает количество позиций для каждой счета-фактуры. На выходе
-- в первой колонке должен быть идентификатор счет-фактуры, во второй
-- количество позиций. HINT: GROUP BY.
SELECT InvoiceId, COUNT(Quantity) as 'number of positions'
FROM InvoiceLine
GROUP BY InvoiceId;
