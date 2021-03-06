USE [master]
GO
/****** Object:  Database [MRSchneider]    Script Date: 21/12/2017 12:22:39 ******/
CREATE DATABASE [MRSchneider]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MRSchneider', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MRSchneider.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MRSchneider_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MRSchneider_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MRSchneider] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MRSchneider].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MRSchneider] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MRSchneider] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MRSchneider] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MRSchneider] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MRSchneider] SET ARITHABORT OFF 
GO
ALTER DATABASE [MRSchneider] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MRSchneider] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MRSchneider] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MRSchneider] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MRSchneider] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MRSchneider] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MRSchneider] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MRSchneider] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MRSchneider] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MRSchneider] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MRSchneider] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MRSchneider] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MRSchneider] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MRSchneider] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MRSchneider] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MRSchneider] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MRSchneider] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MRSchneider] SET RECOVERY FULL 
GO
ALTER DATABASE [MRSchneider] SET  MULTI_USER 
GO
ALTER DATABASE [MRSchneider] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MRSchneider] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MRSchneider] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MRSchneider] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MRSchneider] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MRSchneider', N'ON'
GO
ALTER DATABASE [MRSchneider] SET QUERY_STORE = OFF
GO
USE [MRSchneider]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [MRSchneider]
GO
/****** Object:  Table [dbo].[ContadoresAgua]    Script Date: 21/12/2017 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContadoresAgua](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numero_serie] [int] NOT NULL,
	[marca] [varchar](50) NULL,
	[modelo] [varchar](50) NULL,
 CONSTRAINT [PK_ContadoresAgua] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ContadoresAgua] UNIQUE NONCLUSTERED 
(
	[numero_serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContadoresLuz]    Script Date: 21/12/2017 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContadoresLuz](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numero_serie] [int] NOT NULL,
	[marca] [varchar](50) NULL,
	[modelo] [varchar](50) NULL,
 CONSTRAINT [PK_ContadoresLuz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ContadoresLuz] UNIQUE NONCLUSTERED 
(
	[numero_serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gateways]    Script Date: 21/12/2017 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gateways](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numero_serie] [int] NOT NULL,
	[marca] [varchar](50) NULL,
	[modelo] [varchar](50) NULL,
	[ip] [varchar](50) NOT NULL,
	[puerto] [int] NULL,
 CONSTRAINT [PK_Gateways] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Gateways] UNIQUE NONCLUSTERED 
(
	[numero_serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MRSchneider] SET  READ_WRITE 
GO
