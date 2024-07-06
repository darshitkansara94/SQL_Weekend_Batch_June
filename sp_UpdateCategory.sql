create procedure sp_UpdateCategory
(
	@Category_Id int,
	@Category_Name nvarchar(50)
)
As
Begin
	Update tbl_Categorymaster set
		Category_Name = @Category_Name
	where Category_Id=@Category_Id
End