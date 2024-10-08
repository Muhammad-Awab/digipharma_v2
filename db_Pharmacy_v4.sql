USE [master]
GO
/****** Object:  Database [db_pharmacy]    Script Date: 12/1/2023 9:15:56 AM ******/
CREATE DATABASE [db_pharmacy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_pharmacy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\db_pharmacy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_pharmacy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\db_pharmacy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [db_pharmacy] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_pharmacy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_pharmacy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_pharmacy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_pharmacy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_pharmacy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_pharmacy] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_pharmacy] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_pharmacy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_pharmacy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_pharmacy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_pharmacy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_pharmacy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_pharmacy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_pharmacy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_pharmacy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_pharmacy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [db_pharmacy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_pharmacy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_pharmacy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_pharmacy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_pharmacy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_pharmacy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_pharmacy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_pharmacy] SET RECOVERY FULL 
GO
ALTER DATABASE [db_pharmacy] SET  MULTI_USER 
GO
ALTER DATABASE [db_pharmacy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_pharmacy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_pharmacy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_pharmacy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_pharmacy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_pharmacy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_pharmacy', N'ON'
GO
ALTER DATABASE [db_pharmacy] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_pharmacy] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [db_pharmacy]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/1/2023 9:15:56 AM ******/
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
/****** Object:  Table [dbo].[Admin_Record]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Record](
	[pk_AdminId] [int] NOT NULL,
	[fk_PharmacyId] [int] NULL,
	[AdminName] [nvarchar](255) NULL,
	[AdminPhoneNo] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/1/2023 9:15:56 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/1/2023 9:15:56 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/1/2023 9:15:56 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/1/2023 9:15:56 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/1/2023 9:15:56 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billing_Record]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billing_Record](
	[pk_BillingId] [int] NOT NULL,
	[fk_MedId] [int] NULL,
	[TotalPrice] [decimal](10, 2) NULL,
	[Discount] [decimal](10, 2) NULL,
	[DiscountPerc] [int] NULL,
	[GrandTotal] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_BillingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine_Record]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine_Record](
	[pk_MedId] [int] IDENTITY(1,1) NOT NULL,
	[EntererId] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[Location] [nvarchar](255) NULL,
	[Stock] [int] NULL,
	[Manufacturer] [nvarchar](255) NULL,
	[Supplier] [nvarchar](255) NULL,
	[MfgDate] [date] NULL,
	[ExpDate] [date] NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK__Medicine__EA07F408054BC20A] PRIMARY KEY CLUSTERED 
(
	[pk_MedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmacy_Record]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacy_Record](
	[pk_PharmacyId] [int] NOT NULL,
	[PharmacyName] [nvarchar](255) NULL,
	[PharmacyAddress] [nvarchar](255) NULL,
	[City] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_PharmacyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Point_Of_Sale]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point_Of_Sale](
	[pk_PointOfSaleId] [int] IDENTITY(1,1) NOT NULL,
	[fk_BillingId] [int] NULL,
	[fk_UserId] [int] NULL,
	[fk_MedicineId] [int] NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CurrentDate] [date] NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [nvarchar](50) NULL,
	[DiscountPrice] [float] NULL,
	[DiscountPercentage] [int] NULL,
	[GrandTotal] [float] NULL,
 CONSTRAINT [PK_Point_Of_Sale] PRIMARY KEY CLUSTERED 
(
	[pk_PointOfSaleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POS_Record]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POS_Record](
	[pk_POSId] [int] NOT NULL,
	[fk_BillingId] [int] NULL,
	[fk_MedId] [int] NULL,
	[SellerId] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_POSId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Record]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Record](
	[pk_SalesId] [int] IDENTITY(1,1) NOT NULL,
	[fk_BillingId] [int] NULL,
	[DiscountPrice] [float] NULL,
	[DiscountPercentage] [nchar](10) NULL,
	[GrandTotal] [nvarchar](50) NULL,
	[CurrentDate] [date] NULL,
 CONSTRAINT [PK_Sales_Record] PRIMARY KEY CLUSTERED 
(
	[pk_SalesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Record]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Record](
	[pk_UserId] [int] NOT NULL,
	[fk_AdminId] [int] NULL,
	[UserFullName] [nvarchar](255) NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'7.0.10')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'104125005505354553390', N'Google', N'e25105ea-962e-4574-981e-0449d2442d17')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7e98e697-3671-4f08-851a-47020a620ca3', N'rehan.akhtar.985@gmail.com', N'REHAN.AKHTAR.985@GMAIL.COM', N'rehan.akhtar.985@gmail.com', N'REHAN.AKHTAR.985@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAELRBFeFIukCo3FPEQ5Va/XbOguxiR49qapqYISykXZyE/ssUjzzs23h7QCuzAM749Q==', N'354CUZBYXHZGV3K7RG7HSYJ5NDFWR46O', N'ede0a5b2-cc4e-4e97-9f25-f31fdd5dfd51', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e25105ea-962e-4574-981e-0449d2442d17', N'210953@students.au.edu.pk', N'210953@STUDENTS.AU.EDU.PK', N'210953@students.au.edu.pk', N'210953@STUDENTS.AU.EDU.PK', 1, NULL, N'3BHR6ETIJQU2AQ6UUX5GVZSLC2W5RGZ5', N'0cf3849f-37c7-4ded-9e63-1551a2919d17', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f793307c-0aaa-4d91-aae0-9ca5278f0209', N'rehan.akhtar@gmail.com', N'REHAN.AKHTAR@GMAIL.COM', N'rehan.akhtar@gmail.com', N'REHAN.AKHTAR@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOSA+FuT5PZ2MShIU/x06xlP+c/nmqIM4SvinpVw/x7LRuBKHVN5l5WRA/iFQ+kV+A==', N'XDZFQDJYZM7XPPAH65LIXU6U7PHA2CYW', N'29c97331-6b02-4300-a397-2e88338c1750', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'7e98e697-3671-4f08-851a-47020a620ca3', N'[AspNetUserStore]', N'AuthenticatorKey', N'ME4EAJV4TZM543TNOGOGIPTYFQELZSOL')
GO
SET IDENTITY_INSERT [dbo].[Medicine_Record] ON 

INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (1, 2, N'Panadol', CAST(50.00 AS Decimal(10, 2)), N'Rack 1', 100, N'GSK', N'Ali', CAST(N'2023-01-01' AS Date), CAST(N'2023-12-31' AS Date), CAST(N'2023-12-01T08:38:13.470' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (2, 1, N'Aspirin', CAST(5.99 AS Decimal(10, 2)), N'Pharmacy A', 200, N'Generic Pharma', N'Supplier X', CAST(N'2023-01-15' AS Date), CAST(N'2024-01-15' AS Date), CAST(N'2023-12-01T08:40:33.993' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (3, 2, N'Paracetamol', CAST(3.50 AS Decimal(10, 2)), N'Pharmacy B', 150, N'HealthCare Co.', N'Supplier Y', CAST(N'2023-02-01' AS Date), CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01T08:40:33.993' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (4, 3, N'Ibuprofen', CAST(7.25 AS Decimal(10, 2)), N'Pharmacy C', 100, N'MediCorp', N'Supplier Z', CAST(N'2023-03-10' AS Date), CAST(N'2023-11-10' AS Date), CAST(N'2023-12-01T08:40:33.993' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (5, 4, N'Amoxicillin', CAST(12.75 AS Decimal(10, 2)), N'Pharmacy D', 80, N'BioPharma Ltd.', N'Supplier W', CAST(N'2023-04-05' AS Date), CAST(N'2023-10-05' AS Date), CAST(N'2023-12-01T08:40:33.993' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (6, 5, N'Omeprazole', CAST(8.50 AS Decimal(10, 2)), N'Pharmacy E', 120, N'Pharma Solutions', N'Supplier V', CAST(N'2023-05-20' AS Date), CAST(N'2023-09-20' AS Date), CAST(N'2023-12-01T08:40:33.993' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (7, 11, N'Lisinopril', CAST(9.99 AS Decimal(10, 2)), N'Pharmacy F', 180, N'HealthPharma', N'Supplier U', CAST(N'2023-06-01' AS Date), CAST(N'2023-12-01' AS Date), CAST(N'2023-12-01T08:41:49.587' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (8, 25, N'Atorvastatin', CAST(15.25 AS Decimal(10, 2)), N'Pharmacy G', 120, N'CardioCare', N'Supplier T', CAST(N'2023-07-15' AS Date), CAST(N'2023-11-15' AS Date), CAST(N'2023-12-01T08:41:49.587' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (9, 32, N'Metformin', CAST(7.50 AS Decimal(10, 2)), N'Pharmacy H', 90, N'Diabetes Solutions', N'Supplier S', CAST(N'2023-08-05' AS Date), CAST(N'2023-10-05' AS Date), CAST(N'2023-12-01T08:41:49.587' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (10, 41, N'Ciprofloxacin', CAST(11.75 AS Decimal(10, 2)), N'Pharmacy I', 60, N'InfectaPharm', N'Supplier R', CAST(N'2023-09-10' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2023-12-01T08:41:49.587' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (11, 51, N'Levothyroxine', CAST(6.80 AS Decimal(10, 2)), N'Pharmacy J', 150, N'ThyroidCare', N'Supplier Q', CAST(N'2023-10-20' AS Date), CAST(N'2024-04-20' AS Date), CAST(N'2023-12-01T08:41:49.587' AS DateTime))
INSERT [dbo].[Medicine_Record] ([pk_MedId], [EntererId], [Name], [UnitPrice], [Location], [Stock], [Manufacturer], [Supplier], [MfgDate], [ExpDate], [EntryDate]) VALUES (12, 2, N'Hair Aid', CAST(1100.00 AS Decimal(10, 2)), N'Rack 4', 5, N'MaxiTech', N'Khan', CAST(N'2023-02-09' AS Date), CAST(N'2023-12-31' AS Date), CAST(N'2023-12-01T08:59:53.527' AS DateTime))
SET IDENTITY_INSERT [dbo].[Medicine_Record] OFF
GO
SET IDENTITY_INSERT [dbo].[Point_Of_Sale] ON 

INSERT [dbo].[Point_Of_Sale] ([pk_PointOfSaleId], [fk_BillingId], [fk_UserId], [fk_MedicineId], [CustomerName], [CurrentDate], [Quantity], [TotalPrice], [DiscountPrice], [DiscountPercentage], [GrandTotal]) VALUES (1, 1, 1, 1, N'Rehan', CAST(N'2023-10-06' AS Date), 1, N'25', 2, 25, 200)
SET IDENTITY_INSERT [dbo].[Point_Of_Sale] OFF
GO
SET IDENTITY_INSERT [dbo].[Sales_Record] ON 

INSERT [dbo].[Sales_Record] ([pk_SalesId], [fk_BillingId], [DiscountPrice], [DiscountPercentage], [GrandTotal], [CurrentDate]) VALUES (1, 1, 15, N'29        ', N'2500', CAST(N'2023-10-04' AS Date))
SET IDENTITY_INSERT [dbo].[Sales_Record] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/1/2023 9:15:56 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/1/2023 9:15:56 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/1/2023 9:15:56 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/1/2023 9:15:56 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/1/2023 9:15:56 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/1/2023 9:15:56 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/1/2023 9:15:56 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[SP_GetData]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_GetData] 
as
begin

select * from Medicine_Record
end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetDataFromTable]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetDataFromTable]
as
begin
select * from Medicine_Record
end

GO
/****** Object:  StoredProcedure [dbo].[SP_GetMedicineRecord]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetMedicineRecord]
as
begin
select * from Medicine_Record
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSalesRecord]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetSalesRecord] 
@From nvarchar(50),
@To nvarchar(50)
as
begin
select * from Point_Of_Sale where CurrentDate BETWEEN @From AND @To
end
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveMedicineRecord]    Script Date: 12/1/2023 9:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_SaveMedicineRecord]
@EntererId int=NULL,
@Name nvarchar(50)=NULL,
@UnitPrice float=NULL,
@Location nvarchar(50)=NULL,
@Stock int=NULL,
@Manufacturer nvarchar(50)=NULL,
@Supplier nvarchar(50)=NULL,
@MfgDate  nvarchar(50)=NULL,
@ExpDate nvarchar(50)=NULL
as
begin
insert into Medicine_Record(EntererId,Name,UnitPrice,Location,Stock,Manufacturer,
Supplier,MfgDate,ExpDate,EntryDate) values (@EntererId,@Name,@UnitPrice,@Location,
@Stock,@Manufacturer,@Supplier,@MfgDate,@ExpDate,GETDATE())
end
GO
USE [master]
GO
ALTER DATABASE [db_pharmacy] SET  READ_WRITE 
GO
