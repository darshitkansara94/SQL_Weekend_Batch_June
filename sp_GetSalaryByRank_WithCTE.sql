alter procedure sp_GetSalaryByRank
(
	@Rank as int
)
As
Begin
	with cte_EmployeeSalary as
		(
			Select DENSE_RANK() over(order by Employee_Salary desc) as salary_rank,
			employee_name,Employee_DOB, Employee_Age, Employee_post, Employee_Salary
			from tbl_EmployeeData
			where Employee_Salary is not null
		)

		Select Employee_name,Employee_Age,Employee_Dob,Employee_Post,
		Employee_Salary
		from cte_EmployeeSalary
		where salary_rank = @Rank
End