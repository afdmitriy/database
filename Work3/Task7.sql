-- 7. Показать комбинированный список таблиц Person.AddressType, Person.ContactType по полям ID, Name, ModifiedDate, используя UNION.

SELECT a.ID, [Name], ModifiedDate 
FROM Person.AddressType AS a
UNION 
SELECT c.ID, [Name], ModifiedDate
FROM Person.ContactType AS c;