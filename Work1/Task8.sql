--8. �������� ���� ProductID, Name �� ������� Production.Product � ����������� ������� COALESCE(). 
--�������� ���� Measurement, ���, �����, ���� �������� � ���� Class ��������, �� �������� ���, � �����, �������� �������� � ���� Color. 
--���� � � ���� Color �������� ����������, �� ������� �������� 'UNKNOWN'.
SELECT ProductID, Name
	 , COALESCE (Class, Color, 'UNKNOWN') as Measurement
FROM Production.Product;
 
