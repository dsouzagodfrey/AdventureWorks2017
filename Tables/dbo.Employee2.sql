IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[Employee]') AND type IN (N'U')) 
BEGIN 
   DROP TABLE [Employee] 
END 
GO 

CREATE TABLE [Employee]( 
   [EmployeeID] [INT] IDENTITY(1,1) NOT NULL PRIMARY KEY, 
   [FirstName] VARCHAR(250) NOT NULL, 
   [LastName] VARCHAR(250) NOT NULL, 
   [DepartmentID] [INT] NOT NULL REFERENCES [Department](DepartmentID), 
) ON [PRIMARY];
