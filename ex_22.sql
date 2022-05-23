--22
-- Напишите запрос, который показывает общий объем продаж по странам.
-- На выходе в первой колонке должно быть название страны, во второй в
-- отсортированном по убыванию сумма счет-фактур.
SELECT  I2.BillingCountry, SUM(I2.Total) as Amount
FROM InvoiceLine I
         JOIN Invoice I2 on I.InvoiceId = I2.InvoiceId
         JOIN Customer C on I2.CustomerId = C.CustomerId
         JOIN Employee E on E.EmployeeId = C.SupportRepId
WHERE (E.Title like '%sales%' or '%agent%')
GROUP BY BillingCountry
ORDER BY Amount DESC
;
