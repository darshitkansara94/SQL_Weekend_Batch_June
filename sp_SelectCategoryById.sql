create procedure sp_SelectCategoryById
(
	@Category_Id int
)
As
Begin
	Select Category_Id, Category_Name from tbl_Categorymaster
	where Category_Id = @Category_Id

	--Select Category_Id, Category_Name from tbl_Categorymaster
	--where Category_Id = 3
End


