--7. �������� ���� PersonType, NameStyle, Title, FirstName, MiddleName, LastName �� ������� Person.Person. ����������� �������� ���� Title �������� �� 'Dear' (���������).
--�������� ����� �������� ��� ���������.
SELECT PersonType
     , NameStyle
	 , ISNULL (Title, 'Dear') AS Title
	 , FirstName
	 , MiddleName
	 , LastName
FROM Person.Person
