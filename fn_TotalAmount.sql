Alter function fn_TotalAmount
(
	@Order_Amount decimal(18,2),
	@Order_Quantity int,
	@Order_Discount int
)
Returns decimal(18,2)
As
Begin
	declare @Total_Amount decimal(18,2)
	declare @Discounted_Amount decimal(18,2)

	set @Total_Amount = @Order_Amount * @Order_Quantity

	set @Discounted_Amount = @Total_Amount * @Order_Discount / 100

	return @Total_Amount - @Discounted_Amount
End



-- Requirement
	--Order_Amount * Order_Quantity = Total Amount

	--Total Amount * 10 / 100 = Final Amount