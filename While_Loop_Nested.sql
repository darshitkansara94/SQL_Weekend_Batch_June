declare @number int = 1 -- Main loop

while @number < 5
Begin
	declare @number1  int = 1
	
	print('Outer loop')
	while @number1 < 3
	Begin
		print('Inner loop')

		set @number1 = @number1 + 1
	End

	set @number = @number + 1
End