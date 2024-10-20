Ranking function with BLOB:

Table
Files
BLOB

Varbinary
	Declare @VarBinaryVar varbinary(200)

	set @VarBinaryVar = CONVERT(varbinary,'This is Text')

	print(@VarBinaryVar)

	Select CAST(@VarBinaryVar as varchar(100)) as  BinaryText

	Select CONVERT(nvarchar(100),'This is Text') as  BinaryText

	Select * from tbl_UserRegistration

	Select CAST(Password as varchar(100)) from tbl_UserRegistration
	