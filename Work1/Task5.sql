--5. �������� ID (ProductID), �������� (Name) � ���� (Color) ������� �� ������� Production.Product, ���������� � �������� ����� 'Chainring' (���������).
SELECT ProductID, Name, Color
FROM Production.Product
WHERE Name like '%chainring%';