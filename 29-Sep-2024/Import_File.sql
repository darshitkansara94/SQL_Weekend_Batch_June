Create table tbl_People
(
	[Index] int,
	User_Id nvarchar(50),
	FirstName nvarchar(50),
	LastName nvarchar(50),
	Sex nvarchar(10),
	Email nvarchar(100),
	Phone nvarchar(50),
	DateOfBirth datetime,
	JobTitle nvarchar(100)
)

Select * from tbl_People

---------- Import file -------------------------

Bulk insert tbl_People 
from 'C:\Users\Darshit Sir\Downloads\people-1000.csv'
with
(
	Format='csv',
	Firstrow = 2
)