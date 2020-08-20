USE [LeavingCertificatePdf]
GO
/****** Object:  Table [dbo].[StudentLCData]    Script Date: 20-08-2020 16:01:07 ******/
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
SET IDENTITY_INSERT [dbo].[StudentLCData] ON 

INSERT [dbo].[StudentLCData] ([Id], [AdmissionNo], [FullName], [Nationality], [MotherTongue], [Religion], [Caste], [SubCaste], [BirthPlace], [DOBInDigits], [DOBInWords], [PrevSchlName], [AdmittedInClass], [AdmissionDate], [Progress], [ConductBehaviour], [DateOfSchlLeaving], [ClassFromLeft], [ReasonForLeaving], [CertificateRcvdDate], [ReceivedByName]) VALUES (2, 101, N'Avinash Ramesh Karad', N'Indian', N'Marathi', N'Hindu', N'Vanjari', N'NT3', N'Parli', N'19-11-1991', NULL, N'New High School', N'5th', N'15-08-2020', N'good', N'good', N'15-08-2020', N'6th', N'further education', N'15-08-2020', N'Holambe sir')
INSERT [dbo].[StudentLCData] ([Id], [AdmissionNo], [FullName], [Nationality], [MotherTongue], [Religion], [Caste], [SubCaste], [BirthPlace], [DOBInDigits], [DOBInWords], [PrevSchlName], [AdmittedInClass], [AdmissionDate], [Progress], [ConductBehaviour], [DateOfSchlLeaving], [ClassFromLeft], [ReasonForLeaving], [CertificateRcvdDate], [ReceivedByName]) VALUES (3, 102, N'Bhakti Bhagawat Chavare', N'Indian', N'Marathi', N'Hindu', N'Vanjari', N'NT3', N'Pandharpur', N'24-01-1996', NULL, N'Kauthekar Primary school', N'New High school', N'18-08-2018', N'Good', N'Good', N'18-08-2018', N'6th', N'further education', N'18-08-2018', N'Holambe sir')
INSERT [dbo].[StudentLCData] ([Id], [AdmissionNo], [FullName], [Nationality], [MotherTongue], [Religion], [Caste], [SubCaste], [BirthPlace], [DOBInDigits], [DOBInWords], [PrevSchlName], [AdmittedInClass], [AdmissionDate], [Progress], [ConductBehaviour], [DateOfSchlLeaving], [ClassFromLeft], [ReasonForLeaving], [CertificateRcvdDate], [ReceivedByName]) VALUES (4, 103, N'Mohit Nandakishor Walsangikar', N'Indian', N'Hindi', N'Hindu', N'Brahmin', N'Open', N'Ahamadpur', N'18-04-1992', NULL, N'Ahamadpur primary school', N'4th', N'18-04-2015', N'Good', N'Good', N'18-08-2018', N'6th', N'further education', N'18-08-2018', N'Holambe sir')
SET IDENTITY_INSERT [dbo].[StudentLCData] OFF
