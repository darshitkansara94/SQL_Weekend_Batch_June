Merge into target_table
using source_table
on merge_condition
when matched then
	update
when not matched then
	insert statement


-- Product Table
-- Updated Table

-- Target Table
Create table tbl_Product
(
	P_Id int primary key identity(1,1),
	P_Name nvarchar(100),
	P_Price decimal(18,2)
)

-- Source Table
Create table tbl_Updated
(
	P_Id int primary key identity(1,1),
	P_Name nvarchar(100),
	P_Price decimal(18,2)
)

Insert into tbl_Product(P_Name,P_Price)
values('Tea',10),('Coffee',15),('Biscuit',25)

Insert into tbl_Updated(P_Name,P_Price)
values('Tea',10),('Coffee',25),('Chips',22)

Select * from tbl_Product
Select * from tbl_Updated


merge into tbl_Product as target
using tbl_Updated as source
on (target.p_name = source.p_name)
When matched then
	Update set target.P_Name = source.P_Name, target.P_Price = source.P_Price
when not matched by target then
	Insert(p_name,P_price)
	values(source.p_name,source.p_price)
when not matched by source
	then delete;