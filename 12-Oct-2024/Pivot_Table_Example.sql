Create table tbl_SalesByRegion
(
	Region nvarchar(100),
	Sales_Year int,
	Sales_Amount decimal(18,2)
)

Insert into tbl_SalesByRegion(Region,Sales_Year,Sales_Amount)
values('South',2010,500),('North',2010,250),('East',2011,500),('South',2011,200),
	('East',2012,300)

Select * from tbl_SalesByRegion

Select Region,ISNULL([2010],0) as [2010],ISNULL([2011],0) as [2011],
	ISNULL([2012],0) as [2012] from
	(Select Region,Sales_Year,Sales_Amount from tbl_SalesByRegion) as tbl1
pivot
	(Sum(Sales_Amount) for [Sales_Year] in ([2010],[2011],[2012])) as tbl2
order by tbl2.Region