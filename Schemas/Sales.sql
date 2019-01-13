
/****** Object:  Schema [Sales]    Script Date: 29/12/2018 14:16:32 ******/
IF EXISTS (SELECT * FROM sys.schemas WHERE name='Sales')
	DROP SCHEMA [Sales]
GO

CREATE SCHEMA [Sales]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains objects related to customers, sales orders, and sales territories.' , @level0type=N'SCHEMA',@level0name=N'Sales'
GO


