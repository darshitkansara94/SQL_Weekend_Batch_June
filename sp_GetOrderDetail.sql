Create procedure sp_GetOrderDetail
As
Begin
	Select Order_Id,Order_Name,Order_Amount,Order_Quantity,Order_Discount, 
		dbo.fn_TotalAmount(Order_Amount,Order_Quantity,Order_Discount) as TotalAmount
	from tbl_OrderMaster
End

exec sp_GetOrderDetail