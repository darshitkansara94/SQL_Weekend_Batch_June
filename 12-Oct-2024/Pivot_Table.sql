Pivot Table :
	When we have a requirement to convert column value into row header then we have to use pivot table.
	Pivot table is used for creating report and data analysis.

	-- Syntax
		Select column1,column2,column3 from
			(Select column1,column2,column3 from table_name) as tbl1
		pivot
			(Aggregate function for 
				(column to be used for total)[COlumn to be used as header]) as tbl2
		group by tbl2.column

