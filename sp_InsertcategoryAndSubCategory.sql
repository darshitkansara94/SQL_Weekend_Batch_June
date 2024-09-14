alter procedure sp_InsertcategoryAndSubCategory
(
	@Category_Name nvarchar(20),
	@Subcategory_Name nvarchar(20)
)
as
Begin
	Begin try
		Begin transaction tr_InsertcategoryAndSubCategory
			Insert into tbl_CategoryMaster(Category_Name) values(@Category_Name)

			print(scope_identity())

			select top 1 Category_Id from tbl_CategoryMaster order by Category_Id desc

			Insert into tbl_SubCategoryMaster(Category_Id,SubCategory_Name, User_Id)
			values(SCOPE_IDENTITY(),@Subcategory_Name,1)
		Commit transaction tr_InsertcategoryAndSubCategory
	End try
	Begin catch
		Rollback transaction tr_InsertcategoryAndSubCategory
		print('Data is not Inserted')
	End catch

	
End