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
