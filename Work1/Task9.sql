--9. ѕоказать ID департамента (DepartmentID), название отдела (GroupName) и вид де€тельности данного отдела (Name) из таблицы HumanResources.Department
--и отсортировать строки таблицы в алфавитном пор€дке вида де€тельности (Name).
SELECT DepartmentID
     , GroupName
	 , Name
FROM HumanResources.Department
ORDER BY Name;