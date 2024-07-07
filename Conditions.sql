--Operators :
--	=
--	!=
--	>
--	>=
--	<
--	<=
--	<>

-- Conditions :
	-- When we wat to compare value and based on comparision we want to execute statement.
	-- Condition always return bool value (true or false).
		--If else
			-- We can check single condition only.
			-- In if and else only one block is execute at a time.
			-- if condition is true then if block is execute else, else block is execute.

			--Syntax :
				--If condition and condition2
				--Begin
				--	statement
				--End
				--Else
				--Begin
				--	statement
				--End

			-- Example :
				-- Declaration
				declare @value int
				-- Initilization
				set @value = 10

				-- declare with initiliaztion
				declare @value1 int = 10

				-- declare with initiliaztion
				-- declare @value int = 10

				if(@value = @value1) -- 10 = 10 : true
				Begin
					print('Value is equal')
				End
				else
				Begin
					print('Value is not equal')
				End

				-- Not equal to
				declare @val1 int
				-- Initilization
				set @val1 = 20

				-- declare with initiliaztion
				declare @val2 int = 10

				if (@val1 != @val2) -- 20 != 10
				Begin
					print(convert(nvarchar,@val1)  + ' is not equal to ' + convert(nvarchar,@val2))
				End
				else
				Begin
					print(convert(nvarchar,@val1)  + ' is equal to ' + convert(nvarchar,@val2))
				End

				-- Greater than
				declare @val3 int = 20				

				-- declare with initiliaztion
				declare @val4 int = 10

				if (@val3 > @val4) -- 20 > 10
				Begin
					print(convert(nvarchar,@val3)  + ' is Greater than ' + convert(nvarchar,@val4))
				End
				else
				Begin
					print(convert(nvarchar,@val3)  + ' is not Greater than ' + convert(nvarchar,@val4))
				End

		--If else if else :
			-- Difference between if else and if else if else is, we can apply mutiple conditions.
			-- We can use N  no of else if in condition.

			-- Syntax :
				If (condition)
				Begin
					statement
				End
				else if (condition)
				Begin
					statement
				End
				else if(condition)
				Begin
					statement
				End
				else
				Begin
					Statement
				End

			-- Example :
				-- Greater than or equal to 90 = A
				-- Greater than or equal to 80 And Less than 90 = B
				-- Greater than or equal to 70 And Less than 80 = C
				-- Greater than or equal to 60 And Less than 70 = D
				-- Greater than 35 And Less than 60 = E
				-- Less than or equal to 35 = F

				declare @Marks int = 95

				if (@Marks >= 90) -- 55 > 90 = false
				Begin
					print('A Grade')
				End
				else if(@Marks >= 80 And @Marks < 90) -- (55 >= 80 = false And 55 < 90 = true) = false
				Begin
					print('B Grade')
				End
				else if (@Marks >= 70 And @Marks < 80) -- (55 >= 70 And 55 < 80) = false
				Begin
					print('C Grade')
				End
				else if(@Marks >= 60 And @Marks < 70) -- (55 >= 60 And 55 < 70) = false
				Begin
					print('D Grade')
				End
				else if (@Marks >= 35 And @Marks < 60) -- (55 >= 35 And 55 < 60) = true
				Begin
					print('E Grade')
				End
				else
				Begin
					print('F Grade')
				End


--Exist :
--	Exist one type of operator.
--	Exist check either value is present or not from the output.
--	It usally use with select statement in if condition.


--Select Category_Name from tbl_Categorymaster where Category_Name = 'Laptop'


-- Example
	if not exists (Select Category_Name from tbl_Categorymaster where Category_Name = 'Printer')
	Begin
		Insert into tbl_Categorymaster(Category_Name)
		values('Printer')

		print('Value is inserted')
	End
	Else
	Begin
		print('value already exists')
	ENd

-- Nested If condition
if condition
Begin
	if condition
	Begin
		if condition
		Begin
			Stataement
		End
	End
End

-- Is laptop is exists in category table?

-- String concat :
	select * from tbl_Categorymaster

	declare @string1 nvarchar(10) = 'Hello'
	declare @string2 nvarchar(10) = 'World'

	print(@string1 + ' ' + @string2)

	declare @val int = 10 -- int
	declare @string3 nvarchar(10) = 'Value is : ' -- string

	print(@string3 + convert(nvarchar(10),@val))

--Assignement :
--	Check value in select statement
--	If value is available then update or insert a new record.
--	Value in the condition should echeck with param

--Assignement 2 :	
--	Execute if else condition with all operators.

