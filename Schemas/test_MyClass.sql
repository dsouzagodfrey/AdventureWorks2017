
/****** Object:  Schema [test_MyClass]    Script Date: 29/12/2018 14:14:13 ******/
IF EXISTS (SELECT * FROM sys.schemas WHERE name='test_MyClass')
	DROP SCHEMA [test_MyClass]
GO

CREATE SCHEMA [test_MyClass]
GO

EXEC sys.sp_addextendedproperty @name=N'tSQLt.TestClass', @value=1 , @level0type=N'SCHEMA',@level0name=N'test_MyClass'
GO


