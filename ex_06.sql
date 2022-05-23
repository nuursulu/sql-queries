-- 6 
-- Напишите запрос, который показывает счета-фактуры,
-- связанные с каждым торговым агентом. На выходе в первой колонке
-- должен быть идентификатор счета, во второй имя и фамилия работника.
SELECT  I.InvoiceId, (Employee.FirstName || ' ' || Employee.LastName)
FROM Employee
    JOIN Customer C on Employee.EmployeeId = C.SupportRepId
    JOIN Invoice I on C.CustomerId = I.CustomerId
WHERE Employee.Title like '%sales%' or '%agent%';

