Group Rollup and Cube

	Rollup:
		Display total and subtotal of first column.

		-- Syntax
			Select 
				column1,column2,sum(column3)
			from table_name	
				group by
					rollup(column1,column2)