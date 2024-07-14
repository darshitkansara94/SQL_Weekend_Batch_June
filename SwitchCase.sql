-- switch case
	We can use inside select statement.
	To compare some condition inside select statement.

	Syntax :
		--Select 
		--	case when condition then output
		--	else output end

		--if condition
		--Begin
		--	output
		--End

		select
			case when condition then output
				when condition then output
				when condition then output
			else output end

		--if condition
		--Begin
		--	output
		--End
		--ele if condition
		--Begin
		--	output
		--End
		--else 
		--Begin
		--	output
		--End

	declare @number int = 45
	select case when @number < 10 Then 'Stock will be empty soon'
			else 'We have sufficeient stock' end as Stock


-- Greater than or equal to 90 = A
-- Greater than or equal to 80 And Less than 90 = B
-- Greater than or equal to 70 And Less than 80 = C
-- Greater than or equal to 60 And Less than 70 = D
-- Greater than 35 And Less than 60 = E
-- Less than or equal to 35 = F

	declare @marks int = 59
	select case when @marks >= 90 then 'A Grade'
		when @marks >= 80 And @marks < 90 then 'B Grade'
		When @marks >= 70 and @marks < 80 then 'C Grade'
		When @marks >= 60 and @marks < 70 then 'D Grade'
		When @marks > 35 and @marks < 60 then 'E Grade'
		Else 'F Grade' End as StudentResult


select * from tbl_StudentData


select Student_Id,Student_Name,Student_Age,Student_MobileNo,
Student_DOB,Student_Class,Student_Marks,
case when Student_Marks >= 90 then 'A Grade'
when Student_Marks >= 80 And Student_Marks < 90 then 'B Grade'
When Student_Marks >= 70 and Student_Marks < 80 then 'C Grade'
When Student_Marks >= 60 and Student_Marks < 70 then 'D Grade'
When Student_Marks > 35 and Student_Marks < 60 then 'E Grade'
Else 'F Grade' End as StudentResult
from tbl_StudentData

