--Table :
--	Table is collection of rows and columns.
--	Every column has it's own datatype . Which can be same or differnet for the column.
--	Table name should start with prefix "tbl_".
--	As a first char number and special char is not allowed.
--	Table name with same name is not allowed in same database.

	Syntax :
		create table tablename
		(
			columnname1 datatype,
			columnname2 datatype,
			.
			.
			.
			.
			columnnameN datatype
		)

	Create column rules :
		Space is not allowed in column name.
		Not start with special char and number.
		Every column must have datatype.
		Instead of space between the column name use '_'.
			Example : Your columnname is "Employee Name" so instead use write "Employee_Name".
		Column name should be not same as sql function name.
		How to identify inbuild function : Example :
			key -> Inbuilt function
			EmployeeName -> Not sql function 
		