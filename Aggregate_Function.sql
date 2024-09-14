Database Transaction :
	Commit :
		Perform on sucesfull transaction in database.
		Can not rolback data after commit is done.

		-- Syntax :
			begin transaction tr_name
				Statement (Insert/Update/Delete)
			commit transaction tr_name

		-- Example 
			Select * from tbl_CategoryMaster

			Begin transaction tr_Insertcategory
				Insert into tbl_CategoryMaster(Category_Name,Created_Date)
				values('string1',GETDATE())
			Commit transaction tr_Insertcategory
	Rollback :
		Reverse the insrted entry when transaction is failed.

		-- Syntax
			rollback transaction tr_name

		-- Example :
			rollback transaction tr_Insertcategory


exec sp_InsertcategoryAndSubCategory 'Transaction','Subcategory'

select * from tbl_CategoryMaster
select * from tbl_SubCategoryMaster