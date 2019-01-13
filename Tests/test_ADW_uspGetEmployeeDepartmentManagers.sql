
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROC test_ADW2017_EmployeeDepartment.Setup
AS
	IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[Employee]') AND type IN (N'U')) 
	BEGIN 
		DROP TABLE [Employee] 
	END

	IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[Department]') AND type IN (N'U')) 
	BEGIN 
		DROP TABLE [Department] 
	END

	CREATE TABLE [Department]( 
		[DepartmentID] [INT] IDENTITY(1,1) NOT NULL PRIMARY KEY, 
		[Name] VARCHAR(250) NOT NULL,
		[DepartmentManager] INT NULL,
	) ON [PRIMARY];
	
	CREATE TABLE [Employee]( 
		[EmployeeID] [INT] IDENTITY(1,1) NOT NULL PRIMARY KEY, 
		[FirstName] VARCHAR(250) NOT NULL, 
		[LastName] VARCHAR(250) NOT NULL, 
		[DepartmentID] [INT] NOT NULL REFERENCES [Department](DepartmentID), 
	) ON [PRIMARY];

	INSERT [Department] ([Name], [DepartmentManager])	VALUES (N'Engineering',1);
	INSERT [Department] ([Name], [DepartmentManager])	VALUES (N'Administration',1);
	INSERT [Department] ([Name], [DepartmentManager])	VALUES (N'Sales',2);
	INSERT [Department] ([Name], [DepartmentManager])	VALUES (N'Marketing',3);
	INSERT [Department] ([Name], [DepartmentManager])	VALUES (N'Finance', NULL);

	INSERT [Employee] ([FirstName], [LastName], [DepartmentID])	VALUES (N'Orlando',	N'Gee',		1);
	INSERT [Employee] ([FirstName], [LastName], [DepartmentID])	VALUES (N'Keith',	N'Harris',	2);
	INSERT [Employee] ([FirstName], [LastName], [DepartmentID])	VALUES (N'Donna',	N'Carrera', 3);
	INSERT [Employee] ([FirstName], [LastName], [DepartmentID])	VALUES (N'Janet',	N'Gates',	3);

GO

CREATE OR ALTER PROC test_ADW2017_EmployeeDepartment.test_ADW_uspGetEmployeeDepartmentManagers
AS
	CREATE TABLE #ExpectedResults
	(
		[FirstName] VARCHAR(250) NULL, 
		[LastName] VARCHAR(250) NULL, 
		[DepartmentName] VARCHAR(250) NULL,
		[DepartmentManager] VARCHAR(500) NULL
	);

	INSERT INTO #ExpectedResults
			(	FirstName,	LastName,	DepartmentName,		DepartmentManager)
	SELECT		'Donna',	'Carrera',	'Sales',			'Keith Harris'		UNION
	SELECT		'Janet',	'Gates',	'Sales',			'Keith Harris'		UNION
	SELECT		'Keith',	'Harris',	'Administration',	'Orlando Gee'		UNION
	SELECT		'Orlando ',	'Gee',		'Engineering',		'Orlando Gee'		UNION
	SELECT		NULL,		NULL,		'Finance',			''					UNION
	SELECT		NULL,		NULL,		'Marketing',		'Donna Carrera';

	SELECT * INTO #ActualResults FROM #ExpectedResults WHERE 1=2
	INSERT INTO #ActualResults EXEC [dbo].[uspGetEmployeeDepartmentManagers]

	EXEC tsqlt.assertequalstable #ExpectedResults, #ActualResults

GO


