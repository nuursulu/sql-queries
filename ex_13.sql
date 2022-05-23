-- 13
-- Напишите запрос, который показывает количество позиций счет-фактур
-- в каждой стране. На выходе в первой колонке должно быть количество
-- позиций счет-фактур, во второй название страны. HINT: GROUP BY
SELECT COUNT(Quantity), C.Country
FROM InvoiceLine
    JOIN Invoice I on InvoiceLine.InvoiceId = I.InvoiceId
    JOIN Customer C on I.CustomerId = C.CustomerId
GROUP BY C.Country;
