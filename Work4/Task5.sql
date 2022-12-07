-- 5. �������� ������, ���� ������� ������ ������� ���� � ����� ������ ��������� (������� Production.Product). 
--    �������� ���� [Name], ListPrice � ProductModelID.

SELECT [Name], ListPrice, ProductModelID
FROM Production.Product
WHERE ListPrice > ALL
	(
		SELECT AVG(ListPrice)
		FROM Production.Product
		WHERE ListPrice > 0
		GROUP BY ProductModelID
	)
ORDER BY ListPrice
