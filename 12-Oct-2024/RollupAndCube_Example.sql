Create table tbl_CategoryMaster
(
	Category_Name nvarchar(100),
	SubCategory_Name nvarchar(100),
	SubCategory_Price decimal(18,2)
)

Insert into tbl_CategoryMaster(Category_Name,SubCategory_Name,SubCategory_Price)
values('Electronic','Mobile',10000),
	('Electronic','Watch',5000),
	('Clothes','Tshirt',200),
	('Clothes','Jeans',1500),
	('Clothes','Jeans',500)

Select * from tbl_CategoryMaster

Select Category_Name,SubCategory_Name,Product_Name,sum(SubCategory_Price) as Price 
	from tbl_CategoryMaster
Group by rollup(Category_Name,SubCategory_Name,Product_Name)
order by Category_Name

Select Category_Name,SubCategory_Name,Product_Name,sum(SubCategory_Price) as Price 
	from tbl_CategoryMaster
Group by cube(Category_Name,SubCategory_Name,Product_Name)
order by Category_Name