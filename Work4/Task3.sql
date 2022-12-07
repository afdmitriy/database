-- 3. Показать товар, для которого существует более 2 цветов в той же подкатегории (Таблица Production.Product). 
--    Показать поля [Name], Color и ProductSubcategoryID.

SELECT DISTINCT
	p1.[Name],
	p1.Color,
	p1.ProductSubcategoryID
FROM Production.Product AS p1
WHERE p1.Color IS NOT NULL
	AND p1.[Name] IS NOT NULL
	AND EXISTS (
		SELECT COUNT(DISTINCT p2.Color)
		FROM Production.Product AS p2
		WHERE p2.Color IS NOT NULL
		AND p1.ProductSubcategoryID = p2.ProductSubcategoryID
		HAVING COUNT(DISTINCT p2.Color) > 2
		)
ORDER BY p1.[Name]

