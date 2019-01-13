
/****** Object:  StoredProcedure [test_MyClass].[TestTwo]    Script Date: 29/12/2018 11:45:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROC [test_MyClass].[TestTwo]
AS
	EXEC tsqlt.assertEquals 1,1
GO


