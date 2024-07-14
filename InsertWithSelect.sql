-- Insert with select

select * from tbl_EmployeeData

select * from tbl_StudentData where Student_Id = 5

Insert into tbl_EmployeeData(Employee_no,Employee_name,Employee_Dob,Employee_MobileNo,Employee_Age)
Select ROW_NUMBER() over(order by Student_Id) as Employee_no, Student_Name,Student_DOB,Student_MobileNo,Student_Age from tbl_StudentData
where Student_Id in (1,3,5)


Insert into tbl_EmployeeData(Employee_no,Employee_name,Employee_Age)
Select ROW_NUMBER() over(order by Student_Id) as Employee_no, Student_Name,Student_Age from tbl_StudentData
where Student_Id = 5

Select 7 as Employee_no, Student_Name,Student_DOB,Student_MobileNo,Student_Age from tbl_StudentData
where Student_Id in (1,3,5)