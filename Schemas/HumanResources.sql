
/****** Object:  Schema [HumanResources]    Script Date: 29/12/2018 14:16:11 ******/
IF EXISTS (SELECT * FROM sys.schemas WHERE name='HumanResources')
	DROP SCHEMA [HumanResources]
GO

CREATE SCHEMA [HumanResources]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains objects related to employees and departments.' , @level0type=N'SCHEMA',@level0name=N'HumanResources'
GO


