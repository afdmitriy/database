-- 6. Показать список продуктов из таблицы Production.Product с таким же цветом как у продукта ML Road Frame-W - Yellow, 38, используя SELF JOIN.

SELECT DISTINCT p2.[Name] ,p2.Color 
FROM Production.Product AS p1 
INNER JOIN Production.Product AS p2 
ON (p1.Color = p2.Color) 
AND p1.[Name] = 'ML Road Frame-W - Yellow, 38'