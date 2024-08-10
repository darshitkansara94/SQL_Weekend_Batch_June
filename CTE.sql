--CTE :
--	CTE is Common Table Expression.
--	It is special type of sql statement.
--	It is accessible with that particular scope.
--	With every execution new table is created and once work is done that tbale get destroy.


	-- Syntax :
		--With cte_name as
		--(
		--	SQL statement
		--)

		--Select * from cte_name


	-- Example :
		select DENSE_RANK() over(order by Employee_Salary desc) as SrNo,
		Employee_Salary,* from tbl_EmployeeData
		where Employee_Salary is not null
		order by Employee_Salary desc

	-- Get Second Highest Salary
		with cte_EmployeeSalary as
		(
			Select DENSE_RANK() over(order by Employee_Salary desc) as salary_rank,
			employee_name,Employee_DOB, Employee_Age, Employee_post
			from tbl_EmployeeData
			where Employee_Salary is not null
		)

		Select * from cte_EmployeeSalary
		where salary_rank = 3

	exec sp_GetSalaryByRank 2

	--insert into tbl_EmployeeData(employee_name,Employee_DOB, Employee_Age, Employee_post,Employee_Salary)
	--values('Mehul',GETDATE(),21,'DBA',450000.00)

-- Delete Duplicate records from table
	with cte_DuplicateEmployee as
	(
		Select ROW_NUMBER() 
			over(partition by Employee_Name,Employee_Age, Employee_Salary order by Employee_no) as number,
		employee_name,Employee_Age,Employee_Salary from tbl_EmployeeData		
	)

	delete from cte_DuplicateEmployee where number > 1

	select * from cte_DuplicateEmployee where number > 1

	select * from tbl_EmployeeData

	Insert into tbl_EmployeeData (Employee_name,employee_dob,Employee_MobileNo,Employee_Age,Employee_Salary)
	Values('jay',getdate(),8745784574,20,40000),
	('jay',getdate(),8745784574,30,31000),
	('jay',getdate(),8745784574,20,40000),
	('Mehul',getdate(),8745784574,21,60000),
	('Shivam',getdate(),8745784574,20,40000),
	('Shivam',getdate(),8745784574,21,30000)

