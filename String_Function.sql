String Functions :
	String function is for manipulate string or for perform some operation on string.

	Types of String function :
		len :
			Return a count of char in string.
			Space is also consider as a char in len function.

			-- Example
				Select LEN('Weltec') as stringLength

				select LEN('Hello World') as stringLength

				use EmployeeDB
				Select * from tbl_EmployeeData

				select LEN(employee_name) as namelength, Employee_name, Employee_Age
				from tbl_EmployeeData
		ltrim
			Remove space from left side of string

			select LTRIM(' Oppo mobile') as ltrimspaceremove
			select ' Oppo' as withspace

			Oppo
			 Oppo
		rtrim
			Remove whitespace from right side of the string

			select RTRIM('Oppo mobile   ') as rtrimspaceremove

			Oppo mobile

			select * from tbl_CategoryMaster

			--Insert into tbl_CategoryMaster(Category_Name)
			--values(' Mobile'),('Watch ')

			
		trim
			Remove whitespace from both side of string.

			Select TRIM(Category_Name) as Category_Name from tbl_CategoryMaster

			Mobile
			Watch

		concat with +
			Merge two string into single string.
			
			select 'Hello ' + 'World' as singlestring
		concat
			Select concat('Hello ','World ','From ', 'Wel tech') as singlestring
		concat_ws
			concat with custom seperator.

			Select concat_ws('.','www','google','com')

			Select concat_ws(' ','Hello','World','From', 'Wel tech') as singlestring
		substring
			Get a particular portion of output from string.

			select substring(string,starting point, end point)

			Select substring('Hello world',4,2) as stringvalue
			H - 0
			E - 1
			L - 2
			L - 3
			O - 4
			  - 5
			W - 6
			O - 7
			R - 8
			L - 9
			D - 10

			-- select substring('Hello world',0,4)
		upper :
			Convert a string into a upper case
			Recommanded not to use in select statement.

			Select Upper('WelTec') as Uppercase
			
			--if(lower('ABC') = 'abc')
			--Begin
			--	print('Same value')
			--End
			--Else
			--Begin
			-- print('Value is not same')
			--End
		lower
			Convert a string into a lower case
			Recommanded not to use in select statement.

			Select lower('WelTec') as Uppercase
		char :
			select char(75) as char

		reverse
			select reverse('Hello World') as reverseorder