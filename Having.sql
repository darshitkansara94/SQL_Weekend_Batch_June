--Having Caluse:
--	Having clause is used to filter out the data from select statement.
--	It is used with Aggregate function.

	-- Execution with error
	Select Employee_Id,Employee_Name,Employee_Age,Manager_Id 
	from tbl_Employee
	where count(Employee_Id) > 2

	-- Return a count with number of name occurance
	Select Employee_Name, COUNT(Employee_Name) as Employee_Count
	--,Employee_Id
	from tbl_Employee
	where employee_name = 'Jay'
	group by Employee_Name
	--,Employee_Id
	having COUNT(Employee_Name) > 1


	select * from tbl_StudentData where Student_Marks is not null

	Select sum(Student_Marks) as Student_Marks,
	avg(Student_Marks) as Student_Avg from tbl_StudentData
	where Student_Marks is not null
	-- group by Student_Age
	having AVG(Student_Marks) > 50

