--1
-- Напишите запрос, который выводит Customers (только их полные имена,
-- идентификатор клиента и страну), которые не находятся в US.
-- На выходе в первой колонке должны быть имя и фамилия клиента,
-- во второй идентификатор клиента, в третьей название страны.
SELECT (FirstName || ' ' || LastName), CustomerId, Country
FROM Customer
WHERE Country  NOT LIKE 'US%';