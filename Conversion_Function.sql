-- Convert functions
	-- Convert a data into one datatype to another.
	-- Two types of function
		-- Convert
			-- Convert a data along with datatype
			-- Syntax :
				convert(conversion_datatype, value, format)
			
			-- Example :
				Select GETDATE()
				Select CONVERT(nvarchar(20),GETDATE(),1) as TodayDate

				declare @number int = 101

				declare @decimal decimal(18,2) = 15.32
				select CONVERT(int,@decimal)
				select CAST(@decimal as int)

				--select CONVERT(decimal(18,2), @number) as DecimalValue
				declare @string nvarchar(20) = 'Hello'

				select CONVERT(nvarchar(10),@number) + ' ' + @string


		-- Cast
			-- Convert only one datatype to another datatype.

			-- Syntax :
				cast(value as datatype)

			-- Example :
				declare @number int  = 101

				select CAST(@number as decimal(18,2))

				declare @string nvarchar(20) = 'Hello world'

				Select CAST(@number as nvarchar(10)) + ' ' + @string


select GETDATE()