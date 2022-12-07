-- 2. Показать список продуктов (поле Name) в котором указано, есть ли у продукта название модели или нет, из таблиц Production.ProductionModel, Production.Product, используя LEFT OUTER JOIN.

SELECT COALESCE(p.[Name], 'Without_Name') AS Name
	 , COALESCE(m.[Name], 'Without_Name') AS Model_Name
FROM Production.Product AS p
LEFT OUTER JOIN Production.ProductModel AS m
ON p.ProductID = m.ProductModelID;
