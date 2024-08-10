create procedure sp_SelectEmployeeTopRecords
As
Begin
	Select top 3 Employee_Name,Employee_Id,Employee_Age from tbl_Employee
		order by Employee_Id desc
End