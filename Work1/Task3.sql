--3. �������� ���� ProductID, BusinessEntityID, AverageLeadTime, StandardPrice �� ������� Purchasing.ProductVendor, ��� �������, ������� ���� ������� (���� �� ������) ��� ��������� ������� (LastReceiptCost).
SELECT ProductID, BusinessEntityID, AverageLeadTime, StandardPrice
FROM Purchasing.ProductVendor
WHERE LastReceiptCost is not null;