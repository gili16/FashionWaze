USE [master]
GO
/****** Object:  Database [Python_Project_v4]    Script Date: 07/04/2024 09:20:28 ******/
CREATE DATABASE [Python_Project_v4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Python_Project_v4', FILENAME = N'C:\Users\landa\Python_Project_v4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Python_Project_v4_log', FILENAME = N'C:\Users\landa\Python_Project_v4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Python_Project_v4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Python_Project_v4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Python_Project_v4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Python_Project_v4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Python_Project_v4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Python_Project_v4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Python_Project_v4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Python_Project_v4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Python_Project_v4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Python_Project_v4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Python_Project_v4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Python_Project_v4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Python_Project_v4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Python_Project_v4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Python_Project_v4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Python_Project_v4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Python_Project_v4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Python_Project_v4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Python_Project_v4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Python_Project_v4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Python_Project_v4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Python_Project_v4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Python_Project_v4] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Python_Project_v4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Python_Project_v4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Python_Project_v4] SET  MULTI_USER 
GO
ALTER DATABASE [Python_Project_v4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Python_Project_v4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Python_Project_v4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Python_Project_v4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Python_Project_v4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Python_Project_v4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Python_Project_v4] SET QUERY_STORE = OFF
GO
USE [Python_Project_v4]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 07/04/2024 09:20:28 ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 07/04/2024 09:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PictureName] [nvarchar](max) NOT NULL,
	[PictureSrc] [nvarchar](max) NOT NULL,
	[StoreName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240407054345_init', N'7.0.0')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (57, N'1.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-3-4-lorenzo-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (58, N'2.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-%d7%90%d7%a8%d7%95%d7%9a-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (59, N'3.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-%d7%90%d7%a8%d7%95%d7%9a-long-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (60, N'4.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a8%d7%95%d7%91%d7%a8%d7%98%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (61, N'5.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-3-4-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a1%d7%99%d7%a0%d7%99-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (62, N'6.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%99%d7%a8%d7%95%d7%a7-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (63, N'7.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%97%d7%95%d7%9d-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (64, N'8.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%a9%d7%97%d7%95%d7%a8-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (65, N'9.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%9b%d7%97%d7%95%d7%9c-6/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (66, N'10.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (67, N'11.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%91%d7%95%d7%a8%d7%93%d7%95-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (68, N'12.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%99%d7%a8%d7%95%d7%a7-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (69, N'51.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%99%d7%a8%d7%95%d7%a7-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (70, N'52.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%97%d7%95%d7%9d-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (71, N'53.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%a9%d7%97%d7%95%d7%a8-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (72, N'54.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%9b%d7%97%d7%95%d7%9c-6/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (73, N'55.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (74, N'56.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%91%d7%95%d7%a8%d7%93%d7%95-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (75, N'57.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%99%d7%a8%d7%95%d7%a7-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (76, N'58.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%9b%d7%97%d7%95%d7%9c-%d7%9e%d7%a8%d7%a0%d7%92%d7%95-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (77, N'65.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%a9%d7%97%d7%95%d7%a8-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (78, N'66.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%92%d7%95%d7%9c%d7%a3-%d7%a9%d7%97%d7%95%d7%a8-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (79, N'67.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%92%d7%95%d7%9c%d7%a3-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (80, N'68.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%92%d7%95%d7%9c%d7%a3-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (81, N'69.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%92%d7%95%d7%9c%d7%a3-%d7%97%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (82, N'70.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%a6%d7%a1%d7%98%d7%a8-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (83, N'71.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%9e%d7%9c%d7%91%d7%a0%d7%99%d7%9d-%d7%91%d7%95%d7%a8%d7%93%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (84, N'72.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%9e%d7%a0%d7%94%d7%98%d7%9f-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (85, N'86.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a9%d7%97%d7%95%d7%a8-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (86, N'87.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%a4%d7%a1%d7%99%d7%9d-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (87, N'88.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%a7%d7%95%d7%9e%d7%95%d7%a4%d7%9c%d7%90%d7%96-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (88, N'89.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%90%d7%9c%d7%9b%d7%a1%d7%95%d7%a0%d7%99%d7%9d-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (89, N'90.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%92%d7%a8%d7%99%d7%a9%d7%94-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (90, N'91.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%92%d7%a8%d7%a4%d7%99-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (91, N'92.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%95%d7%95%d7%a4%d7%9c-%d7%a4%d7%98%d7%a8%d7%95%d7%9c-%d7%9e%d7%a8%d7%a0%d7%92%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (92, N'93.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%9e%d7%9c%d7%91%d7%a0%d7%99%d7%9d-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (93, N'96.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-v-%d7%91%d7%99%d7%99%d7%a1%d7%99%d7%a7-%d7%a4%d7%98%d7%a8%d7%95%d7%9c-%d7%9e%d7%a8%d7%a0%d7%92%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (94, N'97.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-v-%d7%91%d7%99%d7%99%d7%a1%d7%99%d7%a7-%d7%99%d7%a8%d7%95%d7%a7-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (95, N'98.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%9b%d7%97%d7%95%d7%9c-%d7%9e%d7%a8%d7%a0%d7%92%d7%95-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (96, N'99.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%91%d7%95%d7%a8%d7%93%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (97, N'100.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (98, N'101.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-3-4-lorenzo-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (99, N'102.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-%d7%90%d7%a8%d7%95%d7%9a-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (100, N'103.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-%d7%90%d7%a8%d7%95%d7%9a-long-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (101, N'104.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a8%d7%95%d7%91%d7%a8%d7%98%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (102, N'105.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-3-4-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a1%d7%99%d7%a0%d7%99-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (103, N'106.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%90%d7%a0%d7%96%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (104, N'107.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%93%d7%90%d7%a1%d7%98%d7%99-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (105, N'108.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%92%d7%a9%d7%9d-3-4-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (106, N'121.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-v-%d7%91%d7%99%d7%99%d7%a1%d7%99%d7%a7-%d7%a4%d7%98%d7%a8%d7%95%d7%9c-%d7%9e%d7%a8%d7%a0%d7%92%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (107, N'122.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-v-%d7%91%d7%99%d7%99%d7%a1%d7%99%d7%a7-%d7%99%d7%a8%d7%95%d7%a7-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (108, N'123.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%9b%d7%97%d7%95%d7%9c-%d7%9e%d7%a8%d7%a0%d7%92%d7%95-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (109, N'124.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%91%d7%95%d7%a8%d7%93%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (110, N'125.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a4%d7%95%d7%93%d7%94-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (111, N'126.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%92%d7%a9%d7%9d-3-4-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (112, N'127.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%93%d7%a0%d7%99%d7%a1-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (113, N'128.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a4%d7%95%d7%a8%d7%93-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (114, N'129.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%95%d7%a8%d7%93%d7%95%d7%a8%d7%95%d7%99-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (115, N'130.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%95%d7%a8%d7%93%d7%95%d7%a8%d7%95%d7%99-%d7%97%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (116, N'131.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-3-4-lorenzo-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (117, N'132.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-%d7%90%d7%a8%d7%95%d7%9a-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (118, N'133.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a9%d7%9e%d7%99%d7%a8-%d7%90%d7%a8%d7%95%d7%9a-long-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (119, N'134.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a8%d7%95%d7%91%d7%a8%d7%98%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (120, N'135.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-3-4-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a1%d7%99%d7%a0%d7%99-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (121, N'136.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%90%d7%a0%d7%96%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (122, N'137.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%93%d7%90%d7%a1%d7%98%d7%99-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (123, N'138.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-3-4-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a1%d7%99%d7%a0%d7%99-%d7%a4%d7%97%d7%9d-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (124, N'139.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a0%d7%99%d7%a0%d7%99%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (125, N'140.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-3-4-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a1%d7%99%d7%a0%d7%99-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (126, N'141.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a6%d7%a8-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (127, N'142.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%92%d7%a9%d7%9d-3-4-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (128, N'144.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9c%d7%91%d7%9f9/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (129, N'145.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a8%d7%99%d7%92-%d7%a9-%d7%90-slim-easy-care-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (130, N'146.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a8%d7%99%d7%92-%d7%a9-%d7%90-slim-easy-care-%d7%aa%d7%9b%d7%9c%d7%aa/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (131, N'147.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%a9%d7%97%d7%95%d7%a8-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (132, N'148.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a1%d7%99%d7%a0%d7%99-slim-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (133, N'159.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-classic-%d7%9c%d7%91%d7%9f-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (134, N'160.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-slim-%d7%9c%d7%91%d7%9f-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (135, N'161.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-classic-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (136, N'162.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%97%d7%a4%d7%98%d7%99%d7%9d-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (137, N'163.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-slim-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (138, N'164.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%90%d7%a8%d7%95%d7%9a-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (139, N'165.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%a7%d7%a6%d7%a8-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (140, N'166.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%9c%d7%9c%d7%90-%d7%9b%d7%99%d7%a1-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (141, N'175.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-classic-%d7%9c%d7%91%d7%9f-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (142, N'176.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-slim-%d7%9c%d7%91%d7%9f-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (143, N'177.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-classic-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (144, N'178.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%97%d7%a4%d7%98%d7%99%d7%9d-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (145, N'179.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-slim-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (146, N'180.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%90%d7%a8%d7%95%d7%9a-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (147, N'181.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%a7%d7%a6%d7%a8-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (148, N'182.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%9c%d7%9c%d7%90-%d7%9b%d7%99%d7%a1-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (149, N'183.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%95%d7%9e%d7%91%d7%95-%d7%90%d7%a8%d7%95%d7%9a-e-c-slim-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (150, N'184.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a8%d7%99%d7%92-%d7%a9-%d7%90-%d7%a1%d7%9c%d7%99%d7%9d-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (151, N'185.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-combo-slim-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (152, N'186.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%a7%d7%a6%d7%a8-easy-care-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (153, N'187.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%90%d7%a8%d7%95%d7%9a-easy-care-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (154, N'188.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%9c%d7%99%d7%9d-%d7%90%d7%a8%d7%95%d7%9a-easy-care-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (155, N'189.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%9c%d7%99%d7%9d-%d7%a7%d7%a6%d7%a8-easy-care-%d7%9c%d7%91%d7%9f/', N'bagir')
GO
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (156, N'190.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%9c%d7%90%d7%a1%d7%99-%d7%a7%d7%a6%d7%a8-%d7%9c%d7%9c%d7%90-%d7%9b%d7%99%d7%a1-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (157, N'191.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (158, N'192.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (159, N'193.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%9b%d7%97%d7%95%d7%9c-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (160, N'194.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (161, N'195.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%a4%d7%a8%d7%99%d7%a0%d7%98/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (162, N'196.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%99%d7%a8%d7%95%d7%a7-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (163, N'197.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9b%d7%97%d7%95%d7%9c-%d7%a4%d7%a8%d7%99%d7%a0%d7%98-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (164, N'198.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9c%d7%91%d7%9f-7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (165, N'234.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (166, N'235.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%99%d7%a8%d7%95%d7%a7-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (167, N'236.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9c%d7%91%d7%9f-6/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (168, N'237.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%9b%d7%97%d7%95%d7%9c-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (169, N'238.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%aa%d7%9b%d7%9c%d7%aa-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (170, N'239.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%a4%d7%98%d7%a8%d7%95%d7%9c-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (171, N'240.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%aa%d7%9b%d7%9c%d7%aa-8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (172, N'241.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (173, N'242.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%90%d7%a4%d7%95%d7%a8-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (174, N'243.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9b%d7%97%d7%95%d7%9c-%d7%9e%d7%9c%d7%90%d7%a0%d7%92/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (175, N'244.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (176, N'245.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9b%d7%97%d7%95%d7%9c-%d7%a4%d7%a8%d7%99%d7%a0%d7%98-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (177, N'257.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%a9%d7%97%d7%95%d7%a8-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (178, N'258.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%a7%d7%90%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (179, N'259.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (180, N'260.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%97%d7%90%d7%a7%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (181, N'261.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a1%d7%9c%d7%99%d7%9d-%d7%90%d7%9c%d7%92%d7%a0%d7%98-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (182, N'272.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a4%d7%a8%d7%99%d7%a0%d7%98-classic-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (183, N'273.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a4%d7%a8%d7%99%d7%a0%d7%98-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (184, N'274.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-classic-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (185, N'275.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-5-%d7%9b%d7%99%d7%a1%d7%99%d7%9d-%d7%a4%d7%97%d7%9d-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (186, N'276.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-5-%d7%9b%d7%99%d7%a1%d7%99%d7%9d-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (187, N'277.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-5-%d7%9b%d7%99%d7%a1%d7%99%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (188, N'278.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (189, N'279.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (190, N'308.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-classic-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (191, N'309.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%a9%d7%97%d7%95%d7%a8-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (192, N'310.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%97%d7%90%d7%a7%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (193, N'311.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%a7%d7%90%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (194, N'312.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-5-%d7%9b%d7%99%d7%a1%d7%99%d7%9d-%d7%a4%d7%97%d7%9d-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (195, N'313.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-5-%d7%9b%d7%99%d7%a1%d7%99%d7%9d-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (196, N'314.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-5-%d7%9b%d7%99%d7%a1%d7%99%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (197, N'315.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (198, N'316.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (199, N'317.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (200, N'318.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a4%d7%97%d7%9d-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (201, N'319.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a9%d7%97%d7%95%d7%a8-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (202, N'320.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (203, N'321.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%90%d7%9c%d7%a7%d7%98%d7%a8%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (204, N'322.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%92%d7%99%d7%a0%d7%a1-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (205, N'323.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%92%d7%99%d7%a0%d7%a1-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (206, N'324.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%92%d7%99%d7%a0%d7%a1-%d7%9b%d7%97%d7%95%d7%9c-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (207, N'325.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%92%d7%99%d7%a0%d7%a1-%d7%9b%d7%97%d7%95%d7%9c-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (208, N'326.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (209, N'327.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (210, N'328.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a7%d7%90%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (211, N'329.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%a6%d7%99%d7%a0%d7%95-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (212, N'330.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (213, N'331.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a1%d7%9c%d7%99%d7%9d-%d7%90%d7%9c%d7%92%d7%a0%d7%98-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (214, N'332.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9e%d7%97%d7%95%d7%99%d7%98-classic-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (215, N'333.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (216, N'334.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a0%d7%99%d7%95-%d7%a1%d7%9c%d7%99%d7%9d-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (217, N'345.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-new-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (218, N'346.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-slim-%d7%90%d7%a4%d7%95%d7%a8-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (219, N'347.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-slim-%d7%90%d7%a4%d7%95%d7%a8-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (220, N'348.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-classic-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (221, N'349.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-classic-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (222, N'350.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-classic-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (223, N'351.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-new-slim-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (224, N'352.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (225, N'356.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-classic-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (226, N'357.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-classic-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (227, N'358.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-classic-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (228, N'359.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-new-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (229, N'360.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-slim-%d7%90%d7%a4%d7%95%d7%a8-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (230, N'361.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-slim-%d7%90%d7%a4%d7%95%d7%a8-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (231, N'362.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-new-slim-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (232, N'363.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (233, N'364.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-slim-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (234, N'365.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%9c%d7%99%d7%a4%d7%94-%d7%a1%d7%9c%d7%99%d7%9d-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (235, N'366.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%9c%d7%99%d7%99%d7%96%d7%a8-classic-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (236, N'367.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%9c%d7%99%d7%99%d7%96%d7%a8-new-slim-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (237, N'368.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a7%d7%98-classic-mm-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (238, N'369.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a7%d7%98-slim-mm/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (239, N'370.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a7%d7%98-classic-mm-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (240, N'371.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a7%d7%98-slim-mm-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (241, N'372.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-slim-mm/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (242, N'373.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-slim-mm-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (243, N'374.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9e%d7%97%d7%95%d7%99%d7%98-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (244, N'375.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9e%d7%97%d7%95%d7%99%d7%98-slim-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (245, N'376.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-mm-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (246, N'377.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-mm-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (247, N'378.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-new-slim-fq-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (248, N'379.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9e%d7%97%d7%95%d7%99%d7%98-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (249, N'389.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-slim-mm/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (250, N'390.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-mm-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (251, N'391.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-mm-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (252, N'392.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%9e%d7%97%d7%95%d7%99%d7%98-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (253, N'393.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-classic-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (254, N'394.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a0%d7%99%d7%95-%d7%a1%d7%9c%d7%99%d7%9d-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (255, N'395.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a0%d7%99%d7%95-%d7%a1%d7%9c%d7%99%d7%9d-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
GO
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (256, N'396.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a0%d7%99%d7%95-%d7%a1%d7%9c%d7%99%d7%9d-%d7%a4%d7%97%d7%9d-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (257, N'397.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-%d7%a1%d7%9c%d7%99%d7%9d-%d7%90%d7%9c%d7%92%d7%a0%d7%98-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (258, N'398.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1-slim-%d7%a0%d7%99%d7%99%d7%91%d7%99-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (259, N'399.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (260, N'400.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (261, N'401.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%91%d7%9e%d7%91%d7%95%d7%a7-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (262, N'402.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (263, N'403.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%a0%d7%99%d7%99%d7%91%d7%99-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (264, N'414.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8-%d7%a4%d7%a8%d7%99%d7%a0%d7%98/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (265, N'415.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%90%d7%a4%d7%95%d7%a8-%d7%9b%d7%94%d7%94-%d7%a4%d7%a8%d7%99%d7%a0%d7%98/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (266, N'416.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%91%d7%95%d7%a8%d7%93%d7%95-%d7%a4%d7%a8%d7%99%d7%a0%d7%98-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (267, N'417.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%99%d7%a8%d7%95%d7%a7-%d7%a4%d7%a8%d7%99%d7%a0%d7%98/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (268, N'418.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94-%d7%a4%d7%a8%d7%99%d7%a0%d7%98/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (269, N'419.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%a4%d7%a8%d7%99%d7%a0%d7%98-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (270, N'420.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%a4%d7%98%d7%a8%d7%95%d7%9c-%d7%a4%d7%a8%d7%99%d7%a0%d7%98-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (271, N'421.jpg', N'https://www.bagir-il.com/product/%d7%96%d7%95%d7%92-%d7%91%d7%95%d7%a7%d7%a1%d7%a8-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (272, N'423.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a6%d7%91%d7%a2%d7%95%d7%a0%d7%99-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (273, N'424.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a6%d7%91%d7%a2%d7%95%d7%a0%d7%99-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (274, N'425.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a6%d7%91%d7%a2%d7%95%d7%a0%d7%99-%d7%91%d7%95%d7%a8%d7%93%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (275, N'426.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a6%d7%91%d7%a2%d7%95%d7%a0%d7%99-%d7%97%d7%a8%d7%93%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (276, N'427.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a6%d7%91%d7%a2%d7%95%d7%a0%d7%99-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (277, N'428.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a6%d7%91%d7%a2%d7%95%d7%a0%d7%99-%d7%a1%d7%92%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (278, N'429.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a6%d7%91%d7%a2%d7%95%d7%a0%d7%99-%d7%a4%d7%98%d7%a8%d7%95%d7%9c-%d7%9e%d7%a8%d7%a0%d7%92%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (279, N'430.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a8%d7%91%d7%99%d7%99%d7%9d-%d7%91%d7%9e%d7%91%d7%95%d7%a7-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (280, N'434.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%92%d7%95%d7%a8%d7%aa-%d7%93%d7%95%d7%a8%d7%9f-%d7%9e%d7%99%d7%93%d7%95%d7%aa-%d7%92%d7%93%d7%95%d7%9c%d7%95%d7%aa-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (281, N'435.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%92%d7%95%d7%a8%d7%aa-%d7%93%d7%95%d7%a8%d7%9f-%d7%9e%d7%aa%d7%94%d7%a4%d7%9a-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (282, N'436.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%92%d7%95%d7%a8%d7%aa-%d7%a4%d7%9c%d7%98%d7%94-%d7%a9%d7%97%d7%95%d7%a8-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (283, N'437.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%92%d7%95%d7%a8%d7%aa-%d7%a7%d7%9c%d7%90%d7%a5-%d7%a9%d7%97%d7%95%d7%a8-10/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (284, N'438.jpg', N'https://www.bagir-il.com/product/%d7%a0%d7%a2%d7%9c%d7%99%d7%99%d7%9d-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (285, N'439.jpg', N'https://www.bagir-il.com/product/%d7%a0%d7%a2%d7%9c%d7%99%d7%99%d7%9d-%d7%93%d7%a8%d7%91%d7%99-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (286, N'440.jpg', N'https://www.bagir-il.com/product/%d7%a0%d7%a2%d7%9c%d7%99%d7%99%d7%9d-%d7%93%d7%a8%d7%91%d7%99-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (287, N'441.jpg', N'https://www.bagir-il.com/product/%d7%a0%d7%a2%d7%9c%d7%99%d7%99%d7%9d-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%90%d7%a7%d7%94-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (288, N'442.jpg', N'https://www.bagir-il.com/product/%d7%a0%d7%a2%d7%9c%d7%99%d7%99%d7%9d-%d7%93%d7%a8%d7%91%d7%99-%d7%90%d7%9c%d7%92%d7%a0%d7%98%d7%99-%d7%97%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (289, N'443.jpg', N'https://www.bagir-il.com/product/%d7%a0%d7%a2%d7%9c%d7%99%d7%99%d7%9d-%d7%97%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (290, N'444.jpg', N'https://www.bagir-il.com/product/%d7%a2%d7%a0%d7%99%d7%91%d7%94-%d7%9e%d7%a9%d7%99-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (291, N'445.jpg', N'https://www.bagir-il.com/product/%d7%a2%d7%a0%d7%99%d7%91%d7%94-%d7%9e%d7%a9%d7%99-%d7%96%d7%94%d7%91/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (292, N'446.jpg', N'https://www.bagir-il.com/product/%d7%a2%d7%a0%d7%99%d7%91%d7%94-%d7%9e%d7%a9%d7%99-%d7%98%d7%95%d7%a8%d7%a7%d7%99%d7%96/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (293, N'447.jpg', N'https://www.bagir-il.com/product/%d7%a2%d7%a0%d7%99%d7%91%d7%94-%d7%9e%d7%a9%d7%99-%d7%9b%d7%aa%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (294, N'448.jpg', N'https://www.bagir-il.com/product/%d7%a2%d7%a0%d7%99%d7%91%d7%94-%d7%a1%d7%90%d7%98%d7%9f-%d7%97%d7%9c%d7%a7-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (295, N'449.jpg', N'https://www.bagir-il.com/product/%d7%a2%d7%a0%d7%99%d7%91%d7%94-%d7%a6%d7%a8%d7%94-%d7%97%d7%9c%d7%a7%d7%94-%d7%99%d7%99%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (296, N'450.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%a4%d7%99%d7%95%d7%9f-%d7%97%d7%9c%d7%a7-%d7%99%d7%99%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (297, N'451.jpg', N'https://www.bagir-il.com/product/%d7%9b%d7%a4%d7%a4%d7%95%d7%aa-%d7%97%d7%9c%d7%a7-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (298, N'452.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%90%d7%a4%d7%95%d7%a8-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (299, N'453.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%91%d7%99%d7%99%d7%a1%d7%99%d7%a7-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (300, N'454.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9e%d7%95%d7%93%d7%a4%d7%a1-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (301, N'455.jpg', N'https://www.bagir-il.com/product/%d7%a9-%d7%a7-slim-%d7%aa%d7%9b%d7%9c%d7%aa/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (302, N'456.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (303, N'467.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (304, N'468.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9b%d7%97%d7%95%d7%9c-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (305, N'469.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%90%d7%a4%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (306, N'470.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%aa%d7%9b%d7%9c%d7%aa-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (307, N'471.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%aa%d7%9b%d7%9c%d7%aa/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (308, N'472.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%9b%d7%97%d7%95%d7%9c-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (309, N'473.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9c%d7%91%d7%9f-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (310, N'474.jpg', N'https://www.bagir-il.com/product/%d7%90%d7%a8%d7%99%d7%92-%d7%a9-%d7%90-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a1%d7%99%d7%a0%d7%99-%d7%aa%d7%9b%d7%9c%d7%aa-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (311, N'475.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9c%d7%99%d7%9c%d7%9a-%d7%a4%d7%a1%d7%99%d7%9d-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (312, N'476.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%a9-%d7%90-%d7%a7%d7%9c%d7%90%d7%a1%d7%99%d7%a7-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (313, N'477.jpg', N'https://www.bagir-il.com/product/%d7%a9-%d7%90-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-print-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (314, N'478.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%a9-%d7%90%d7%a8%d7%95%d7%9a-%d7%a1%d7%99%d7%a0%d7%99-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (315, N'517.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9e%d7%95%d7%93%d7%a4%d7%a1-%d7%aa%d7%9b%d7%9c%d7%aa/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (316, N'518.jpg', N'https://www.bagir-il.com/product/%d7%a9-%d7%a7-slim-%d7%aa%d7%9b%d7%9c%d7%aa/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (317, N'519.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (318, N'520.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%aa%d7%9b%d7%9c%d7%aa-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (319, N'521.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%9b%d7%aa%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (320, N'522.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-slim-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (321, N'523.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%9b%d7%97%d7%95%d7%9c-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (322, N'524.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%91%d7%95%d7%a8%d7%93%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (323, N'525.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%95%d7%a8%d7%95%d7%93/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (324, N'526.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%9b%d7%97%d7%95%d7%9c-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (325, N'527.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%9e%d7%a9%d7%95%d7%91%d7%a5-%d7%aa%d7%9b%d7%9c%d7%aa-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (326, N'528.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%91%d7%9e%d7%91%d7%95%d7%a7-classic-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9e%d7%95%d7%93%d7%a4%d7%a1-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (327, N'555.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%97%d7%95%d7%9d-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (328, N'556.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (329, N'557.jpg', N'https://www.bagir-il.com/product/v-%d7%97%d7%9c%d7%a7-%d7%a7%d7%90%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (330, N'558.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%a4%d7%98%d7%a8%d7%95%d7%9c-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (331, N'559.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%90%d7%a4%d7%95%d7%a8-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (332, N'560.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (333, N'561.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%91%d7%95%d7%a8%d7%93%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (334, N'562.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%9b%d7%97%d7%95%d7%9c-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (335, N'563.jpg', N'https://www.bagir-il.com/product/v-%d7%97%d7%9c%d7%a7-%d7%9b%d7%97%d7%95%d7%9c-%d7%9e%d7%9c%d7%90%d7%a0%d7%92/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (336, N'564.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%9b%d7%97%d7%95%d7%9c-%d7%9e%d7%a8%d7%a0%d7%92%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (337, N'565.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%97%d7%95%d7%9d-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (338, N'566.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%96%d7%99%d7%aa-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (339, N'605.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-3-4-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a1%d7%99%d7%a0%d7%99-%d7%a0%d7%99%d7%99%d7%91%d7%99-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (340, N'606.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%98%d7%99%d7%a4%d7%94-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (341, N'607.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%aa%d7%95%d7%9e%d7%90%d7%a1-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (342, N'608.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a4%d7%a8%d7%93%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (343, N'609.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a1%d7%a8%d7%a1%d7%95%d7%98%d7%94-%d7%a7%d7%90%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (344, N'610.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a7%d7%a6%d7%a8-%d7%97%d7%93%d7%a9-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (345, N'611.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a1%d7%95%d7%95%d7%90%d7%93%d7%98-%d7%a7%d7%90%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (346, N'612.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a0%d7%99%d7%9c%d7%95%d7%9f-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (347, N'613.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a1%d7%95%d7%95%d7%90%d7%93%d7%98-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (348, N'614.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a4%d7%a8%d7%93%d7%95-%d7%97%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (349, N'615.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%9c%d7%95%d7%90%d7%95-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (350, N'616.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%92%d7%99%d7%9d-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (351, N'619.jpg', N'https://www.bagir-il.com/product/v-%d7%91%d7%a8%d7%99%d7%a7%d7%99%d7%9d-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (352, N'620.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%9e%d7%9c%d7%90%d7%a0%d7%96-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (353, N'621.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%92%d7%90%d7%95%d7%9e%d7%98%d7%a8%d7%99-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (354, N'622.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%96%d7%99%d7%92-%d7%96%d7%92-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (355, N'623.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a0%d7%99%d7%99%d7%91%d7%99-2/', N'bagir')
GO
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (356, N'624.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%97%d7%9c%d7%a7-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (357, N'625.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%a6%d7%9e%d7%95%d7%aa-%d7%a9%d7%97%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (358, N'626.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%a4%d7%a1-%d7%90%d7%a4%d7%95%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (359, N'627.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%a4%d7%a1-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (360, N'628.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%96%d7%a7%d7%90%d7%a8%d7%93-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (361, N'629.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%a7%d7%95%d7%91%d7%99%d7%a1%d7%98%d7%99-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (362, N'630.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%90%d7%9c%d7%a1%d7%a7%d7%94-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (363, N'650.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%9c%d7%95-%d7%9c%d7%9c%d7%90-%d7%9b%d7%a4%d7%aa%d7%95%d7%a8%d7%99%d7%9d-%d7%9c%d7%91%d7%9f-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (364, N'651.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%9c%d7%95-%d7%a4%d7%a1-%d7%a4%d7%99%d7%99%d7%a4%d7%99%d7%a0%d7%92/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (365, N'652.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%9c%d7%95-%d7%a4%d7%a1-%d7%a4%d7%99%d7%99%d7%a4%d7%99%d7%a0%d7%92-%d7%91%d7%95%d7%a8%d7%93%d7%95/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (366, N'653.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%9c%d7%95-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a4%d7%a1%d7%99%d7%9d-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (367, N'654.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%9c%d7%95-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a4%d7%a1%d7%99%d7%9d-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (368, N'655.jpg', N'https://www.bagir-il.com/product/%d7%98%d7%99-%d7%a9%d7%99%d7%a8%d7%98-%d7%98%d7%95%d7%a0%d7%90%d7%9c%d7%99-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (369, N'656.jpg', N'https://www.bagir-il.com/product/%d7%98%d7%99-%d7%a9%d7%99%d7%a8%d7%98-%d7%98%d7%95%d7%a0%d7%90%d7%9c%d7%99-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (370, N'657.jpg', N'https://www.bagir-il.com/product/%d7%98%d7%99-%d7%a9%d7%99%d7%a8%d7%98-%d7%9e%d7%95%d7%93%d7%a4%d7%a1-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (371, N'658.jpg', N'https://www.bagir-il.com/product/%d7%98%d7%99-%d7%a9%d7%99%d7%a8%d7%98-%d7%9e%d7%95%d7%93%d7%a4%d7%a1-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (372, N'659.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%9c%d7%95-%d7%a4%d7%a1-%d7%a4%d7%99%d7%99%d7%a4%d7%99%d7%a0%d7%92-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (373, N'660.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%9c%d7%95-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a4%d7%a1%d7%99%d7%9d-%d7%9b%d7%aa%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (374, N'661.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%9c%d7%95-%d7%a6%d7%95%d7%95%d7%90%d7%a8%d7%95%d7%9f-%d7%a4%d7%a1%d7%99%d7%9d-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (375, N'675.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (376, N'676.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (377, N'677.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (378, N'678.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (379, N'679.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94-%d7%91%d7%96/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (380, N'680.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (381, N'681.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%92%d7%99%d7%a0%d7%a1-%d7%a6%d7%99%d7%a0%d7%95-%d7%92%d7%99%d7%a0%d7%a1/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (382, N'682.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94-%d7%a6%d7%91%d7%a2-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (383, N'683.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94-%d7%a4%d7%97%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (384, N'684.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94-%d7%90%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (385, N'685.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94-%d7%90%d7%a4%d7%95%d7%a8-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (386, N'686.jpg', N'https://www.bagir-il.com/product/%d7%91%d7%a8%d7%9e%d7%95%d7%93%d7%94-%d7%90%d7%95%d7%a4%d7%a0%d7%94-%d7%9b%d7%97%d7%95%d7%9c-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (387, N'694.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a7%d7%98-slim-mm-%d7%a0%d7%99%d7%99%d7%91%d7%99-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (388, N'695.jpg', N'https://www.bagir-il.com/product/%d7%92%d7%a7%d7%98-slim-mm-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9b%d7%94%d7%94-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (389, N'696.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%95%d7%a6%d7%a8-%d7%9c%d7%93%d7%95%d7%92%d7%9e%d7%90/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (390, N'697.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%90%d7%9c%d7%92%d7%a0%d7%98%d7%99%d7%aa-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%a7%d7%9c%d7%90%d7%a1%d7%99%d7%aa-%d7%91%d7%a6%d7%91%d7%a2-%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (391, N'698.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (392, N'699.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (393, N'700.jpg', N'https://www.bagir-il.com/product/ni-oxf-ls-regula-med-%d7%9b%d7%97%d7%95%d7%9c-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (394, N'711.jpg', N'https://www.bagir-il.com/product/ni-ox-mini-chx-regular-%d7%98%d7%95%d7%a8%d7%a7%d7%99%d7%96/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (395, N'712.jpg', N'https://www.bagir-il.com/product/ni-oxf-ls-regula-med-%d7%9b%d7%97%d7%95%d7%9c-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (396, N'713.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-classic-%d7%9e%d7%a9%d7%91%d7%a6%d7%95%d7%aa-%d7%99%d7%a8%d7%95%d7%a7-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (397, N'714.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-classic-%d7%9e%d7%a9%d7%91%d7%a6%d7%95%d7%aa-%d7%9b%d7%97%d7%95%d7%9c-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (398, N'715.jpg', N'https://www.bagir-il.com/product/ni-oxford-slim-greenwp-%d7%99%d7%a8%d7%95%d7%a7-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (399, N'716.jpg', N'https://www.bagir-il.com/product/ni-oxford-regular-hydran-%d7%9b%d7%97%d7%95%d7%9c-%d7%a4%d7%aa%d7%95%d7%97/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (400, N'717.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-classic-%d7%9e%d7%a9%d7%91%d7%a6%d7%95%d7%aa-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (401, N'718.jpg', N'https://www.bagir-il.com/product/ni-str-ox-mini-chx-regul-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (402, N'740.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%9c%d7%91%d7%9f-5/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (403, N'741.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%9c%d7%91%d7%9f-3/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (404, N'742.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%9c%d7%91%d7%9f-7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (405, N'743.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%9c%d7%91%d7%9f-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (406, N'744.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%9c%d7%91%d7%9f-4/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (407, N'745.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%9c%d7%91%d7%9f-8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (408, N'746.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%92%d7%91%d7%a8-%d7%a9%d7%a8%d7%95%d7%95%d7%9c-%d7%9c%d7%91%d7%9f-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (409, N'747.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%9c%d7%91%d7%9f-6/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (410, N'750.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%90%d7%9c%d7%92%d7%a0%d7%98%d7%99%d7%aa-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%a7%d7%9c%d7%90%d7%a1%d7%99%d7%aa-%d7%91%d7%a6%d7%91%d7%a2-%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (411, N'751.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%95%d7%a6%d7%a8-%d7%9c%d7%93%d7%95%d7%92%d7%9e%d7%90/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (412, N'752.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%90%d7%9c%d7%92%d7%a0%d7%98%d7%99%d7%aa-%d7%9c%d7%92%d7%91%d7%a8-%d7%91%d7%92%d7%96%d7%a8%d7%94-%d7%a6%d7%a8%d7%94-%d7%91%d7%a6%d7%91%d7%a2-%d7%9c%d7%91%d7%9f-%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (413, N'753.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%90%d7%9c%d7%92%d7%a0%d7%98%d7%99%d7%aa-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%92%d7%91%d7%a8-slim-%d7%9c%d7%9c%d7%90-%d7%9b%d7%99%d7%a1/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (414, N'754.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%94-%d7%90%d7%9c%d7%92%d7%a0%d7%98%d7%99%d7%aa-100-%d7%9b%d7%95%d7%aa%d7%a0%d7%94-%d7%9c%d7%92%d7%91%d7%a8-slim-%d7%a2%d7%9d-%d7%9b%d7%99%d7%a1/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (415, N'755.jpg', N'https://www.bagir-il.com/product/ni-ox-mini-chx-regular-%d7%98%d7%95%d7%a8%d7%a7%d7%99%d7%96/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (416, N'756.jpg', N'https://www.bagir-il.com/product/ni-oxf-ls-regular-me-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (417, N'757.jpg', N'https://www.bagir-il.com/product/ni-oxf-ls-regula-med-%d7%9b%d7%97%d7%95%d7%9c-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (418, N'758.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-classic-%d7%9e%d7%a9%d7%91%d7%a6%d7%95%d7%aa-%d7%99%d7%a8%d7%95%d7%a7-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (419, N'759.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-classic-%d7%9e%d7%a9%d7%91%d7%a6%d7%95%d7%aa-%d7%9b%d7%97%d7%95%d7%9c-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (420, N'760.jpg', N'https://www.bagir-il.com/product/ni-oxford-slim-greenwp-%d7%99%d7%a8%d7%95%d7%a7-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (421, N'761.jpg', N'https://www.bagir-il.com/product/ni-oxford-regular-hydran-%d7%9b%d7%97%d7%95%d7%9c-%d7%a4%d7%aa%d7%95%d7%97/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (422, N'762.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-classic-%d7%9e%d7%a9%d7%91%d7%a6%d7%95%d7%aa-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (423, N'793.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-classic-%d7%9b%d7%97%d7%95%d7%9c-%d7%9c%d7%9c%d7%90-%d7%a1%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (424, N'794.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-classic-%d7%aa%d7%9b%d7%9c%d7%aa-%d7%9c%d7%9c%d7%90-%d7%a1%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (425, N'795.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-slim-%d7%9b%d7%97%d7%95%d7%9c-%d7%9c%d7%9c%d7%90-%d7%a1%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (426, N'796.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-slim-%d7%9b%d7%97%d7%95%d7%9c-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9c%d7%9c%d7%90-%d7%a1%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (427, N'797.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-slim-%d7%a1%d7%92%d7%95%d7%9c-%d7%9c%d7%9c%d7%90-%d7%a1%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (428, N'798.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%90%d7%95%d7%a7%d7%a1%d7%a4%d7%95%d7%a8%d7%93-slim-%d7%aa%d7%9b%d7%9c%d7%aa-%d7%9c%d7%9c%d7%90-%d7%a1%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (429, N'799.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (430, N'800.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (431, N'801.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (432, N'802.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (433, N'803.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (434, N'814.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (435, N'815.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (436, N'816.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (437, N'817.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (438, N'818.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (439, N'819.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (440, N'820.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (441, N'821.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (442, N'822.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (443, N'823.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%9b%d7%aa%d7%95%d7%9d-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (444, N'824.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%9e%d7%9c%d7%90-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (445, N'825.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%9e%d7%9c%d7%90-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (446, N'862.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-v-neck-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (447, N'863.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%90%d7%a4%d7%95%d7%a8-%d7%9c%d7%9c%d7%90-%d7%a1%d7%9e%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (448, N'864.jpg', N'https://www.bagir-il.com/product/swtft-ctn-jsy-v-neck-w-lo-%d7%a6%d7%94%d7%95%d7%91/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (449, N'865.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%95%d7%a8%d7%95%d7%93-%d7%9c%d7%95%d7%92%d7%95-%d7%95%d7%a8%d7%95%d7%93/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (450, N'866.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%90%d7%a4%d7%95%d7%a8-%d7%9b%d7%94%d7%94-%d7%9c%d7%95%d7%92%d7%95-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (451, N'867.jpg', N'https://www.bagir-il.com/product/swtft-ctn-tennis-v-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (452, N'868.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-v-neck-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (453, N'869.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-v-neck-%d7%90%d7%93%d7%95%d7%9d-%d7%91%d7%99%d7%a0%d7%95%d7%a0%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (454, N'870.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%9b%d7%97%d7%95%d7%9c-%d7%9c%d7%95%d7%92%d7%95-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (455, N'871.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-v-neck-%d7%a0%d7%99%d7%99%d7%91%d7%99-2/', N'bagir')
GO
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (456, N'872.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-v-neck-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (457, N'873.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-v-%d7%97%d7%9c%d7%a7-%d7%a9%d7%97%d7%95%d7%a8-%d7%9c%d7%95%d7%92%d7%95-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (458, N'881.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (459, N'882.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (460, N'883.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (461, N'884.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (462, N'885.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (463, N'886.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (464, N'887.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a4%d7%a8%d7%a0%d7%a5-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (465, N'888.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (466, N'889.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (467, N'890.jpg', N'https://www.bagir-il.com/product/swt-supima-ctn-half-zip-%d7%9b%d7%aa%d7%95%d7%9d-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (468, N'891.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%97%d7%a6%d7%99-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (469, N'892.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%9e%d7%9c%d7%90-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (470, N'893.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a8%d7%93%d7%99%d7%92%d7%9f-%d7%a8%d7%95%d7%9b%d7%a1%d7%9f-%d7%9e%d7%9c%d7%90-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (471, N'894.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%a6%d7%9e%d7%95%d7%aa-%d7%a2%d7%91%d7%94-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (472, N'895.jpg', N'https://www.bagir-il.com/product/swtft-ctn-cable-crew-neck-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (473, N'896.jpg', N'https://www.bagir-il.com/product/swtft-ctn-cable-crew-neck-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (474, N'897.jpg', N'https://www.bagir-il.com/product/swtft-ctn-cable-crew-neck-%d7%9c%d7%91%d7%9f-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (475, N'898.jpg', N'https://www.bagir-il.com/product/swtft-ctn-cable-crew-neck-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (476, N'899.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%a7%d7%a4%d7%95%d7%a6%d7%95%d7%9f-%d7%a6%d7%9e%d7%95%d7%aa-%d7%a2%d7%91%d7%94-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (477, N'900.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%a6%d7%9e%d7%95%d7%aa-%d7%a2%d7%91%d7%94-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (478, N'901.jpg', N'https://www.bagir-il.com/product/swtft-ctn-tennis-v-ivory-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (479, N'902.jpg', N'https://www.bagir-il.com/product/outft-jacket-tan-gunch-%d7%97%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (480, N'903.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%93%d7%a7-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (481, N'904.jpg', N'https://www.bagir-il.com/product/outft-jacket-blackwatc-%d7%99%d7%a8%d7%95%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (482, N'905.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%93%d7%a7-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (483, N'906.jpg', N'https://www.bagir-il.com/product/ml-windbreaker-caviar-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (484, N'907.jpg', N'https://www.bagir-il.com/product/outft-rev-jkt-navy-blaze-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (485, N'908.jpg', N'https://www.bagir-il.com/product/out-ml-nylon-liner-jkt-%d7%99%d7%a8%d7%95%d7%a7-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (486, N'909.jpg', N'https://www.bagir-il.com/product/outft-jacket-navy-blaz-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (487, N'910.jpg', N'https://www.bagir-il.com/product/out-ml-hybrid-harrington-%d7%91%d7%a8%d7%99%d7%a7/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (488, N'911.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%a2%d7%99%d7%9c-%d7%a0%d7%99%d7%99%d7%9c%d7%95%d7%9f-%d7%a6%d7%94%d7%95%d7%91/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (489, N'912.jpg', N'https://www.bagir-il.com/product/out-ml-hybrid-harrington-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (490, N'913.jpg', N'https://www.bagir-il.com/product/ml-windbreaker-navy-blaz-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (491, N'914.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (492, N'915.jpg', N'https://www.bagir-il.com/product/knt-ml-sueded-jersey-swea-%d7%98%d7%95%d7%a8%d7%a7%d7%99%d7%96/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (493, N'916.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%9c%d7%92%d7%91%d7%a8-%d7%9b%d7%aa%d7%95%d7%9d-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (494, N'917.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (495, N'918.jpg', N'https://www.bagir-il.com/product/knt-ml-sueded-jersey-swea-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (496, N'919.jpg', N'https://www.bagir-il.com/product/%d7%9e%d7%9b%d7%a0%d7%a1%d7%99-%d7%a4%d7%95%d7%98%d7%a8-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (497, N'920.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a4%d7%95%d7%a6%d7%95%d7%9f-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (498, N'921.jpg', N'https://www.bagir-il.com/product/%d7%a7%d7%a4%d7%95%d7%a6%d7%95%d7%9f-%d7%99%d7%a8%d7%95%d7%a7-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (499, N'922.jpg', N'https://www.bagir-il.com/product/knt-ml-sueded-jersey-po-h-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (500, N'923.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%90%d7%a4%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (501, N'924.jpg', N'https://www.bagir-il.com/product/knt-ml-sueded-jersey-swea-%d7%98%d7%95%d7%a8%d7%a7%d7%99%d7%96/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (502, N'925.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%9c%d7%92%d7%91%d7%a8-%d7%9b%d7%aa%d7%95%d7%9d-%d7%91%d7%94%d7%99%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (503, N'926.jpg', N'https://www.bagir-il.com/product/%d7%a4%d7%95%d7%98%d7%a8-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (504, N'927.jpg', N'https://www.bagir-il.com/product/%d7%a1%d7%a8%d7%99%d7%92-%d7%a7%d7%a4%d7%95%d7%a6%d7%95%d7%9f-%d7%a6%d7%9e%d7%95%d7%aa-%d7%a2%d7%91%d7%94-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (505, N'928.jpg', N'https://www.bagir-il.com/product/knt-waffle-hoody-vintage-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (506, N'929.jpg', N'https://www.bagir-il.com/product/spt-ls-slim-logo-navy-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (507, N'930.jpg', N'https://www.bagir-il.com/product/spt-ss-slim-logo-solidwhi-%d7%9c%d7%91%d7%9f-2/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (508, N'931.jpg', N'https://www.bagir-il.com/product/spt-ss-slim-logo-solidwhi-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (509, N'932.jpg', N'https://www.bagir-il.com/product/knt-ctn-logo-gf-ss-tee-br-%d7%9b%d7%97%d7%95%d7%9c/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (510, N'933.jpg', N'https://www.bagir-il.com/product/%d7%98%d7%99-%d7%a9%d7%a8%d7%98-%d7%aa%d7%9b%d7%9c%d7%aa-%d7%9c%d7%95%d7%92%d7%95-%d7%a6%d7%94%d7%95%d7%91/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (511, N'934.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%98%d7%99-%d7%a9%d7%a8%d7%98-%d7%9c%d7%91%d7%a0%d7%94-%d7%9c%d7%95%d7%92%d7%95-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (512, N'935.jpg', N'https://www.bagir-il.com/product/%d7%98%d7%99-%d7%a9%d7%99%d7%a8%d7%98-%d7%a9%d7%97%d7%95%d7%a8%d7%94-%d7%9c%d7%95%d7%92%d7%95-%d7%a9%d7%97%d7%95%d7%a8/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (513, N'936.jpg', N'https://www.bagir-il.com/product/%d7%98%d7%99-%d7%a9%d7%99%d7%a8%d7%98-%d7%9b%d7%97%d7%95%d7%9c-%d7%a0%d7%99%d7%99%d7%91%d7%99-%d7%9c%d7%95%d7%92%d7%95-%d7%90%d7%93%d7%95%d7%9d/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (514, N'937.jpg', N'https://www.bagir-il.com/product/kntft-ps-solid-polo-chrys-%d7%90%d7%93%d7%95%d7%9d-%d7%91%d7%99%d7%a0%d7%95%d7%a0%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (515, N'938.jpg', N'https://www.bagir-il.com/product/kntft-ps-solid-polo-dtchb-%d7%a0%d7%99%d7%99%d7%91%d7%99/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (516, N'939.jpg', N'https://www.bagir-il.com/product/kntft-ps-solid-polo-hydro-%d7%99%d7%a8%d7%95%d7%a7-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (517, N'940.jpg', N'https://www.bagir-il.com/product/kntft-ps-solid-polo-medie-%d7%9b%d7%97%d7%95%d7%9c-%d7%9b%d7%94%d7%94/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (518, N'941.jpg', N'https://www.bagir-il.com/product/kntft-ps-solid-polo-white-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (519, N'942.jpg', N'https://www.bagir-il.com/product/knt-supima-pique-gf-polo-%d7%9c%d7%91%d7%9f/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (520, N'943.jpg', N'https://www.bagir-il.com/product/%d7%97%d7%95%d7%9c%d7%a6%d7%aa-%d7%a4%d7%95%d7%9c%d7%95-%d7%91%d7%95%d7%a8%d7%95%d7%93-%d7%9c%d7%95%d7%92%d7%95-%d7%96%d7%94%d7%91/', N'bagir')
INSERT [dbo].[Products] ([Id], [PictureName], [PictureSrc], [StoreName]) VALUES (521, N'944.jpg', N'https://www.bagir-il.com/product/kntft-ss-basic-pique-polo-%d7%9c%d7%91%d7%9f/', N'bagir')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [Python_Project_v4] SET  READ_WRITE 
GO
