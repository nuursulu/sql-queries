--2
-- Напишите запрос, который выводит только Customers из Brasil.
-- На выходе в первой колонке должны быть имя и фамилия клиента.
SELECT (FirstName || ' ' || LastName)
FROM Customer
WHERE Country ='Brazil';
