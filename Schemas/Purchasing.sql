
/****** Object:  Schema [Purchasing]    Script Date: 29/12/2018 14:16:27 ******/
IF EXISTS (SELECT * FROM sys.schemas WHERE name='Purchasing')
	DROP SCHEMA [Purchasing]
GO

CREATE SCHEMA [Purchasing]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains objects related to vendors and purchase orders.' , @level0type=N'SCHEMA',@level0name=N'Purchasing'
GO


