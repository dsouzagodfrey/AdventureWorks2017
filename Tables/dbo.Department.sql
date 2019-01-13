
/****** Object:  Table [dbo].[Department]    Script Date: 29/12/2018 14:25:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[Department]') AND type IN (N'U')) 
BEGIN 
   DROP TABLE [Department] 
END 
GO

CREATE TABLE [Department]( 
   [DepartmentID] [INT] IDENTITY(1,1) NOT NULL PRIMARY KEY, 
   [Name] VARCHAR(250) NOT NULL,
   [DepartmentManager] INT NULL,
) ON [PRIMARY];
