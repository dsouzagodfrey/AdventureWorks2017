
/****** Object:  Schema [Person]    Script Date: 29/12/2018 14:16:17 ******/
IF EXISTS (SELECT * FROM sys.schemas WHERE name='Person')
	DROP SCHEMA [Person]
GO

CREATE SCHEMA [Person]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains objects related to names and addresses of customers, vendors, and employees' , @level0type=N'SCHEMA',@level0name=N'Person'
GO


