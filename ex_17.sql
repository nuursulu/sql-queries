-- 17 -- 
-- Напишите запрос, который показывает общий объем продаж, совершенных
-- каждым торговым агентом. На выходе в первой колонке должна быть сумма
-- продаж, во второй имя и фамилия продавца.
SELECT  SUM(I2.Total) as 'Sales amount', (E.FirstName || ' ' || E.LastName) as Name
FROM InvoiceLine I
        JOIN Invoice I2 on I.InvoiceId = I2.InvoiceId
        JOIN Customer C on I2.CustomerId = C.CustomerId
        JOIN Employee E on E.EmployeeId = C.SupportRepId
WHERE E.Title like '%sales%' or '%agent%'
GROUP BY Name;
