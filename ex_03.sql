--3
-- Напишите запрос, который выводит счета-фактуры Customers из
-- Brasil. На выходе в первой колонке должны быть имя и фамилия клиента,
-- во второй идентификатор счета, в третьей дата выставления счета,
-- в четвертой страна выставления счета.
SELECT (Customer.FirstName || ' ' || Customer.LastName) as FullName, I.InvoiceId, I.InvoiceDate, I.BillingCountry
FROM Customer
    JOIN Invoice I on Customer.CustomerId = I.CustomerId
WHERE Country ='Brazil';
