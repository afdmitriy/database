-- 1. Показать Фамилию Имя и Отчество самого пожилого сотрудника (Таблицы HumanResources.Employee и Person.Person). Показать поля FirstName, MiddleName, LastName. 

SELECT p.FirstName ,p.MiddleName ,p.LastName ,DATEDIFF(YEAR,e.BirthDate,GETDATE()) AS Age 
FROM Person.Person AS p 
INNER JOIN HumanResources.Employee AS e 
ON p.BusinessEntityID = e.BusinessEntityID 
WHERE e.BirthDate = ( SELECT MIN(BirthDate) 
					  FROM HumanResources.Employee );