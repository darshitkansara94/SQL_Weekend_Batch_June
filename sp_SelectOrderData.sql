create procedure sp_SelectOrderData
As
Begin
	Select vw.Category_Name,vw.SubCategory_Name,om.Order_No from vw_categoryData vw
		inner join tbl_OrderMaster om on vw.SubCategory_Id = om.SubCategory_Id
End