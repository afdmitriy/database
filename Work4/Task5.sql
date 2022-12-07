-- 5. Показать товары, цена которых больше средней цены в любой модели продуктов (Таблица Production.Product). 
--    Показать поля [Name], ListPrice и ProductModelID.

SELECT [Name], ListPrice, ProductModelID
FROM Production.Product
WHERE ListPrice > ALL
	(
		SELECT AVG(ListPrice)
		FROM Production.Product
		WHERE ListPrice > 0
		GROUP BY ProductModelID
	)
ORDER BY ListPrice
