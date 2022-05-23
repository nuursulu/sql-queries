--21
-- Напишите запрос, который показывает количество клиентов, назначенных
-- каждому торговому агенту. На выходе в первой колонке должно быть
-- количество клиентов, во второй имя и фамилия продавца.
SELECT  COUNT(I2.CustomerId) as Amount, (E.FirstName || ' ' || E.LastName) as Name
FROM InvoiceLine I
         JOIN Invoice I2 on I.InvoiceId = I2.InvoiceId
         JOIN Customer C on I2.CustomerId = C.CustomerId
         JOIN Employee E on E.EmployeeId = C.SupportRepId
WHERE (E.Title like '%sales%' or '%agent%')
GROUP BY Name;
