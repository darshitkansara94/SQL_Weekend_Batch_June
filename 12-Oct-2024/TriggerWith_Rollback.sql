USE [CrystalAndStone]
GO
/****** Object:  Trigger [dbo].[tr_CategoryMasterLog]    Script Date: 10/12/2024 10:33:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter trigger [dbo].[tr_CategoryMasterLog]
on [dbo].[tbl_CategoryMaster]
For Insert
as
Begin
	Declare @Company_Id int

	Select @Company_Id = Company_Id from inserted

	print(@Company_Id)

	If(@Company_Id = 0)
	Begin
		Rollback Transaction

		Raiserror('Transaction is failed',16,1)

		return
	End

	Insert into tbl_CategoryMasterLog(Category_Name)
	values('For trigger')
End