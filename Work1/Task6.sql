--6. �������� ID (StateProvinceID) � �������� (Name) �������� ��� ������, � ����� ID ������, �� ���������� ������� ��� ������������� (TerritoryID) �� ������� Person.StateProvince.
--�������� ������ ������� �� ������ ('Alaska', 'Alabama', 'Colorado', 'Georgia', 'Iowa'), ��������� �������� IN.
SELECT StateProvinceID, Name, TerritoryID
FROM Person.StateProvince
WHERE Name in ('Alaska', 'Alabama', 'Colorado', 'Georgia', 'Iowa');