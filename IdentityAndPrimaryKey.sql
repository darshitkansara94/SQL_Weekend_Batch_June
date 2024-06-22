Primary Key :
	Primary key gurantee of no duplicate value.
	Only one primary key allow in single table.
	Primary key always int if use with identity column.

Identity :
	Auto increment values in primary key.


Create table tbl_StudentData
(
	Student_Id int primary key identity(1,1),
	Student_Name nvarchar(50),
	Student_Age int,
	Student_MobileNo bigint,
	Student_DOB datetime,	
)