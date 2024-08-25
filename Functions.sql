Functions :
	Reusability of code.
	Function can reduce the performance of SP execution.

	System Defined function
		SQL provided functions
			Date function
			String function
			Aggregate function
	User defined function
		User create him self and use in SP.

		1. Scalar value
			Scalar value return a single value.
			Return type is Datatype i.e int, nvarchar, decimal, bool

			-- Syntax :
				--Create function function_name
				--(
				--	Parameter
				--)
				--Returns datatype (int, decimal, string, boolean)
				--As
				--Begin
				--	return Statement
				--End

			-- Execute function			
				select dbo.fn_GetAddition(10,12) as Addition

				select Employee_Name,Employee_Age,Manager_Id,
				dbo.fn_GetAddition(10,12) as Addition
				from tbl_Employee

		-- 2. Table value
			Return a table as a output.
			Return type is 'Table'

			-- Syntax :
				--Create function fn_Name
				--(
				--	Parameter
				--)
				--Returns Table
				--As
					--	return statement
				

-- Assignment : Scalar Value function
	Return a grade based on marks.
	Validation : If user enter marks > 100 then message should return.	
		'Invalid marks. Marks should be less than 100'