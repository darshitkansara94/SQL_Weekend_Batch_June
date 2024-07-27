Aggregate Functions :
	Aggregate function is use for calculate set of values.
	Return result in single value.
	Group by is required when aggregate function is in use.
	Aggregate function work with select statement.

	Types of aggregate function :
		Sum()
			-- Return a addition of set of column.

			-- Syntax :
				Select sum(column_name) from table_name

			-- Example 
				select Student_Marks, Student_Name from tbl_Student  where Student_Marks is not null

				Select sum(Student_Marks) as StudentMarks,Student_Name from tbl_Student where Student_Marks is not null
				group by Student_Name
			
		Min()
			Return a minimum value from column.

			-- Syntax 
				Select MIN(column_name) as alias_name from table_name

			-- Example :
				Select Student_Marks as StudentMarks from tbl_Student where Student_Marks is not null 

				Select MIN(Student_Marks) as StudentMarks from tbl_Student where Student_Marks is not null 

				select Student_Marks, Student_Name from tbl_Student  where Student_Marks is not null

				Select MIN(Student_Marks), Student_Name as StudentMarks from tbl_Student where Student_Marks is not null 
				group by Student_Name

		Max() :
			Return a maximum value from column.

			-- Syntax
				Select max(column_name) as alias_name from table_name

			-- Example
				Select Student_Marks as StudentMarks from tbl_Student where Student_Marks is not null 

				Select max(Student_Marks) as StudentMarks from tbl_Student where Student_Marks is not null

				Select MAX(Student_Marks), Student_Name as StudentMarks from tbl_Student where Student_Marks is not null 
				group by Student_Name
			
		Avg() :
			Return a average value of column.

			-- Syntax :
				Select avg(column_name) as alias_name from table_name

			-- Example
				Select Student_Marks as StudentMarks from tbl_Student where Student_Marks is not null

				Select Avg(Student_Marks) as StudentMarks from tbl_Student where Student_Marks is not null

				Select Avg(Student_Marks) as StudentMarks,Student_name,Student_Age from tbl_Student where Student_Marks is not null
				And Student_Age is not null
				group by student_name, Student_age
			
		Count() :
			Return a count of rows available in table excluding null value.

			-- Synatax :
				Select count(column_name) as alias_name from table_name

			-- Example :
				Select * from tbl_Student

				Select COUNT(Student_Marks) as StudentCount, Student_Name from tbl_Student
				-- where Student_Name = 'Weltech'
				group by Student_Name

	Select CAST(SUM(Student_Marks) as int) as Addition, MIN(Student_Marks) as Minimum_Marks,
	MAX(Student_Marks) as Maximum_Marks, 
	CONVERT(decimal(18,2),AVG(Student_Marks)) as Average_Marks, 
	COUNT(Student_Marks) as Count_Marks
	from tbl_Student where Student_Marks is not null


