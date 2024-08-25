Error Handling :
	Handle the error that occur at runtime.
	We have try and catch block for handle error.
	try block contains our actual logic
	while catch block contain our error handling logic.

	-- Syntax :
		Begin try
			Actual Logic
		End try
		Begin catch
			Error handling
		End catch

	-- Example :
		-- Divide 10 / 0
		declare @firstValue int = 10

		Begin try
			set @firstValue =  10 / 0
		End try
		Begin catch
			print error_message()
		End catch

		select 10/0
		
		sp_helptext 's_InsertMultipleEntries'