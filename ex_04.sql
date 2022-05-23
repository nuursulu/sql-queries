--4 Напишите запрос, который выводит только Employees, которые являются
-- агентами по продажам. На выходе в первой колонке должны быть
-- имя и фамилия работника. HINT: where title like '%sales%' or '%agent%'
SELECT (FirstName || ' ' || LastName), Title
FROM Employee
WHERE Title LIKE '%sales%' or '%agent%';
