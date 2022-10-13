--10. ѕоказать название фирмы (Name) из таблицы Purchasing.Vendor. ≈сли фирма называетс€ 'Advanced Bicycles', заменить значение пол€ Name на NULL. Ќазвани€ полей оставить без изменений.
SELECT NULLIF (Name, 'Advanced Bicycles') AS Name
FROM Purchasing.Vendor

