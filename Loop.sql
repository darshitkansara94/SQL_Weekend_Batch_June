Loop :
	While Loop :
		Based on expression / condition loop execute statement

		-- Syntax :
			while expression
			Begin
				Statement
			End

		-- Example :
			declare @Number int = 1

			while @Number < 5
			Begin
				print('This is loop')

				set @Number = @Number + 1
			End

			declare @Num int = 1

			while @Num < 10
			Begin
				if(@Num = 3)
				Begin
					print('Iteration 3 occur')
					break
				End
				print('Number ' + cast(@Num as nvarchar(10)))

				set @Num = @Num + 1
			End

			declare @Num1 int = 1

			while @Num1 < 10
			Begin
				if(@Num1 = 3)
				Begin
					print('Iteration 3 occur')
					set @Num1 = @Num1 + 1
					continue
				End
				print('Number ' + cast(@Num1 as nvarchar(10)))

				set @Num1 = @Num1 + 1
			End

	--break
	--	Break the statement and exit from the loop
	--continue
	--	Stop execution and start a new iteration and 
	--		skip the code written below continue keyword

	declare @Iteration int = 1
	declare @value nvarchar(50)

	while @Iteration < 5
	Begin
		set @value = 'Test' + cast(@Iteration as nvarchar(10))

		exec s_InsertMultipleEntries
			@Category_Name = @value

		set @Iteration = @Iteration + 1
	End

	select * from tbl_CategoryMaster