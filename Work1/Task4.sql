--4. �������� ���������� �������� ������� �� ������� Person.Address, � ������� �������� ������� � ������ (SpatialLocation).
SELECT DISTINCT City
FROM Person.[Address]
WHERE (SpatialLocation is not null);