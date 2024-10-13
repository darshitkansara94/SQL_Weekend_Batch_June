Catelog view
	When we want a detail of our db.

	sys.tables
		Retreive all tables from db
	sys.procedures
		Return all SP's available in db
	sys.objects
		Return SP's, tables and functions from DB
	sys.columns
		Return all the columns of table in db
	sys.schemas
		return available schema

	Select t1.name as TableName,c1.name as ColumnName
	from sys.tables t1 
	inner join sys.columns c1 on t1.object_id = c1.object_id 
	where t1.name = 'tbl_ProductMaster'

	Select *
	from sys.tables t1 	 
	where t1.name = 'tbl_ProductMaster'

	Select * from sys.columns where name in ('Product_id','Product_Name')

	select * from sys.procedures where name like '%product%'

	select * from sys.objects where name like '%product%'

	select * from sys.schemas

	