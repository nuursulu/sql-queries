-- 18 
-- Какой торговый агент сделал самый большой объем продаж в 2009 году?
-- На выходе в первой колонке должна быть сумма продаж, во второй имя и
-- фамилия продавца.
SELECT  SUM(I2.Total) as Amount, (E.FirstName || ' ' || E.LastName) as Name
FROM InvoiceLine I
         JOIN Invoice I2 on I.InvoiceId = I2.InvoiceId
         JOIN Customer C on I2.CustomerId = C.CustomerId
         JOIN Employee E on E.EmployeeId = C.SupportRepId
WHERE (E.Title like '%sales%' or '%agent%') and I2.InvoiceDate like '%2009%'
GROUP BY Name
ORDER BY Amount DESC
LIMIT 1;
