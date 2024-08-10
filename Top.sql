--Top :
--	Display top rows with limited number.
--	Number can be dynamic.
--	Reduce load on website during page load.

	-- Syntax :
		Select top number column1, column2 from table_name

	--Example
		-- use EmployeeDB

		Select * from tbl_Employee

		Select Employee_Name,Employee_Id,Employee_Age from tbl_Employee
		order by Employee_Id desc

		Select top 3 Employee_Name,Employee_Id,Employee_Age from tbl_Employee
		order by Employee_Id desc

		select Employee_Name,Employee_Id,Employee_Age from tbl_Employee
		order by Employee_Id desc

		exec sp_SelectEmployeeTopRecords