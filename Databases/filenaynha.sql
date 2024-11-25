USE [CSE443]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/25/2024 4:06:55 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Biography] [nvarchar](max) NOT NULL,
	[Nationality] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Website] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Avatar] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[BookCode] [nvarchar](max) NOT NULL,
	[Publisher] [nvarchar](max) NOT NULL,
	[PublishedYear] [datetime2](7) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[TotalCopies] [int] NOT NULL,
	[AvailableCopies] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Avatar] [nvarchar](max) NOT NULL,
	[Pdf] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carousels]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carousels](
	[CarouselId] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](200) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[LinkUrl] [nvarchar](max) NOT NULL,
	[Order] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Carousels] PRIMARY KEY CLUSTERED 
(
	[CarouselId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Avatar] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loans](
	[LoanId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BookId] [int] NOT NULL,
	[LoanDate] [datetime2](7) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[ReturnDate] [datetime2](7) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Loans] PRIMARY KEY CLUSTERED 
(
	[LoanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/25/2024 4:06:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UserCode] [nvarchar](max) NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ActiveCode] [nvarchar](max) NOT NULL,
	[Avatar] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241119135124_AddIdentitySupport', N'8.0.10')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'dbcb88be-e83f-4169-ada8-9031750ea406', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c493f191-cb06-4802-b52c-27b471612ddb', N'dbcb88be-e83f-4169-ada8-9031750ea406')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'294c6cf3-e3ef-4319-a362-35a86d4794b1', N'ductrong12072002@gmail.com', N'DUCTRONG12072002@GMAIL.COM', N'ductrong12072002@gmail.com', N'DUCTRONG12072002@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMJyPHhP1OZzPkmJA20bEt8yIpRQ60iTQZC7UH/bCHOuwbgnblmGBA6hYsx+ChRUeg==', N'RLCRSRHBGP33MHGCV6E7G77LVC2KWOHS', N'799314ea-3dc1-4f8b-b515-55e8256e67c0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c493f191-cb06-4802-b52c-27b471612ddb', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEHd84ALCqwlZvXphRnnAUB49HL7PPGxuLvvu7HdEeMB/qmOOeUkknLc791FWR+Bm/Q==', N'MOGNCVAUTVDUOOYBBNIBE6LZECXJC7RP', N'f0d5b840-723a-48b7-8cfb-78926d31a5a3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd481b60c-ed9d-49e9-8280-24cf7367b3e5', N'duyen@gmail.com', N'DUYEN@GMAIL.COM', N'duyen@gmail.com', N'DUYEN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJ7P4GrS91Gjb9aH+UaCrqi54/fVQ7hc/31gSl3oIGWlha7DJJxhozExBe6h910O/g==', N'SL4DPYO4V43FU5CTURIJAVKAXX5UBFY2', N'b3ab6220-11c1-4c86-aced-246101a9008c', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([AuthorId], [FirstName], [LastName], [DateOfBirth], [Biography], [Nationality], [Email], [Website], [CreatedDate], [IsActive], [Avatar]) VALUES (1, N'John', N'Doe', CAST(N'1975-06-15T00:00:00.0000000' AS DateTime2), N'Expert in C# programming', N'American', N'johndoe@example.com', N'https://johndoe.com', CAST(N'2024-11-21T17:13:37.6100000' AS DateTime2), 1, N'/authors/johndoe.jpg')
INSERT [dbo].[Authors] ([AuthorId], [FirstName], [LastName], [DateOfBirth], [Biography], [Nationality], [Email], [Website], [CreatedDate], [IsActive], [Avatar]) VALUES (2, N'Jane', N'Smith', CAST(N'1982-02-28T00:00:00.0000000' AS DateTime2), N'Specialist in web development', N'British', N'janesmith@example.com', N'https://janesmith.com', CAST(N'2024-11-21T17:13:37.6100000' AS DateTime2), 1, N'/authors/janesmith.jpg')
INSERT [dbo].[Authors] ([AuthorId], [FirstName], [LastName], [DateOfBirth], [Biography], [Nationality], [Email], [Website], [CreatedDate], [IsActive], [Avatar]) VALUES (3, N'Tom', N'Brown', CAST(N'1979-11-10T00:00:00.0000000' AS DateTime2), N'Database and EF Core expert', N'Canadian', N'tombrown@example.com', N'https://tombrown.com', CAST(N'2024-11-21T17:13:37.6100000' AS DateTime2), 1, N'/authors/tombrown.jpg')
INSERT [dbo].[Authors] ([AuthorId], [FirstName], [LastName], [DateOfBirth], [Biography], [Nationality], [Email], [Website], [CreatedDate], [IsActive], [Avatar]) VALUES (4, N'Emily', N'Clark', CAST(N'1985-08-08T00:00:00.0000000' AS DateTime2), N'LINQ and data querying expert', N'Australian', N'emilyclark@example.com', N'https://emilyclark.com', CAST(N'2024-11-21T17:13:37.6100000' AS DateTime2), 1, N'/authors/emilyclark.jpg')
INSERT [dbo].[Authors] ([AuthorId], [FirstName], [LastName], [DateOfBirth], [Biography], [Nationality], [Email], [Website], [CreatedDate], [IsActive], [Avatar]) VALUES (5, N'Michael', N'Johnson', CAST(N'1980-03-21T00:00:00.0000000' AS DateTime2), N'Expert in software design patterns', N'German', N'michaeljohnson@example.com', N'https://michaeljohnson.com', CAST(N'2024-11-21T17:13:37.6100000' AS DateTime2), 1, N'/authors/michaeljohnson.jpg')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([BookId], [Title], [Description], [BookCode], [Publisher], [PublishedYear], [CategoryId], [AuthorId], [TotalCopies], [AvailableCopies], [CreatedDate], [Avatar], [Pdf]) VALUES (42, N'C# Programming', N'Comprehensive guide to C#', N'B001', N'TechBooks', CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 6, 1, 5, 3, CAST(N'2024-11-21T17:14:45.0200000' AS DateTime2), N'images/books/am-nhac.png', N'pdf/Lab3.pdf')
INSERT [dbo].[Books] ([BookId], [Title], [Description], [BookCode], [Publisher], [PublishedYear], [CategoryId], [AuthorId], [TotalCopies], [AvailableCopies], [CreatedDate], [Avatar], [Pdf]) VALUES (43, N'ASP.NET MVC', N'Learn ASP.NET MVC framework', N'B002', N'WebBooks', CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 7, 2, 4, 4, CAST(N'2024-11-21T17:14:45.0200000' AS DateTime2), N'images/books/cong-nghe-6.png', N'pdf/Lab4.pdf')
INSERT [dbo].[Books] ([BookId], [Title], [Description], [BookCode], [Publisher], [PublishedYear], [CategoryId], [AuthorId], [TotalCopies], [AvailableCopies], [CreatedDate], [Avatar], [Pdf]) VALUES (44, N'Entity Framework Core', N'Master EF Core', N'B003', N'DataBooks', CAST(N'2021-03-15T00:00:00.0000000' AS DateTime2), 8, 3, 3, 2, CAST(N'2024-11-21T17:14:45.0200000' AS DateTime2), N'images/books/gdcd-6.png', N'pdf/Lab5.pdf')
INSERT [dbo].[Books] ([BookId], [Title], [Description], [BookCode], [Publisher], [PublishedYear], [CategoryId], [AuthorId], [TotalCopies], [AvailableCopies], [CreatedDate], [Avatar], [Pdf]) VALUES (45, N'LINQ in C#', N'Querying data with LINQ', N'B004', N'DataBooks', CAST(N'2020-07-20T00:00:00.0000000' AS DateTime2), 6, 4, 2, 2, CAST(N'2024-11-21T17:14:45.0200000' AS DateTime2), N'images/books/lich-su-6.png', N'pdf/Lab6.pdf')
INSERT [dbo].[Books] ([BookId], [Title], [Description], [BookCode], [Publisher], [PublishedYear], [CategoryId], [AuthorId], [TotalCopies], [AvailableCopies], [CreatedDate], [Avatar], [Pdf]) VALUES (46, N'Design Patterns in C#', N'Understanding design patterns', N'B005', N'CodeBooks', CAST(N'2019-11-25T00:00:00.0000000' AS DateTime2), 7, 5, 6, 6, CAST(N'2024-11-21T17:14:45.0200000' AS DateTime2), N'images/books/tieng-anh.png', N'pdf/Lab7.pdf')
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Carousels] ON 

INSERT [dbo].[Carousels] ([CarouselId], [ImageUrl], [Title], [Description], [LinkUrl], [Order], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (1, N'images/carousel/image1.jpg', N'First Carousel', N'This is the first carousel item description.', N'http://example.com/link1', 1, 1, CAST(N'2024-11-21T17:21:16.0633333' AS DateTime2), CAST(N'2024-11-21T17:21:16.0633333' AS DateTime2))
INSERT [dbo].[Carousels] ([CarouselId], [ImageUrl], [Title], [Description], [LinkUrl], [Order], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (2, N'images/carousel/image2.jpg', N'Second Carousel', N'This is the second carousel item description.', N'http://example.com/link2', 2, 1, CAST(N'2024-11-21T17:21:16.0633333' AS DateTime2), CAST(N'2024-11-21T17:21:16.0633333' AS DateTime2))
INSERT [dbo].[Carousels] ([CarouselId], [ImageUrl], [Title], [Description], [LinkUrl], [Order], [IsActive], [CreatedDate], [UpdatedDate]) VALUES (3, N'images/carousel/image3.jpg', N'Third Carousel', N'This is the third carousel item description.', N'http://example.com/link3', 3, 1, CAST(N'2024-11-21T17:21:16.0633333' AS DateTime2), CAST(N'2024-11-21T17:21:16.0633333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Carousels] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [CreatedDate], [UpdatedDate], [IsActive], [Avatar]) VALUES (6, N'Programming', N'Books on various programming languages', CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), 1, N'/categories/image1.jpg')
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [CreatedDate], [UpdatedDate], [IsActive], [Avatar]) VALUES (7, N'Fiction', N'Resources for web development', CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), 1, N'/categories/image2.jpg')
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [CreatedDate], [UpdatedDate], [IsActive], [Avatar]) VALUES (8, N'Science Fiction', N'Database management and development', CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), 1, N'/categories/image3.jpg')
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [CreatedDate], [UpdatedDate], [IsActive], [Avatar]) VALUES (11, N'Software Design', N'Books on software design and patterns', CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), 1, N'/categories/softwaredesign.jpg')
INSERT [dbo].[Categories] ([CategoryId], [Name], [Description], [CreatedDate], [UpdatedDate], [IsActive], [Avatar]) VALUES (12, N'Networking', N'Resources for network administration and security', CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), CAST(N'2024-11-21T17:13:17.6366667' AS DateTime2), 1, N'/categories/networking.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [FullName], [Description], [Password], [Email], [Phone], [Address], [Status], [CreatedDate], [UserCode], [IsLocked], [IsDeleted], [IsActive], [ActiveCode], [Avatar]) VALUES (1, N'Alice Johnson', N'Regular user', N'password123', N'alice@example.com', N'1234567890', N'123 Maple St', 1, CAST(N'2024-11-21T16:59:14.4266667' AS DateTime2), N'U001', 0, 0, 1, N'ACT123', N'/avatars/alice.jpg')
INSERT [dbo].[Users] ([UserId], [FullName], [Description], [Password], [Email], [Phone], [Address], [Status], [CreatedDate], [UserCode], [IsLocked], [IsDeleted], [IsActive], [ActiveCode], [Avatar]) VALUES (2, N'Bob Smith', N'VIP user', N'password456', N'bob@example.com', N'2345678901', N'456 Oak St', 1, CAST(N'2024-11-21T16:59:14.4266667' AS DateTime2), N'U002', 0, 0, 1, N'ACT456', N'/avatars/bob.jpg')
INSERT [dbo].[Users] ([UserId], [FullName], [Description], [Password], [Email], [Phone], [Address], [Status], [CreatedDate], [UserCode], [IsLocked], [IsDeleted], [IsActive], [ActiveCode], [Avatar]) VALUES (3, N'Cathy Lee', N'Library staff', N'password789', N'cathy@example.com', N'3456789012', N'789 Pine St', 1, CAST(N'2024-11-21T16:59:14.4266667' AS DateTime2), N'U003', 0, 0, 1, N'ACT789', N'/avatars/cathy.jpg')
INSERT [dbo].[Users] ([UserId], [FullName], [Description], [Password], [Email], [Phone], [Address], [Status], [CreatedDate], [UserCode], [IsLocked], [IsDeleted], [IsActive], [ActiveCode], [Avatar]) VALUES (4, N'David Brown', N'Frequent visitor', N'password101', N'david@example.com', N'4567890123', N'101 Elm St', 1, CAST(N'2024-11-21T16:59:14.4266667' AS DateTime2), N'U004', 0, 0, 1, N'ACT101', N'/avatars/david.jpg')
INSERT [dbo].[Users] ([UserId], [FullName], [Description], [Password], [Email], [Phone], [Address], [Status], [CreatedDate], [UserCode], [IsLocked], [IsDeleted], [IsActive], [ActiveCode], [Avatar]) VALUES (5, N'Eva Green', N'Book enthusiast', N'password102', N'eva@example.com', N'5678901234', N'202 Birch St', 1, CAST(N'2024-11-21T16:59:14.4266667' AS DateTime2), N'U005', 0, 0, 1, N'ACT102', N'/avatars/eva.jpg')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([AuthorId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors_AuthorId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD  CONSTRAINT [FK_Loans_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([BookId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Loans] CHECK CONSTRAINT [FK_Loans_Books_BookId]
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD  CONSTRAINT [FK_Loans_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Loans] CHECK CONSTRAINT [FK_Loans_Users_UserId]
GO
