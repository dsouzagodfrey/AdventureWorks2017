
/****** Object:  StoredProcedure [test_MyClass].[TestOne]    Script Date: 29/12/2018 14:02:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROC [test_MyClass].[TestOne]
AS
	EXEC tsqlt.assertEquals 2,2
GO


