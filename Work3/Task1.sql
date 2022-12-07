-- 1. Показать номера телефонов (PhoneNumber) и поля PersonType, FirstName, LastName из таблиц Person.Person, Person.PersonPhone.

SELECT PhoneNumber, PersonType, FirstName, LastName
FROM Person.Person AS p
INNER JOIN Person.PersonPhone AS s
ON p.BusinessEntityID = s.BusinessEntityID;