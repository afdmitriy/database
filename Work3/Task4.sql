-- 4. Показать список продуктов (ProductID), которые содержатся на нескольких складах (LocationID), из таблицы Production.ProductInventory, используя SELF JOIN.

SELECT DISTINCT p1.LocationID
              , p1.ProductID
FROM Production.ProductInventory AS p1
INNER JOIN Production.ProductInventory AS p2
ON p1.ProductID = p2.ProductID
AND p1.LocationID <> p2.LocationID;