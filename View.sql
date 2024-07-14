-- View :
	--View create virtual table into the memory which is physically not present.
	--View use with select statement.
	
	-- Syntax :
	 -- Create
		--Create view view_name as
		--Select Statement

	-- Alter 
		--Alter view view_name as
		--Select Statement

	-- Delete view
		-- drop view view_name
	-- Example :
		Create view vw_EmployeeDetail as
		Select Employee_Id,Employee_Name,Employee_Age,Manager_Id from tbl_Employee

	    Select * from vw_EmployeeDetail

		Alter view vw_EmployeeDetail as
		Select Employee_Id,Employee_Name,Employee_Age,Manager_Id from tbl_Employee

		-- Remove/ Delete View
		drop view vw_EmployeeDetail

		Alter view vw_categoryData as
		Select cm.Category_Id,cm.Category_Name,scm.SubCategory_Name,scm.SubCategory_Id from tbl_Categorymaster cm
		Inner join tbl_SubcategoryMaster scm on 
			cm.Category_Id = scm.Category_ID

		Select Category_Id,Category_Name,SubCategory_Name from 
		vw_categoryData 
		where Category_Id = 1

		select * from tbl_OrderMaster

		select vw.Category_Name,vw.SubCategory_Name,om.Order_No from vw_categoryData vw
		inner join tbl_OrderMaster om on vw.SubCategory_Id = om.SubCategory_Id


