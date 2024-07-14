-- Create SP which perform Insert, Update, Delete and Select


alter procedure sp_CRUDCategoryMaster
(
	@Type nvarchar(15),
	@Category_Id int = null,
	@Category_Name nvarchar(50) = null
)
As
Begin
	If(@Type = 'InsertOrUpdate')
	Begin
		if not exists (Select Category_Name from tbl_Categorymaster where Category_Name = @Category_Name)
		Begin
			Insert into tbl_Categorymaster(Category_Name)
			values (@Category_Name)						

			print('Record Inserted')
		End
		else
		Begin
			print('Record already exists with name : ' + @Category_Name)
		End
	End	
	else if(@Type = 'Update')
	Begin
		Update tbl_Categorymaster set
			Category_Name = @Category_Name
		where Category_Id = @Category_Id
	End
	else if(@Type = 'Delete')
	Begin
		Delete from tbl_Categorymaster where Category_Id = @Category_Id
	End
	else if(@Type = 'Select')
	Begin
		Select Category_Id,Category_Name from tbl_Categorymaster where Category_Name = 'xyz'
	End
	else if(@Type = 'SelectWithId')
	Begin
		Select Category_Id,Category_Name from tbl_Categorymaster where Category_Id = @Category_Id
	End
End


--exec sp_CRUDCategoryMaster @Type = 'InsertOrUpdate',@Category_Name = 'xyz'

--exec sp_CRUDCategoryMaster 'SelectWithId' , 6

--select * from tbl_Categorymaster