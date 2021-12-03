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
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'1', N'The Pragmatic Programmer', N'ThePragmatic.jpg', N'Kiến thức trong “The Pragmatic Programer” áp dụng được cho mọi ngôn ngữ lập trình vì nó không nêu ra vấn đề của riêng ngôn ngữ nào cả. Cuốn sách lập trình kinh điển này mang đến kiến thức bao quát mọi vấn đề liên quan trong nghề, từ những kỹ thuật cơ bản đến nâng cao và không bao giờ lỗi thời.', 890000, N'David Thomas', N'4', N'Active', 5)
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
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'2', N'The Clean Coder', N'thecleancoder.jpg', N'“The Clean Coder” chỉ dày 200 trang nhưng cực kỳ đáng đọc chỉ sau cuốn sách lập trình kinh điển “gối đầu giường” “Clean Code” nổi tiếng cùng tác giả. Sách tập trung cải thiện tư duy làm sản phẩm của “Coder” hơn là nói nhiều về các dòng code, qua việc khắc họa chân dung của một Coder giỏi thực thụ trong việc làm hằng ngày, các kỹ thuật, công cụ sử dụng và những thành tựu họ đạt được.', 500000, N'Robert Martin', N'4', N'Active', 4)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'3', N' Code Complete', N'CodeComplete.jpg', N'Đây là cuốn sách lập trình kinh điển cực kì cần thiết cho bất cứ ai làm trong ngành IT, được rất nhiều nhân vật trong chuyên mục phỏng vấn của ITviec giới thiệu. Không chỉ là một cuốn sách về kỹ thuật lập trình, “Code Complete” còn giúp các Developer thay đổi thái độ, tư duy của chính bản thân mình để cho ra đời những phần mềm có giá trị.', 600000, N'Steve McConnell ', N'4', N'Active', 2)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'4', N'Phía sau nghi can X', N'phiasau.jpg', N'Phía sau nghi can X là một bộ tiểu thuyết được viết vào năm 2005 bởi Higashino Keigo, cuốn thứ ba trong seri Thám tử Galileo và đây là tác phẩm thành công nhất của ông từ trước đến nay', 120000, N' Higashino Keigo', N'1', N'Active', 3)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'5', N'Bach dạ hành', N'bachdahanh.jpg', N'Được dịch từ tiếng Anh-Journey Under the Midnight Sun là một cuốn tiểu thuyết bí ẩn được viết bởi Keigo Higashino, xuất bản lần đầu trên tạp chí tiểu thuyết hàng tháng Subaru từ Shueisha từ tháng 1 năm 1997 đến tháng 1 năm 1999.', 109000, N'Higashino Keigo', N'1', N'Active', 6)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'6', N'Hoàng tử bé', N'hoangtu.jpg', N'Hoàng tử bé, được xuất bản năm 1943, là tiểu thuyết nổi tiếng nhất của nhà văn và phi công Pháp Antoine de Saint-Exupéry. Ông đã thuê ngôi biệt thự The Bevin House ở Asharoken, New York, Long Island trong khi viết tác phẩm này', 100000, N'Antoine de Saint-Exupéry', N'3', N'Active', 2)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'7', N'Dế Mèn phiêu lưu ký', N'demen.jpg', N'Dế Mèn phiêu lưu ký là tác phẩm văn xuôi đặc sắc và nổi tiếng nhất của nhà văn Tô Hoài viết về loài vật, dành cho lứa tuổi thiếu nhi. Ban đầu truyện có tên là "Con dế mèn" do Nhà xuất bản Tân Dân, Hà Nội phát hành năm 1941.', 120000, N'Tô Hoài', N'3', N'Active', 7)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Books] ([bookID], [title], [image], [description], [price], [author], [categoryID], [status], [quantity]) VALUES (N'9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'1', N'Truyện, tiểu thuyết')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'2', N'Tâm lý, tâm linh, tôn giáo')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'3', N'Sách thiếu nhi')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'4', N'Sách lập trình')
GO
INSERT [dbo].[Users] ([userID], [fullName], [password], [roleID], [status], [phone]) VALUES (N'minhhoang@gmail.com', N'Minh Hoang', N'123456', N'2', N'Active', N'0356449764')
GO
USE [master]
GO
ALTER DATABASE [TheBookStore] SET  READ_WRITE 
GO
