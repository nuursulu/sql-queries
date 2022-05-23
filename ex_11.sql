-- 11
-- Напишите запрос, который включает название трека для каждой позиции
-- из таблицы InvoiceLine. На выходе в первой колонке должен быть
-- идентификатор счет-фактуры, во второй название трека.
SELECT InvoiceLine.InvoiceId, T.Name
FROM InvoiceLine join Track T on InvoiceLine.TrackId = T.TrackId;
