-- 8
-- Сколько счетов было выставлено в 2009 и 2011 годах? Каковы
-- соответствующие объемы продаж за каждый год? На выходе в первой
-- колонке должен быть год выставления счет-фактуры, во второй сумма
-- стоимостей всех счет-фактур.
SELECT strftime('%Y',InvoiceDate) InvoiceYear, SUM(Total)
FROM Invoice
GROUP BY InvoiceYear
HAVING InvoiceYear = '2009' or InvoiceYear = '2011';
