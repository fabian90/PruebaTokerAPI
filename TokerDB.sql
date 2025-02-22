USE [TokerDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14/12/2024 1:09:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14/12/2024 1:09:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[Position] [varchar](100) NULL,
	[Email] [varchar](100) NOT NULL,
	[Phone] [varchar](15) NULL,
	[EntityId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entity]    Script Date: 14/12/2024 1:09:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Entity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 14/12/2024 1:09:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 14/12/2024 1:09:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](120) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](60) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 14/12/2024 1:09:35 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240821225322_InitialCreate', N'6.0.33')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240822022437_InitialCreateEmployeeEntity', N'6.0.33')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Position], [Email], [Phone], [EntityId], [IsActive]) VALUES (2, N'Fabian', N'Vargas Tovar', CAST(N'1990-07-27T00:00:00.0000000' AS DateTime2), N'Desarrollador', N'fabian.vargas123@gmail.com', N'3333333', 1, 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Position], [Email], [Phone], [EntityId], [IsActive]) VALUES (3, N'Ricardo', N'Vargas', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Desarrollador', N'rvt_richar@hotmail.com', N'32111', 3, 0)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Position], [Email], [Phone], [EntityId], [IsActive]) VALUES (4, N'Lina', N'Roa', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Medica', N'rvt_richar@hotmail.com', N'312222', 3, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Position], [Email], [Phone], [EntityId], [IsActive]) VALUES (5, N'string', N'string', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'string', N'string', N'string', 2, 1)
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Position], [Email], [Phone], [EntityId], [IsActive]) VALUES (6, N'fabian', N'vargas tovar', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'desarrollador', N'fabian.vargas123@gmail.com', N'3166919028', 2, 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Entity] ON 

INSERT [dbo].[Entity] ([Id], [Name], [IsActive]) VALUES (1, N'SETP', 0)
INSERT [dbo].[Entity] ([Id], [Name], [IsActive]) VALUES (2, N'Alcaldia', 1)
INSERT [dbo].[Entity] ([Id], [Name], [IsActive]) VALUES (3, N'Gobernación del Huila', 1)
INSERT [dbo].[Entity] ([Id], [Name], [IsActive]) VALUES (4, N'Neiva', 0)
INSERT [dbo].[Entity] ([Id], [Name], [IsActive]) VALUES (5, N'Alcaldía de Neiva', 1)
SET IDENTITY_INSERT [dbo].[Entity] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name], [IsActive]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Role] ([Id], [Name], [IsActive]) VALUES (2, N'User', 1)
INSERT [dbo].[Role] ([Id], [Name], [IsActive]) VALUES (3, N'Manager', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserName], [Password], [FirstName], [LastName], [Email], [IsActive]) VALUES (4, N'admin_user', N'10000.rL2GPvNTYHUH0MWH48gbTA==.QIsDm/0lmZm55wKMtqZypClI6B1urmbvjQomH0NEZAQ=', N'Admin', N'User', N'admin@example.com', 1)
INSERT [dbo].[User] ([Id], [UserName], [Password], [FirstName], [LastName], [Email], [IsActive]) VALUES (6, N'prueba', N'10000.rL2GPvNTYHUH0MWH48gbTA==.QIsDm/0lmZm55wKMtqZypClI6B1urmbvjQomH0NEZAQ=', N'prueba', N'prueba', N'fabian', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [IdUser], [IdRole]) VALUES (4, 4, 1)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Entity_EntityId] FOREIGN KEY([EntityId])
REFERENCES [dbo].[Entity] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Entity_EntityId]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK__UserRole__IdUser__6477ECF3] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK__UserRole__IdUser__6477ECF3]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [fk_RoleXUser_IdRol] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [fk_RoleXUser_IdRol]
GO
