-- 8. Показать список ID, которые содержатся в таблице Sales.Store (поле BusinessEntityID), 
--    но не содержатся в таблице Sales.Customer (поле CustomerID).

SELECT BusinessEntityID AS ID
FROM Sales.Store 
EXCEPT 
SELECT CustomerID
FROM Sales.Customer;
