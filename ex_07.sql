-- 7
-- Напишите запрос, который показывает общую сумму счета, имя клиента,
-- страну и имя агента по продаже для всех счетов и клиентов. На выходе
-- в первой колонке должна быть общая стоимость счет-фактуры, во второй
-- имя и фамилия покупателя, в третьей страна выставления счета,
-- в четвертой имя и фамилия продавца.
SELECT I.Total, (C.FirstName || ' ' || C.LastName), I.BillingCountry, (E.FirstName || ' ' || E.LastName)
FROM Employee E
         JOIN Customer C on E.EmployeeId = C.SupportRepId
         JOIN Invoice I on C.CustomerId = I.CustomerId
WHERE E.Title like '%sales%agent%';
