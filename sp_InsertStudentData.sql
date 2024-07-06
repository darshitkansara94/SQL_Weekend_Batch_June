alter procedure sp_InsertStudentData 
(
	@Student_Name nvarchar(50),
	@Student_Age int,
	@Student_MobileNo bigint,
	@Student_Class int

)
As
Begin
	Insert into tbl_StudentData(Student_Name,Student_Age,Student_MobileNo,Student_Class)
	Values(@Student_Name,@Student_Age,@Student_MobileNo,@Student_Class)
End