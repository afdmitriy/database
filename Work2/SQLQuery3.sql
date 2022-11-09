-- 3) Для каждого пола найти суммарное количество часов отпуска из таблицы
-- (поставить фильтр: работник был принят до 2008 года) HumanResources.Employee, не учитывать пустые значения.
SELECT SUM (VacationHours) AS SUMVacationHours, Gender
FROM HumanResources.Employee
WHERE VacationHours is not null
AND HireDate < '2008-01-01'
GROUP BY Gender;
