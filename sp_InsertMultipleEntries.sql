create procedure s_InsertMultipleEntries
(
	@Category_Name as nvarchar(50)	
)
As
Begin
	Insert into tbl_CategoryMaster (Category_Name)
	values(@Category_Name)
End