-- 3. Показать список ID людей (поле BusinessEntityId), в котором указано, работает ли человек в магазине или нет, из таблиц Sales.Store, Person.BusinessEntity, используя RIGHT OUTER JOIN.

SELECT COALESCE(p.[BusinessEntityId], '0') AS Name
	 , COALESCE(m.[BusinessEntityId], 'Without_Name') AS Model_Name
FROM Sales.Store AS p
RIGHT OUTER JOIN Person.BusinessEntity AS m
ON p.BusinessEntityID = m.BusinessEntityID;