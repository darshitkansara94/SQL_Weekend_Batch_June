Alter function fn_Tablefunction
(
	@Order_Id int
)
returns table
As
	return (Select Order_Name,Order_Amount,Order_Quantity,Order_Discount,
	dbo.fn_TotalAmount(Order_Amount,Order_Quantity,Order_Discount) as TotalAmount
	from tbl_OrderMaster where Order_Id = @Order_Id)