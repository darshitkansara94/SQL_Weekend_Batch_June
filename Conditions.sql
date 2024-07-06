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

		--If else if else
		--Switch case