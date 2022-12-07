-- 4. Показать товары, цена которых равна максимальной цене товара из той же подкатегории (Таблица Production.Product). 
--    Показать поля [Name], ListPrice и ProductSubcategoryID. 

SELECT [Name]
     , ListPrice
	 , a.ProductSubcategoryID
FROM Production.Product as a
INNER JOIN (SELECT ProductSubcategoryID, MAX(ListPrice) as MaxListPrice FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL
GROUP BY ProductSubcategoryID) as b
ON a.ProductSubcategoryID = b.ProductSubcategoryID
AND a.ListPrice = b.MaxListPrice

