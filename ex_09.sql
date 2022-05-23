-- 9
-- Просматривая таблицу InvoiceLine, напишите запрос, который
-- подсчитывает количество позиций для счета-фактуры с InvoiceId 37.
-- На выходе в первой колонке должно быть количество позиций.
SELECT COUNT(Quantity) as 'number of positions'
FROM InvoiceLine
WHERE InvoiceId='37';
