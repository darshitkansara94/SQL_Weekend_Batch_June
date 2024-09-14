Constraint :
	To define a rules on table we can use constraints

	Types of Constraints :
		Primary key
		Foreign key
		
		Not null :
			Allow user to not insert null value.
			declare using Not null.

			create table tbl_TestTable
			(
				Test_Id int primary key identity(1,1),
				Test_Name nvarchar(50) not null
			)

			alter table tbl_testtable
			add Test_Age int

			select * from tbl_CategoryMaster

			alter table tbl_CategoryMaster			
			alter column Category_name nvarchar(100) null 

			alter table tbl_SubcategoryMaster			
			alter column Subcategory_name nvarchar(100) Not null 

			Insert into tbl_TestTable(test_Age) values(15)

			exec sp_InsertcategoryAndSubCategory 'Constraint','Constraints'
		Unique
			Insert a unique value for the every data.
			We can add multiple unique constraint into a single table.

			-- example
				Create table tbl_TestTable1
				(
					Table1_Id int primary key identity(1,1),
					Table1_Name nvarchar(50) unique,
					Table1_Age int
				)

				Insert into tbl_TestTable1(Table1_Name,Table1_Age)
				values('abcd',15)

				select * from tbl_TestTable1

				-- Add Unique into existing table
				select * from tbl_CategoryMaster

				select * from tbl_SubCategoryMaster

				-- Syntax
				Alter table table_name
				add constraint cn_ConstraintName
				unique(Column_Name)

				Alter table tbl_CategoryMaster
				Add Constraint cn_CategoryName
				unique(Category_Name)

				alter table tbl_Subcategorymaster
				Add constraint cn_Subcategorymaster1
				unique(SubCategory_name,Subcategory_unit)
				
				-- Remove Unique constraint from table
				alter table tbl_Subcategorymaster
				drop constraint cn_Subcategorymaster1

		Check
			Insert a value into the column based on condition.

			Create table tbl_TestTable2
			(
				Table2_Id int primary key identity(1,1),
				Table2_Name nvarchar(50) unique,
				Table2_Age int,
				constraint cn_Age check(Table2_Age >= 18)
			)

			Insert into tbl_TestTable2(Table2_Name,Table2_Age)
			values('Abc',19)

			select * from tbl_ShoppingCartMaster			

			-- Alter existing table
			Alter table tbl_name
			add constraint cn_Name check (column1 And column2)

			Alter table tbl_ShoppingCartMaster
			add constraint cn_Quantity1
			check(ItemQuantity >= 5 and ItemQuantity <= 15)

			Insert into tbl_ShoppingCartMaster(Cart_Id,ItemQuantity)
			values(NEWID(),14)

			-- Drop check constraint
			alter table tbl_ShoppingCartMaster
			drop constraint cn_Quantity1

		default 
			Use to set a default value if user is not pass value into the statement.

			select * from tbl_CategoryMaster

			-- New table 
			Create table tbl_TestTable2
			(
				Table2_Id int primary key identity(1,1),
				Table2_Name nvarchar(50) unique default 'string',
				Table2_Age int default 20,
				constraint cn_Age default 'Default value' for Table2_Name
			)

			-- On existing table
			alter table tbl_categoryMaster
			add constraint cn_Defaultcategoryname
			default 'This is default' for Category_Name

			Insert into tbl_CategoryMaster(Company_Id,User_Id)
			values(1,1)
			
		