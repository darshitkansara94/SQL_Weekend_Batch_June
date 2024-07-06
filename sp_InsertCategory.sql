ALter procedure sp_InsertCategory
(
	@Category_Name nvarchar(100) = 'Default Value'-- Default value is null
)
As
Begin
	-- print(@Category_Name)

	Insert into tbl_Categorymaster(Category_Name)
	values(@Category_Name)

	Select Category_Id, Category_Name from tbl_Categorymaster
End