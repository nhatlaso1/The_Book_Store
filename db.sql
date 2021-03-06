sUSE [master]
GO
/****** Object:  Database [TheBookStore]    Script Date: 6/13/2021 8:49:01 PM ******/
CREATE DATABASE [TheBookStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TheBookStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\TheBookStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TheBookStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\TheBookStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TheBookStore] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TheBookStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TheBookStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TheBookStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TheBookStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TheBookStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TheBookStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [TheBookStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TheBookStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TheBookStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TheBookStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TheBookStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TheBookStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TheBookStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TheBookStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TheBookStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TheBookStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TheBookStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TheBookStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TheBookStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TheBookStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TheBookStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TheBookStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TheBookStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TheBookStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TheBookStore] SET  MULTI_USER 
GO
ALTER DATABASE [TheBookStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TheBookStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TheBookStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TheBookStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TheBookStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TheBookStore] SET QUERY_STORE = OFF
GO
USE [TheBookStore]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [TheBookStore]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 6/13/2021 8:49:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[bookID] [nvarchar](50) NOT NULL,
	[title] [nvarchar](50) NULL,
	[image] [nvarchar](500) NULL,
	[description] [nvarchar](500) NULL,
	[price] [float] NULL,
	[author] [nvarchar](50) NULL,
	[categoryID] [varchar](50) NULL,
	[status] [varchar](10) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[bookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/13/2021 8:49:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [varchar](50) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/13/2021 8:49:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[status] [varchar](10) NULL,
	[phone] [varchar](15) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'1', N'The Pragmatic Programmer', N'ThePragmatic.jpg', N'Ki???n th???c trong ???The Pragmatic Programer??? ??p d???ng ???????c cho m???i ng??n ng??? l???p tr??nh v?? n?? kh??ng n??u ra v???n ????? c???a ri??ng ng??n ng??? n??o c???. Cu???n s??ch l???p tr??nh kinh ??i???n n??y mang ?????n ki???n th???c bao qu??t m???i v???n ????? li??n quan trong ngh???, t??? nh???ng k??? thu???t c?? b???n ?????n n??ng cao v?? kh??ng bao gi??? l???i th???i.', 890000, N'David Thomas', N'4', N'Active', 5)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'2', N'The Clean Coder', N'thecleancoder.jpg', N'???The Clean Coder??? ch??? d??y 200 trang nh??ng c???c k??? ????ng ?????c ch??? sau cu???n s??ch l???p tr??nh kinh ??i???n ???g???i ?????u gi?????ng??? ???Clean Code??? n???i ti???ng c??ng t??c gi???. S??ch t???p trung c???i thi???n t?? duy l??m s???n ph???m c???a ???Coder??? h??n l?? n??i nhi???u v??? c??c d??ng code, qua vi???c kh???c h???a ch??n dung c???a m???t Coder gi???i th???c th??? trong vi???c l??m h???ng ng??y, c??c k??? thu???t, c??ng c??? s??? d???ng v?? nh???ng th??nh t???u h??? ?????t ???????c.', 500000, N'Robert Martin', N'4', N'Active', 4)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'3', N' Code Complete', N'CodeComplete.jpg', N'????y l?? cu???n s??ch l???p tr??nh kinh ??i???n c???c k?? c???n thi???t cho b???t c??? ai l??m trong ng??nh IT, ???????c r???t nhi???u nh??n v???t trong chuy??n m???c ph???ng v???n c???a ITviec gi???i thi???u. Kh??ng ch??? l?? m???t cu???n s??ch v??? k??? thu???t l???p tr??nh, ???Code Complete??? c??n gi??p c??c Developer thay ?????i th??i ?????, t?? duy c???a ch??nh b???n th??n m??nh ????? cho ra ?????i nh???ng ph???n m???m c?? gi?? tr???.', 600000, N'Steve McConnell ', N'4', N'Active', 2)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'4', N'Ph??a sau nghi can X', N'phiasau.jpg', N'Ph??a sau nghi can X l?? m???t b??? ti???u thuy???t ???????c vi???t v??o n??m 2005 b???i Higashino Keigo, cu???n th??? ba trong seri Th??m t??? Galileo v?? ????y l?? t??c ph???m th??nh c??ng nh???t c???a ??ng t??? tr?????c ?????n nay', 120000, N' Higashino Keigo', N'1', N'Active', 3)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'5', N'Bach d??? h??nh', N'bachdahanh.jpg', N'???????c d???ch t??? ti???ng Anh-Journey Under the Midnight Sun l?? m???t cu???n ti???u thuy???t b?? ???n ???????c vi???t b???i Keigo Higashino, xu???t b???n l???n ?????u tr??n t???p ch?? ti???u thuy???t h??ng th??ng Subaru t??? Shueisha t??? th??ng 1 n??m 1997 ?????n th??ng 1 n??m 1999.', 109000, N'Higashino Keigo', N'1', N'Active', 6)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'6', N'Ho??ng t??? b??', N'hoangtu.jpg', N'Ho??ng t??? b??, ???????c xu???t b???n n??m 1943, l?? ti???u thuy???t n???i ti???ng nh???t c???a nh?? v??n v?? phi c??ng Ph??p Antoine de Saint-Exup??ry. ??ng ???? thu?? ng??i bi???t th??? The Bevin House ??? Asharoken, New York, Long Island trong khi vi???t t??c ph???m n??y', 100000, N'Antoine de Saint-Exup??ry', N'3', N'Active', 2)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'7', N'D??? M??n phi??u l??u k??', N'demen.jpg', N'D??? M??n phi??u l??u k?? l?? t??c ph???m v??n xu??i ?????c s???c v?? n???i ti???ng nh???t c???a nh?? v??n T?? Ho??i vi???t v??? lo??i v???t, d??nh cho l???a tu???i thi???u nhi. Ban ?????u truy???n c?? t??n l?? "Con d??? m??n" do Nh?? xu???t b???n T??n D??n, H?? N???i ph??t h??nh n??m 1941.', 120000, N'T?? Ho??i', N'3', N'Active', 7)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'1', N'Truy???n, ti???u thuy???t')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'2', N'T??m l??, t??m linh, t??n gi??o')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'3', N'S??ch thi???u nhi')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'4', N'S??ch l???p tr??nh')
GO
INSERT [dbo].[Users] ([userID], [fullName], [password], [roleID], [status], [phone]) VALUES (N'minhhoang@gmail.com', N'Minh Hoang', N'123456', N'2', N'Active', N'0356449764')
GO
USE [master]
GO
ALTER DATABASE [TheBookStore] SET  READ_WRITE 
GO
