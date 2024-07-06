create procedure sp_DeleteCategory
(
	@Category_Id int
)
As
Begin
	Delete from tbl_Categorymaster where Category_Id = @Category_Id
End