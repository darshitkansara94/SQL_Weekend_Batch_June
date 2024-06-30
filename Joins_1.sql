Cross join :
	Cross join return result with one to many relation.

	Syntax :
		Select column1,column2 from table1
		cross join table2 

	Example :	
		Select * from tbl_Categorymaster CM
		cross join tbl_OrderMaster

		select * from tbl_Categorymaster
		select * from tbl_OrderMaster

Self join :
	Join table with itself.

	Syntax :
		Select column1,column2, column3 
		from table1 t1, table1 t2

	Example :
		select * from tbl_EmployeeData
		select * from tbl_EmployeeData

		Select e1.Employee_no,e1.Employee_name,e1.Employee_Age 
			from tbl_EmployeeData e1, tbl_EmployeeData e2
		where e1.Employee_no = e2.Employee_no

		--alter table tbl_EmployeeData
		--add Employee_Post nvarchar(50)

		Update tbl_EmployeeData 
		set Employee_no = 1
		where Employee_no = 1 and Employee_name = 'Jay'

		select * from tbl_StudentData	
		
		select t1.Student_Id,t1.Student_Name,t1.Student_Age,
		t2.student_class,t1.student_class
		from tbl_StudentData t1 , tbl_StudentData t2
		where t1.student_class = t2.student_class


		
