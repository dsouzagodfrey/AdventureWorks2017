
/****** Object:  Schema [test_MyClass]    Script Date: 29/12/2018 14:14:13 ******/
IF EXISTS (SELECT * FROM sys.schemas WHERE name='test_ADW2017_EmployeeDepartment')
	DROP SCHEMA [test_ADW2017_EmployeeDepartment]
GO

CREATE SCHEMA [test_ADW2017_EmployeeDepartment]
GO

EXEC sys.sp_addextendedproperty @name=N'tSQLt.TestClass', @value=1 , @level0type=N'SCHEMA',@level0name=N'test_ADW2017_EmployeeDepartment'
GO


