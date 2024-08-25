create table tbl_OrderMaster
(
	Order_Id int primary key identity(1,1),
	Order_Name nvarchar(50),
	Order_Amount decimal(18,2),
	Order_Quantity int,
	Order_Discount bigint,
	Order_Total decimal(18,2)
)


insert into tbl_OrderMaster(Order_Name,Order_Amount,Order_Quantity,
Order_Discount)
Values('Laptop',56000,5,10),
('Moblie',35056.65,14,3),('headphone',3800,8,2),
('Speaker',50500,9,4),('Television',58000,11,8)

select * from tbl_OrderMaster,

Select Order_Id,Order_Name,Order_Amount,Order_Quantity,Order_Discount, 
dbo.fn_TotalAmount(Order_Amount,Order_Quantity,Order_Discount) as TotalAmount
from tbl_OrderMaster

Select Order_Id,Order_Name,Order_Amount,Order_Quantity,Order_Discount
from tbl_OrderMaster

Order_Amount * Order_Quantity = Total Amount -- 280000
Total Amount * discount  / 100 = 28000 

Final Amount = 252000

Select * from fn_Tablefunction(2)





