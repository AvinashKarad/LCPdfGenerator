USE [LeavingCertificatePdf]
GO
/****** Object:  Table [dbo].[StudentLCData]    Script Date: 9/1/2020 10:51:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentLCData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [int] NULL,
	[FullName] [varchar](100) NOT NULL,
	[Nationality] [varchar](50) NOT NULL,
	[MotherTongue] [varchar](50) NULL,
	[Religion] [varchar](50) NOT NULL,
	[Caste] [varchar](50) NOT NULL,
	[SubCaste] [varchar](50) NULL,
	[BirthPlace] [varchar](50) NOT NULL,
	[DOBInDigits] [varchar](50) NULL,
	[DOBInWords] [varchar](150) NULL,
	[PrevSchlName] [varchar](150) NULL,
	[AdmittedInClass] [nvarchar](50) NULL,
	[AdmissionDate] [varchar](50) NULL,
	[Progress] [varchar](150) NULL,
	[ConductBehaviour] [varchar](150) NULL,
	[DateOfSchlLeaving] [varchar](50) NULL,
	[ClassFromLeft] [nvarchar](50) NULL,
	[ReasonForLeaving] [varchar](150) NULL,
	[CertificateRcvdDate] [varchar](50) NULL,
	[ReceivedByName] [varchar](50) NULL,
 CONSTRAINT [PK_StudentLCData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 9/1/2020 10:51:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Confirmpassword] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[StudentLCData] ON 

INSERT [dbo].[StudentLCData] ([Id], [AdmissionNo], [FullName], [Nationality], [MotherTongue], [Religion], [Caste], [SubCaste], [BirthPlace], [DOBInDigits], [DOBInWords], [PrevSchlName], [AdmittedInClass], [AdmissionDate], [Progress], [ConductBehaviour], [DateOfSchlLeaving], [ClassFromLeft], [ReasonForLeaving], [CertificateRcvdDate], [ReceivedByName]) VALUES (2, 101, N'Avinash Ramesh Karad', N'Indian', N'Marathi', N'Hindu', N'Vanjari', N'NT3', N'Parli', N'19-11-1991', NULL, N'New High School', N'5th', N'15-08-2020', N'good', N'good', N'15-08-2020', N'8th', N'further education', N'15-08-2020', N'Holambe sir')
INSERT [dbo].[StudentLCData] ([Id], [AdmissionNo], [FullName], [Nationality], [MotherTongue], [Religion], [Caste], [SubCaste], [BirthPlace], [DOBInDigits], [DOBInWords], [PrevSchlName], [AdmittedInClass], [AdmissionDate], [Progress], [ConductBehaviour], [DateOfSchlLeaving], [ClassFromLeft], [ReasonForLeaving], [CertificateRcvdDate], [ReceivedByName]) VALUES (3, 102, N'Bhakti Bhagawat Chavare', N'Indian', N'Marathi', N'Hindu', N'Vanjari', N'NT3', N'Pandharpur', N'24-01-1996', NULL, N'Kauthekar Primary school', N'New High school', N'18-08-2018', N'Good', N'Good', N'18-08-2018', N'6th', N'further education', N'18-08-2018', N'Holambe sir')
INSERT [dbo].[StudentLCData] ([Id], [AdmissionNo], [FullName], [Nationality], [MotherTongue], [Religion], [Caste], [SubCaste], [BirthPlace], [DOBInDigits], [DOBInWords], [PrevSchlName], [AdmittedInClass], [AdmissionDate], [Progress], [ConductBehaviour], [DateOfSchlLeaving], [ClassFromLeft], [ReasonForLeaving], [CertificateRcvdDate], [ReceivedByName]) VALUES (4, 103, N'Mohit Nandakishor Walsangikar', N'Indian', N'Hindi', N'Hindu', N'Brahmin', N'Open', N'Ahamadpur', N'18-04-1992', NULL, N'Ahamadpur primary school', N'4th', N'18-04-2015', N'Good', N'Good', N'18-08-2018', N'6th', N'further education', N'18-08-2018', N'Holambe sir')
SET IDENTITY_INSERT [dbo].[StudentLCData] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Password], [Confirmpassword]) VALUES (1, N'ganesh', N'ganesh', N'ganesh@gmail.com', N'ganesh', N'ganesh')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Password], [Confirmpassword]) VALUES (2, N'avinash', N'karad', N'avinash@gmail.com', N'avinash', N'avinash')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Password], [Confirmpassword]) VALUES (3, N'vishal', N'Patil', N'vishal@gmail.com', N'vishal', N'vishal')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Password], [Confirmpassword]) VALUES (4, N'snehal', N'raut', N'snehal@gmail.com', N'snehal', N'snehal')
INSERT [dbo].[User] ([Id], [FirstName], [LastName], [Email], [Password], [Confirmpassword]) VALUES (6, N'vikul', N'rathod', N'vikul@gmail.com', N'vikul', N'vikul')
SET IDENTITY_INSERT [dbo].[User] OFF
