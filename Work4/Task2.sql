-- 2. ���������� ���������� ����������� � ���� (StateProvinceName), � ������� ��������� ������������ ����� ����������� (������������� Sales.vSalesPerson) 

SELECT 
	a.StateProvinceName,
	Count(*) as EmploeesCount
FROM Sales.vSalesPerson as a
WHERE a.StateProvinceName IS NOT NULL
GROUP BY a.StateProvinceName
HAVING COUNT(*) = (
	SELECT MAX (b.EmploeesCount)
	FROM (
		SELECT COUNT(*) as EmploeesCount
		FROM Sales.vSalesPerson as b
		GROUP BY StateProvinceName
		) as b
	)