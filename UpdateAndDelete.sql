--Update :
--	Update / Modify existing data into the table.
--	We can modify multiple or single row.
--	Always verify update statement before execution to avoid false execution or unwanted data update.
	
--	Syntax :
--		Update tbl_Name Set
--			column1 = 'new value', column2 = 'new value'

--		Update tbl_name set
--			column1 = 'new value', column2 = 'new value'
--		where column3 = 'existing value'

--	Example :
		
		select Employee_name,Employee_Age,Employee_Dob,Employee_MobileNo,Employee_no,Employee_Salary from tbl_EmployeeData 

		update tbl_EmployeeData set
			Employee_Age = 25
		where Employee_no = 3

		Update tbl_EmployeeData set
			Employee_Age = 27, Employee_MobileNo = 8745784574
		where Employee_no = 2 And Employee_name = 'Raj'

		select Employee_name,Employee_Age,Employee_Dob,Employee_MobileNo,Employee_no,Employee_Salary 
			from tbl_EmployeeData
		where Employee_no = 2 or Employee_name = 'Yash'

--Delete :
--	Remove existing record from table permenantly.

--	Syntax :
--		delete from tbl_name

--		-- With where clause
--		delete from tbl_name where column1 = 'existing value'

--	Example :
		delete from tbl_EmployeeData where Employee_no = 3	




--Where :
--	Where clause is use to filter out data from table.
--	We can use multiple condition in single where clause.
--	We can apply 'AND' and 'OR'.
--	AND :
--		And condition verify that all statement returns true.
--		If one condition is false then query return empty result.

--	OR :
--		OR condition, If one condition is true from multiple condition then return result.
	
--	Operators :
--		=
--		>
--		<
--		>=
--		<=
--		!=


-- Insert with Select Statement
Insert into tbl_EmployeeData(Employee_name,Employee_Age,Employee_Dob,Employee_MobileNo,Employee_no,Employee_Salary)
select Employee_name,Employee_Age,Employee_Dob,Employee_MobileNo,Employee_no,Employee_Salary from tbl_EmployeeData 
where Employee_no = 1

-- Insert data using select  statement
Insert into tbl_EmployeeData(Employee_name,Employee_Age,Employee_Dob,Employee_MobileNo,Employee_no,Employee_Salary)
select 'Mukesh' as Employee_name,52 as Employee_Age,'2024-06-21' as Employee_Dob,878478577 as Employee_MobileNo,
4 as Employee_no,51000 as Employee_Salary

Insert into tbl_StudentData(Student_Name,Student_Age,Student_MobileNo,Student_DOB)
values('Suresh',45,4785458478,'2024-06-21 23:27:26.047')


select Student_Id,Student_Name,Student_Age,Student_MobileNo,Student_DOB from tbl_StudentData

-- Insert data from another table using select statement
Insert into tbl_EmployeeData(Employee_name,Employee_Age,Employee_Dob,Employee_MobileNo,Employee_no)
Select Student_Name,Student_Age,Student_DOB,Student_MobileNo,Student_Id from tbl_StudentData