-- Row Number()
	Display Sequantial number.

	-- Synatx
		select ROW_NUMBER() over(order by column_name) as alias_name,
		column, column2, column3 from table_name		

	-- Example
		Select ROW_NUMBER() over(order by Employee_id) as SrNo,
		Employee_Id,Employee_Name,Employee_Age,Manager_Id
		from tbl_Employee
-- Dense Rank()
	Assign same number to same value.

	-- Syntax :
		Select DENSE_RANK() over(order by column_name) as alias_name,
		column1, column2, column3 from table_name

	--Example
		Select DENSE_RANK() over(order by Employee_name) as srno,
			Employee_Id,Employee_Name,Employee_Age,Manager_Id
		from tbl_Employee

-- select * from tbl_Employee

delete from tbl_Employee where Employee_Id  = 3