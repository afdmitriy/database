-- 4. �������� ������, ���� ������� ����� ������������ ���� ������ �� ��� �� ������������ (������� Production.Product). 
--    �������� ���� [Name], ListPrice � ProductSubcategoryID. 

SELECT [Name]
     , ListPrice
	 , a.ProductSubcategoryID
FROM Production.Product as a
INNER JOIN (SELECT ProductSubcategoryID, MAX(ListPrice) as MaxListPrice FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL
GROUP BY ProductSubcategoryID) as b
ON a.ProductSubcategoryID = b.ProductSubcategoryID
AND a.ListPrice = b.MaxListPrice

