
/****** Object:  Table [dbo].[roles]    Script Date: 29/12/2018 14:25:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT * FROM sys.OBJECTS WHERE name='roles' AND type_desc='USER_TABLE')
	DROP TABLE [dbo].[roles]
GO

CREATE TABLE [dbo].[roles](
	[role_id] [int] NULL,
	[role_name] [varchar](10) NULL
) ON [PRIMARY]
GO


