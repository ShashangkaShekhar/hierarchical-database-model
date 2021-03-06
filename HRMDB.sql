USE [HRMDB]
GO
/****** Object:  Table [dbo].[tbl_Designation]    Script Date: 7/31/2016 2:02:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Designation](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Designation] PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 7/31/2016 2:02:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Employee](
	[EmployeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DesgiantionID] [int] NULL,
	[ReportingTo] [int] NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_tbl_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_Designation] ON 

GO
INSERT [dbo].[tbl_Designation] ([DesignationID], [Name], [Description]) VALUES (1, N'CEO', NULL)
GO
INSERT [dbo].[tbl_Designation] ([DesignationID], [Name], [Description]) VALUES (2, N'COO', NULL)
GO
INSERT [dbo].[tbl_Designation] ([DesignationID], [Name], [Description]) VALUES (3, N'CTO', NULL)
GO
INSERT [dbo].[tbl_Designation] ([DesignationID], [Name], [Description]) VALUES (4, N'CIO', NULL)
GO
INSERT [dbo].[tbl_Designation] ([DesignationID], [Name], [Description]) VALUES (5, N'SW', NULL)
GO
INSERT [dbo].[tbl_Designation] ([DesignationID], [Name], [Description]) VALUES (6, N'DBA', NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Designation] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Employee] ON 

GO
INSERT [dbo].[tbl_Employee] ([EmployeID], [Name], [DesgiantionID], [ReportingTo], [Description]) VALUES (1, N'Pritu Ps', 1, NULL, NULL)
GO
INSERT [dbo].[tbl_Employee] ([EmployeID], [Name], [DesgiantionID], [ReportingTo], [Description]) VALUES (2, N'Parvez Reza', 2, 1, NULL)
GO
INSERT [dbo].[tbl_Employee] ([EmployeID], [Name], [DesgiantionID], [ReportingTo], [Description]) VALUES (3, N'Sirajum Munira
', 3, 1, NULL)
GO
INSERT [dbo].[tbl_Employee] ([EmployeID], [Name], [DesgiantionID], [ReportingTo], [Description]) VALUES (4, N'Mohibul Islam', 4, 1, NULL)
GO
INSERT [dbo].[tbl_Employee] ([EmployeID], [Name], [DesgiantionID], [ReportingTo], [Description]) VALUES (5, N'Engr Dinobondhu', 5, 3, NULL)
GO
INSERT [dbo].[tbl_Employee] ([EmployeID], [Name], [DesgiantionID], [ReportingTo], [Description]) VALUES (6, N'Milina Mili', 6, 3, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_Employee] OFF
GO
