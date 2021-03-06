USE [gglmain]
GO
/****** Object:  Table [dbo].[Tbl_vendorComplain]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_vendorComplain](
	[complain_ID] [int] IDENTITY(1,1) NOT NULL,
	[user_ID] [varchar](50) NOT NULL,
	[subject] [varchar](200) NOT NULL,
	[detail] [varchar](500) NOT NULL,
	[complainDT] [varchar](30) NOT NULL,
	[status] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tbl_vendorComplain] PRIMARY KEY CLUSTERED 
(
	[complain_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_vendorComplain] ON
INSERT [dbo].[Tbl_vendorComplain] ([complain_ID], [user_ID], [subject], [detail], [complainDT], [status]) VALUES (1, N'karan@gmail.com', N'last', N'its completed', N'4/28/2016 11:32:18 AM', N'Raised')
INSERT [dbo].[Tbl_vendorComplain] ([complain_ID], [user_ID], [subject], [detail], [complainDT], [status]) VALUES (2, N'anchalyashkhare@gmail.com', N'REGRFEGRED', N'ERFEFEFEFRERFE', N'4/28/2016 2:52:44 PM', N'Raised')
SET IDENTITY_INSERT [dbo].[Tbl_vendorComplain] OFF
/****** Object:  Table [dbo].[Tbl_VenderRegistration]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_VenderRegistration](
	[name] [varchar](50) NULL,
	[gener] [varchar](50) NULL,
	[email_id] [varchar](50) NOT NULL,
	[address] [varchar](50) NULL,
	[pincode] [numeric](10, 0) NULL,
	[mobile_No] [numeric](18, 0) NULL,
	[Yr_of_Experiance] [varchar](50) NULL,
	[contracts_undergo] [varchar](350) NULL,
	[photo_id] [varchar](200) NULL,
	[id_proof] [varchar](200) NULL,
	[passwd] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_VenderRegistration] PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_VenderRegistration] ([name], [gener], [email_id], [address], [pincode], [mobile_No], [Yr_of_Experiance], [contracts_undergo], [photo_id], [id_proof], [passwd]) VALUES (N'anchal khare', N'True', N'anchalyashkhare@gmail.com', N'362 sitapur', CAST(261001 AS Numeric(10, 0)), CAST(8576011404 AS Numeric(18, 0)), N'none', N'no', N'mfuoozdf.00a.jpg', N'20140128_134733.jpg', N'bzhs')
INSERT [dbo].[Tbl_VenderRegistration] ([name], [gener], [email_id], [address], [pincode], [mobile_No], [Yr_of_Experiance], [contracts_undergo], [photo_id], [id_proof], [passwd]) VALUES (N'karan', N'True', N'karan@gmail.com', N'moharibagh,kharika', CAST(226025 AS Numeric(10, 0)), CAST(9473755710 AS Numeric(18, 0)), N'2', N'omax', N'oobqbrgn.niv.jpg', N'309502.jpg', N'pzizm')
INSERT [dbo].[Tbl_VenderRegistration] ([name], [gener], [email_id], [address], [pincode], [mobile_No], [Yr_of_Experiance], [contracts_undergo], [photo_id], [id_proof], [passwd]) VALUES (N'parth singh', N'True', N'parths@gmail.com', N'omax city sector 5', CAST(226030 AS Numeric(10, 0)), CAST(9795333472 AS Numeric(18, 0)), N'10 years', N'DLF, OMAX, ANSAL', N'1j1q2zqn.fpb.jpg', N'IMG_20151210_203318.jpg', N'kzigs')
INSERT [dbo].[Tbl_VenderRegistration] ([name], [gener], [email_id], [address], [pincode], [mobile_No], [Yr_of_Experiance], [contracts_undergo], [photo_id], [id_proof], [passwd]) VALUES (N'prakesh singh', N'True', N'prakesh@gmail.com', N'omax city', CAST(226030 AS Numeric(10, 0)), CAST(9795333473 AS Numeric(18, 0)), N'10 years', N'DLF, OMAX, ANSAL', N'c43pv3pm.gbf.jpg', N'IMG_20150620_224716.jpg', N'876')
INSERT [dbo].[Tbl_VenderRegistration] ([name], [gener], [email_id], [address], [pincode], [mobile_No], [Yr_of_Experiance], [contracts_undergo], [photo_id], [id_proof], [passwd]) VALUES (N'Gaurav Sharma', N'True', N'sharma44@gmail.com', N'kharika, Telibagh', CAST(226025 AS Numeric(10, 0)), CAST(9473856688 AS Numeric(18, 0)), N'2', N'ghr ka naala', N'le1h32vr.zkv.jpg', N'IMG_20151115_164621.jpg', N'tzfize')
/****** Object:  Table [dbo].[Tbl_Tendor]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Tendor](
	[tendorID] [int] IDENTITY(1,1) NOT NULL,
	[tendorHeading] [varchar](150) NULL,
	[tendorDetails] [varchar](250) NULL,
	[tendorUDT] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Tendor] PRIMARY KEY CLUSTERED 
(
	[tendorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Tendor] ON
INSERT [dbo].[Tbl_Tendor] ([tendorID], [tendorHeading], [tendorDetails], [tendorUDT]) VALUES (1, N' constraction work at Aliganj', N'adarsh pandey is the co founder', N'4/27/2016 2:40:17 PM')
INSERT [dbo].[Tbl_Tendor] ([tendorID], [tendorHeading], [tendorDetails], [tendorUDT]) VALUES (2, N'Hazarat ganj CNG pump work. Needed a good experienced constructor.', N'Hazarat ganj CNG pump were building near 1090 choraha. near lamart buildinng ', N'4/28/2016 11:27:16 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Tendor] OFF
/****** Object:  Table [dbo].[Tbl_State]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_State](
	[State_ID] [int] NOT NULL,
	[State_name] [varchar](60) NOT NULL,
 CONSTRAINT [PK_Tbl_State] PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (1, N'ANDHRA PRADESH')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (2, N'ARUNACHAL PRADESH')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (3, N'ASSAM')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (4, N'BIHAR')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (5, N'CHHATTISGARH')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (6, N'DELHI')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (7, N'GOA')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (8, N'GUJARAT')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (9, N'HARYANA')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (10, N'HIMANCHAL PRADESH')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (11, N'JAMMU & KASHMIR')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (12, N'JHARKHAND')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (13, N'KARNATAK')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (14, N'KERALA')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (15, N'LAKSHADWEEP')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (16, N'MADHYA PRADESH')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (17, N'MAHARASHTRA')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (18, N'MANIPUR')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (19, N'MEGHALAYA')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (20, N'MIZORAM')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (21, N'NAGALAND')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (22, N'ORISSA')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (23, N'PONDICHERRY')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (24, N'PUNJAB')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (25, N'RAJASTHAN')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (26, N'SIKKIM')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (27, N'TAMIL NADU')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (28, N'TRIPURA')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (29, N'UTTRAKHAND')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (30, N'UTTER PRADESH')
INSERT [dbo].[Tbl_State] ([State_ID], [State_name]) VALUES (31, N'WEST BANGAL')
/****** Object:  Table [dbo].[Tbl_Registration]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Registration](
	[name] [varchar](50) NOT NULL,
	[gender] [varchar](50) NULL,
	[connection_type] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[state] [int] NULL,
	[city] [varchar](50) NULL,
	[pincode] [nchar](10) NULL,
	[email_id] [varchar](50) NOT NULL,
	[mob_no] [numeric](18, 0) NULL,
	[password] [varchar](50) NULL,
	[pofile_pic] [varchar](200) NULL,
	[signature_pic] [varchar](200) NULL,
 CONSTRAINT [PK_Tbl_Registration] PRIMARY KEY CLUSTERED 
(
	[email_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_Registration] ([name], [gender], [connection_type], [address], [state], [city], [pincode], [email_id], [mob_no], [password], [pofile_pic], [signature_pic]) VALUES (N'anuj sharma', N'True', N'CNG Connection', N'bang,ka bazar', 7, N'16', N'592       ', N'588anuj@gmail.com', CAST(9170254869 AS Numeric(18, 0)), N'zmfq', N'imstl0b2.hdy.jpg', N'IMG_20151107_021157.jpg')
INSERT [dbo].[Tbl_Registration] ([name], [gender], [connection_type], [address], [state], [city], [pincode], [email_id], [mob_no], [password], [pofile_pic], [signature_pic]) VALUES (N'abhi bisht', N'True', N'CNG Connection', N'moharibagh,kharika,telibagh.', 30, N'102', N'226025    ', N'abhi.bisht2@gmail.com', CAST(9565998618 AS Numeric(18, 0)), N'zysrhsvp9', N'1yszidzj.xjz.jpg', N'IMG_20150621_121019.jpg')
INSERT [dbo].[Tbl_Registration] ([name], [gender], [connection_type], [address], [state], [city], [pincode], [email_id], [mob_no], [password], [pofile_pic], [signature_pic]) VALUES (N'adarsh panday', N'True', N'CNG Connection', N'puraniya', 30, N'102', N'226021    ', N'adarsh45@gmail.com', CAST(9988445577 AS Numeric(18, 0)), N'zwzihs87654', N'z0offj3q.t2o.jpg', N'IMG_20160312_205144.jpg')
INSERT [dbo].[Tbl_Registration] ([name], [gender], [connection_type], [address], [state], [city], [pincode], [email_id], [mob_no], [password], [pofile_pic], [signature_pic]) VALUES (N'Admin', N'True', N'CNG Connection', N'dsf', 4, N'12', N'234       ', N'Admin', CAST(2134324 AS Numeric(18, 0)), N'zzz', NULL, N'gfdg')
INSERT [dbo].[Tbl_Registration] ([name], [gender], [connection_type], [address], [state], [city], [pincode], [email_id], [mob_no], [password], [pofile_pic], [signature_pic]) VALUES (N'DEV SINGH', N'True', N'CNG Connection', N'lkolko', 2, N'6', N'241125    ', N'as1@gmail.com', CAST(8953422402 AS Numeric(18, 0)), N'876', N'5rikillb.0dm.JPG', N'IMG_0015.JPG')
INSERT [dbo].[Tbl_Registration] ([name], [gender], [connection_type], [address], [state], [city], [pincode], [email_id], [mob_no], [password], [pofile_pic], [signature_pic]) VALUES (N'ANUJ SHARMA', N'True', N'CNG Connection', N'BANGLA BAJAR,LKO', 4, N'12', N'240025    ', N'shiv.anuj@gmail.com', CAST(9170716890 AS Numeric(18, 0)), N'hsferolevzmfq', N'50fqdzx2.0yk.jpg', N'identity pic SIG.jpg')
/****** Object:  Table [dbo].[Tbl_Rates]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Rates](
	[rateID] [int] IDENTITY(1,1) NOT NULL,
	[gasType] [varchar](50) NULL,
	[rete] [float] NULL,
 CONSTRAINT [PK_Tbl_Rates] PRIMARY KEY CLUSTERED 
(
	[rateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Rates] ON
INSERT [dbo].[Tbl_Rates] ([rateID], [gasType], [rete]) VALUES (1, N'CNG', 50)
SET IDENTITY_INSERT [dbo].[Tbl_Rates] OFF
/****** Object:  Table [dbo].[Tbl_Question]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Question](
	[Question_ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](100) NOT NULL,
	[Question] [varchar](300) NOT NULL,
	[PostedOn] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tbl_Question] PRIMARY KEY CLUSTERED 
(
	[Question_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Question] ON
INSERT [dbo].[Tbl_Question] ([Question_ID], [UserID], [Question], [PostedOn]) VALUES (1, N'abhi.bisht2@gmail.com', N'what is c?', N'4/14/2016 1:54:02 PM')
INSERT [dbo].[Tbl_Question] ([Question_ID], [UserID], [Question], [PostedOn]) VALUES (2, N'adarsh45@gmail.com', N'C is an Object Oriented Programming language
?', N'4/14/2016 2:13:25 PM')
INSERT [dbo].[Tbl_Question] ([Question_ID], [UserID], [Question], [PostedOn]) VALUES (3, N'adarsh45@gmail.com', N'navneet ?', N'4/14/2016 7:41:30 PM')
INSERT [dbo].[Tbl_Question] ([Question_ID], [UserID], [Question], [PostedOn]) VALUES (4, N'abhi.bisht2@gmail.com', N'In my project discussion board is working correctly, and yours..?', N'4/15/2016 9:43:11 PM')
INSERT [dbo].[Tbl_Question] ([Question_ID], [UserID], [Question], [PostedOn]) VALUES (5, N'sharma44@gmail.com', N'kuch bhi?', N'4/15/2016 11:25:34 PM')
SET IDENTITY_INSERT [dbo].[Tbl_Question] OFF
/****** Object:  Table [dbo].[Tbl_PumpList]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_PumpList](
	[pump_id] [int] IDENTITY(1,1) NOT NULL,
	[pumpNname] [varchar](100) NULL,
	[pumpLocation] [varchar](150) NULL,
	[pumpAddress] [varchar](200) NULL,
	[helpLine] [varchar](50) NULL,
	[city] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_PumpList] PRIMARY KEY CLUSTERED 
(
	[pump_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_PumpList] ON
INSERT [dbo].[Tbl_PumpList] ([pump_id], [pumpNname], [pumpLocation], [pumpAddress], [helpLine], [city]) VALUES (1, N'ABC Aliganj', N'Alignj', N'Alignj sector 4', N'1800800888', N'Lucknow')
INSERT [dbo].[Tbl_PumpList] ([pump_id], [pumpNname], [pumpLocation], [pumpAddress], [helpLine], [city]) VALUES (2, N'kamala pasand', N'aliganj', N'alignaj, kapurthala', N'18008008888', N'LUCKNOW')
INSERT [dbo].[Tbl_PumpList] ([pump_id], [pumpNname], [pumpLocation], [pumpAddress], [helpLine], [city]) VALUES (3, N'pasand', N'hazarat ganj', N'1090', N'18008008888', N'LUCKNOW')
INSERT [dbo].[Tbl_PumpList] ([pump_id], [pumpNname], [pumpLocation], [pumpAddress], [helpLine], [city]) VALUES (4, N'dfgrdfvr', N'edgrg', N'ergregh', N'degrht', N'dghtrh')
SET IDENTITY_INSERT [dbo].[Tbl_PumpList] OFF
/****** Object:  Table [dbo].[Tbl_profilePic]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_profilePic](
	[pic_id] [int] IDENTITY(1,1) NOT NULL,
	[file_name] [varchar](200) NULL,
	[folder] [varchar](50) NULL,
	[user_id] [varchar](50) NULL,
	[filetype] [varchar](10) NULL,
	[filesize] [float] NULL,
	[isdel] [bit] NULL,
 CONSTRAINT [PK_Tbl_profilePic] PRIMARY KEY CLUSTERED 
(
	[pic_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_profilePic] ON
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (1, N's0ichafr.zgw.jpg', N'UserPics', N'asi@gmail.com', N'.jpg', 0.04101563, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (2, N'c1edjaqe.ezz.jpg', N'UserPics', N'raj521@gmail.com', N'.jpg', 0.2890625, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (3, N'lstcskjz.mut.jpg', N'UserPics', N'as1@gmail.com', N'.jpg', 0.04101563, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (4, N'gqafzcfo.xlo.jpg', N'UserPics', N'shiv.anuj@gmail.com', N'.jpg', 0.2890625, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (5, N'np5nybq4.dg0.jpg', N'UserPics', N'abhi.bisht2@gmail.com', N'.jpg', 0.02246094, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (6, N'oqjsdrgc.yhk.jpg', N'UserPics', N'adarsh45@gmail.com', N'.jpg', 0.2890625, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (7, N'ddhy0krn.weu.jpg', N'UserPics', N'abhi.bisht2@gmail.com', N'.jpg', 0.3046875, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (8, N'hlm5aclm.5zn.jpg', N'UserPics', N'adarsh45@gmail.com', N'.jpg', 0.3183594, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (9, N'cqevtrsl.j2c.jpg', N'UserPics', N'abhi.bisht2@gmail.com', N'.jpg', 0.3720703, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (10, N'zn41nyoe.lhp.jpg', N'UserPics', N'parths@gmail.com', N'.jpg', 0.421875, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (11, N'k0tebiiy.ymn.jpg', N'UserPics', N'parths@gmail.com', N'.jpg', 0.421875, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (12, N't5aopihp.sd0.jpg', N'UserPics', N'parths@gmail.com', N'.jpg', 1.96875, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (13, N'v1k0zwpy.t1q.jpg', N'UserPics', N'parthsingh@gmail.com', N'.jpg', 1.96875, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (14, N'2ufm2bxb.lkd.jpg', N'UserPics', N'parthsingh@gmail.com', N'.jpg', 1.96875, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (15, N'4nkd2wt5.lqg.jpg', N'UserPics', N'karan@gmail.com', N'.jpg', 0.3984375, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (16, N'xwiaxaky.fuc.jpg', N'UserPics', N'abhi.bisht2@gmail.com', N'.jpg', 0.6669922, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (17, N'tvrmoi5p.ehn.jpg', N'UserPics', N'adarsh45@gmail.com', N'.jpg', 0.3984375, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (18, N'2f50z0qf.cek.jpg', N'UserPics', N'sharma44@gmail.com', N'.jpg', 0.07128906, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (19, N'42cbipth.1qg.jpg', N'UserPics', N'karan@gmail.com', N'.jpg', 3.620117, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (20, N'okbceky3.zz4.jpg', N'UserPics', N'karan@gmail.com', N'.jpg', 2.007813, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (21, N'vzhmphhr.u1w.jpg', N'UserPics', N'588anuj@gmail.com', N'.jpg', 0.4277344, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (22, N'rsmltbgy.1em.jpg', N'UserPics', N'karan@gmail.com', N'.jpg', 0.1396484, 0)
INSERT [dbo].[Tbl_profilePic] ([pic_id], [file_name], [folder], [user_id], [filetype], [filesize], [isdel]) VALUES (23, N'3uumz2s5.s15.jpg', N'UserPics', N'anchalyashkhare@gmail.com', N'.jpg', 1.895508, 0)
SET IDENTITY_INSERT [dbo].[Tbl_profilePic] OFF
/****** Object:  Table [dbo].[Tbl_Notification]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Notification](
	[notification_ID] [int] IDENTITY(1,1) NOT NULL,
	[message] [varchar](300) NULL,
	[notification_UDT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Notification] PRIMARY KEY CLUSTERED 
(
	[notification_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Notification] ON
INSERT [dbo].[Tbl_Notification] ([notification_ID], [message], [notification_UDT]) VALUES (12, N'Welcome to GGL CRM', N'4/28/2016 1:06:24 PM')
INSERT [dbo].[Tbl_Notification] ([notification_ID], [message], [notification_UDT]) VALUES (13, N'Now PNG consumers can register to GGL website to view & pay gas bills and update contact details.', N'4/28/2016 1:07:27 PM')
SET IDENTITY_INSERT [dbo].[Tbl_Notification] OFF
/****** Object:  Table [dbo].[Tbl_NewConnection]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_NewConnection](
	[ConnectionID] [int] IDENTITY(1,1) NOT NULL,
	[ConnectionType] [varchar](50) NULL,
	[FromMonth] [varchar](50) NULL,
	[PostalAddress] [varchar](200) NULL,
	[MobileNo] [numeric](18, 0) NULL,
	[EmailID] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_NewConnection] PRIMARY KEY CLUSTERED 
(
	[ConnectionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_NewConnection] ON
INSERT [dbo].[Tbl_NewConnection] ([ConnectionID], [ConnectionType], [FromMonth], [PostalAddress], [MobileNo], [EmailID]) VALUES (1, N'PNG', N'2016-04', N'omax city', CAST(9473755779 AS Numeric(18, 0)), N'adarsh45@gmail.com')
INSERT [dbo].[Tbl_NewConnection] ([ConnectionID], [ConnectionType], [FromMonth], [PostalAddress], [MobileNo], [EmailID]) VALUES (3, N'PNG', N'2016-04', N'omax city', CAST(9473755779 AS Numeric(18, 0)), N'adarsh45@gmail.com')
SET IDENTITY_INSERT [dbo].[Tbl_NewConnection] OFF
/****** Object:  Table [dbo].[Tbl_MyBIll]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_MyBIll](
	[billID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](100) NULL,
	[Title] [varchar](100) NULL,
	[Description] [varchar](200) NULL,
	[billDate] [varchar](50) NULL,
	[LasteDate] [varchar](50) NULL,
	[Amount] [float] NULL,
	[BillStatus] [bit] NULL,
 CONSTRAINT [PK_Tbl_MyBIll] PRIMARY KEY CLUSTERED 
(
	[billID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[UserID] [varchar](50) NOT NULL,
	[Pwd] [varchar](50) NOT NULL,
	[connection_type] [varchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
	[LCount] [int] NULL,
	[LastLinTime] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'as1@gmail.com', N'876', N'Consumer', 1, 0, NULL)
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'shiv.anuj@gmail.com', N'hsferolevzmfq', N'Consumer', 1, 0, NULL)
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'abhi.bisht2@gmail.com', N'876', N'Consumer', 1, 35, N'4/18/2016 12:47:53 PM')
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'adarsh45@gmail.com', N'zwzihs', N'Consumer', 1, 26, N'4/28/2016 6:32:53 PM')
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'karan@gmail.com', N'pzizm9', N'Vendor', 1, 26, N'4/28/2016 2:20:13 PM')
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'Admin', N'zzz', N'Admin', 1, 0, NULL)
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'sharma44@gmail.com', N'tzfize', N'Vendor', 1, 2, N'4/16/2016 8:37:35 AM')
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'588anuj@gmail.com', N'zmfq', N'Consumer', 1, 0, NULL)
INSERT [dbo].[Tbl_Login] ([UserID], [Pwd], [connection_type], [Status], [LCount], [LastLinTime]) VALUES (N'anchalyashkhare@gmail.com', N'bzhs', N'Vendor', 1, 1, N'4/28/2016 2:51:28 PM')
/****** Object:  Table [dbo].[Tbl_GasBooking]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_GasBooking](
	[bookingNo] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](100) NOT NULL,
	[bookingDate] [varchar](30) NOT NULL,
	[ApxDelivaryDate] [varchar](30) NOT NULL,
	[GasType] [varchar](30) NOT NULL,
	[GasQuantity] [varchar](30) NOT NULL,
	[Amount] [float] NOT NULL,
	[atatus] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tbl_GasBooking] PRIMARY KEY CLUSTERED 
(
	[bookingNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_GasBooking] ON
INSERT [dbo].[Tbl_GasBooking] ([bookingNo], [UserID], [bookingDate], [ApxDelivaryDate], [GasType], [GasQuantity], [Amount], [atatus]) VALUES (1, N'adarsh45@gmail.com', N'4/27/2016 4:28:16 AM', N'13/5/2016', N'CNG', N'1', 0, N'Raised')
INSERT [dbo].[Tbl_GasBooking] ([bookingNo], [UserID], [bookingDate], [ApxDelivaryDate], [GasType], [GasQuantity], [Amount], [atatus]) VALUES (2, N'adarsh45@gmail.com', N'4/27/2016 3:09:34 PM', N'04/05/2016', N'CNG', N'4', 200, N'Raised')
INSERT [dbo].[Tbl_GasBooking] ([bookingNo], [UserID], [bookingDate], [ApxDelivaryDate], [GasType], [GasQuantity], [Amount], [atatus]) VALUES (3, N'adarsh45@gmail.com', N'4/28/2016 2:24:44 PM', N'05/05/2016', N'CNG', N'5', 250, N'Raised')
INSERT [dbo].[Tbl_GasBooking] ([bookingNo], [UserID], [bookingDate], [ApxDelivaryDate], [GasType], [GasQuantity], [Amount], [atatus]) VALUES (4, N'adarsh45@gmail.com', N'4/28/2016 2:24:51 PM', N'05/05/2016', N'CNG', N'8', 400, N'Raised')
SET IDENTITY_INSERT [dbo].[Tbl_GasBooking] OFF
/****** Object:  Table [dbo].[Tbl_ForgotPassword]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_ForgotPassword](
	[ForgotPassID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](100) NULL,
	[RequestedOn] [varchar](50) NULL,
	[Code] [varchar](20) NULL,
	[ValidTill] [varchar](30) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Tbl_ForgotPassword] PRIMARY KEY CLUSTERED 
(
	[ForgotPassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_feedback]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_feedback](
	[feedbackID] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](50) NOT NULL,
	[message] [varchar](500) NOT NULL,
	[feedbackDT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tbl_feedback] PRIMARY KEY CLUSTERED 
(
	[feedbackID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_enquiry]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_enquiry](
	[enquiry_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Contact_No] [varchar](50) NOT NULL,
	[Email_ID] [varchar](100) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[Enquiry_DT] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tbl_enquiry] PRIMARY KEY CLUSTERED 
(
	[enquiry_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_enquiry] ON
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (1, N'ahishek ', N'7275862136', N'bishtabhi@gmail.com', N'is this working correctly or not.', N'4/2/2016 9:14:20 PM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (2, N'raja babu', N'8075872036', N'rajababu45@gmail.com', N'this working correctly i checked it.. ', N'4/2/2016 9:15:40 PM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (3, N'raja babu', N'8075872036', N'rajababu45@gmail.com', N'this working correctly i checked it.. ', N'4/2/2016 9:17:14 PM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (4, N'', N'', N'', N'', N'4/2/2016 10:36:47 PM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (5, N'', N'', N'', N'', N'4/2/2016 10:38:16 PM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (6, N'', N'', N'', N'', N'4/3/2016 10:29:01 AM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (7, N'', N'', N'', N'', N'4/3/2016 10:30:47 AM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (8, N'', N'', N'', N'', N'4/3/2016 10:30:55 AM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (9, N'', N'', N'', N'', N'4/10/2016 11:48:04 AM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (10, N'', N'', N'', N'', N'4/10/2016 11:48:02 AM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (11, N'deepak', N'yadav', N'dy641349@gmail.com', N'is there any job for me', N'4/25/2016 12:41:39 PM')
INSERT [dbo].[Tbl_enquiry] ([enquiry_id], [Name], [Contact_No], [Email_ID], [Message], [Enquiry_DT]) VALUES (12, N'', N'', N'', N'', N'4/27/2016 5:56:06 PM')
SET IDENTITY_INSERT [dbo].[Tbl_enquiry] OFF
/****** Object:  Table [dbo].[Tbl_CarrerApply]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_CarrerApply](
	[firstName] [varchar](30) NULL,
	[lastName] [varchar](30) NULL,
	[email] [varchar](50) NULL,
	[contactNo] [varchar](50) NULL,
	[HighSchool] [varchar](100) NULL,
	[HighSchoolPer] [varchar](50) NULL,
	[Inter] [varchar](100) NULL,
	[InterPer] [varchar](50) NULL,
	[UG] [varchar](100) NULL,
	[UGper] [varchar](50) NULL,
	[PG] [varchar](100) NULL,
	[PGper] [varchar](50) NULL,
	[resume] [varchar](150) NULL,
	[applierID] [int] IDENTITY(1,1) NOT NULL,
	[ApplyDate] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_CarrerApply] PRIMARY KEY CLUSTERED 
(
	[applierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_CarrerApply] ON
INSERT [dbo].[Tbl_CarrerApply] ([firstName], [lastName], [email], [contactNo], [HighSchool], [HighSchoolPer], [Inter], [InterPer], [UG], [UGper], [PG], [PGper], [resume], [applierID], [ApplyDate]) VALUES (N'depak', N'yadav', N'dy641349@gmail.com', N'9305083061', N'CBSE', N'55', N'CBSE', N'66', N'bbdu', N'66', N'', N'', N'jQuery Slidebar.pdf', 1, N'4/25/2016 12:40:28 PM')
INSERT [dbo].[Tbl_CarrerApply] ([firstName], [lastName], [email], [contactNo], [HighSchool], [HighSchoolPer], [Inter], [InterPer], [UG], [UGper], [PG], [PGper], [resume], [applierID], [ApplyDate]) VALUES (N'ashish', N'mishra', N'ashish.live001@gmail.com', N'8573949434', N'c.b.s.e', N'74', N'u.p.', N'75', N'bbdu', N'64', N'', N'', N'GGLCRM Project Report.docx', 2, N'4/27/2016 12:27:15 PM')
SET IDENTITY_INSERT [dbo].[Tbl_CarrerApply] OFF
/****** Object:  Table [dbo].[Tbl_ApplyTender]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_ApplyTender](
	[AtenderID] [int] IDENTITY(1,1) NOT NULL,
	[vendorName] [varchar](100) NULL,
	[UserID] [varchar](100) NULL,
	[Tenders] [varchar](200) NULL,
	[WorkExperiance] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[Applydate] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_ApplyTender] PRIMARY KEY CLUSTERED 
(
	[AtenderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_ApplyTender] ON
INSERT [dbo].[Tbl_ApplyTender] ([AtenderID], [vendorName], [UserID], [Tenders], [WorkExperiance], [Amount], [Applydate]) VALUES (1, N'anchal khare', N'karan@gmail.com', N'', N'5 years', N'50000', N'4/28/2016 8:58:34 AM')
INSERT [dbo].[Tbl_ApplyTender] ([AtenderID], [vendorName], [UserID], [Tenders], [WorkExperiance], [Amount], [Applydate]) VALUES (2, N'anshish mishra', N'karan@gmail.com', N'', N'2 years', N'60000', N'4/28/2016 11:28:40 AM')
INSERT [dbo].[Tbl_ApplyTender] ([AtenderID], [vendorName], [UserID], [Tenders], [WorkExperiance], [Amount], [Applydate]) VALUES (3, N'', N'anchalyashkhare@gmail.com', N'', N'', N'', N'4/28/2016 2:52:08 PM')
SET IDENTITY_INSERT [dbo].[Tbl_ApplyTender] OFF
/****** Object:  Table [dbo].[Tbl_Answer]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Answer](
	[Answer_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [varchar](100) NOT NULL,
	[Question_Id] [int] NOT NULL,
	[Answer] [varchar](600) NOT NULL,
	[PostedOn] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tbl_Answer] PRIMARY KEY CLUSTERED 
(
	[Answer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Answer] ON
INSERT [dbo].[Tbl_Answer] ([Answer_ID], [User_ID], [Question_Id], [Answer], [PostedOn]) VALUES (1, N'abhi.bisht2@gmail.com', 3, N'Navneet apne ghr pei hoga.', N'4/15/2016 9:25:25 PM')
INSERT [dbo].[Tbl_Answer] ([Answer_ID], [User_ID], [Question_Id], [Answer], [PostedOn]) VALUES (2, N'abhi.bisht2@gmail.com', 3, N'Navneet apne ghr pei hoga.', N'4/15/2016 9:28:00 PM')
INSERT [dbo].[Tbl_Answer] ([Answer_ID], [User_ID], [Question_Id], [Answer], [PostedOn]) VALUES (3, N'abhi.bisht2@gmail.com', 2, N'C is a mother language', N'4/15/2016 9:40:18 PM')
SET IDENTITY_INSERT [dbo].[Tbl_Answer] OFF
/****** Object:  StoredProcedure [dbo].[SPLogin]    Script Date: 04/28/2016 19:51:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SPLogin]

	(
	@UserID varchar(100),
	@pass varchar(50),
	@cnType varchar(50)
	)


AS
	Begin
	Select status from Tbl_Login where UserID=@UserID and pwd=@pass and connection_Type=@Cntype and Status=1
	END
GO
/****** Object:  Table [dbo].[Tbl_Complain]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Complain](
	[complain_ID] [int] IDENTITY(100,1) NOT NULL,
	[user_ID] [varchar](50) NOT NULL,
	[subject] [varchar](300) NOT NULL,
	[detail] [varchar](500) NOT NULL,
	[complainDT] [varchar](30) NOT NULL,
	[status] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Tbl_Complain] PRIMARY KEY CLUSTERED 
(
	[complain_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Complain] ON
INSERT [dbo].[Tbl_Complain] ([complain_ID], [user_ID], [subject], [detail], [complainDT], [status]) VALUES (100, N'abhi.bisht2@gmail.com', N'Programming', N'this website programming codes have many errors.. remove it make it clear and good.', N'4/9/2016 4:23:25 PM', N'Raised')
SET IDENTITY_INSERT [dbo].[Tbl_Complain] OFF
/****** Object:  Table [dbo].[Tbl_city]    Script Date: 04/28/2016 19:51:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_city](
	[City_ID] [int] NOT NULL,
	[City_Name] [varchar](50) NOT NULL,
	[State_ID] [int] NOT NULL,
 CONSTRAINT [PK_Tbl_city] PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (1, N'HYDERABAD', 1)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (2, N'TIRUPATI', 1)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (3, N'VISAKHAPATNAM', 1)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (4, N'VIJAYAWADA', 1)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (5, N'WARANGAL', 1)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (6, N'ITANAGAR', 2)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (7, N'DISPUR', 3)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (8, N'GUWAHATI', 3)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (9, N'TEZPUR', 3)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (10, N'GAYA', 4)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (11, N'PATANA', 4)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (12, N'VAISHALI', 4)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (13, N'NALANDA', 4)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (14, N'RAJGIR', 4)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (15, N'RAIPUR', 5)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (16, N'CANACONA', 7)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (17, N'OLD GOA', 7)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (18, N'PONDA', 7)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (19, N'MAPUSA', 7)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (20, N'PANAJI', 7)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (21, N'VASCO DA GAMA', 7)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (22, N'MARGAO', 7)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (23, N'AHMEDABAD', 8)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (24, N'GANDHINAGAR', 8)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (25, N'SURAT', 8)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (26, N'VADODARA', 8)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (27, N'CHANDIGARH', 9)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (28, N'FARIDABAD', 9)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (29, N'GURGAON', 9)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (30, N'SHIMLA', 10)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (31, N'DHARAMSALA', 10)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (32, N'KULLU', 10)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (33, N'MANALI', 10)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (34, N'GULMARG', 11)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (35, N'JAMMU', 11)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (36, N'PAHALGAM', 11)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (37, N'LADAKH', 11)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (38, N'LEH', 11)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (39, N'SRINAGAR', 11)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (40, N'DHANBAD', 12)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (41, N'JAMSHEDPUR', 12)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (42, N'RANCHI', 12)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (43, N'BANGALORE', 13)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (44, N'HASSAN', 13)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (45, N'MYSORE', 13)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (46, N'HAMPI', 13)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (47, N'MANGALORE', 13)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (48, N'ALLEPPEY', 14)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (49, N'KOVALLAM', 14)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (50, N'QUILON', 14)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (51, N'COCHIN', 14)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (52, N'MUNNAR', 14)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (53, N'TRIVANDRUM', 14)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (54, N'LAKSHADEEP', 15)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (55, N'BHOPAL', 16)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (56, N'GWALIOR', 16)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (57, N'KHAJURAHO', 16)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (58, N'INDORE', 16)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (59, N'ORCHHA', 16)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (60, N'AURANGABAD', 17)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (61, N'NAGPUR', 17)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (62, N'PUNE', 17)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (63, N'MUMBAI', 17)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (64, N'IMPHAL', 18)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (65, N'SHILLONG', 19)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (66, N'AIZAWL', 20)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (67, N'KOHIMA', 21)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (68, N'BUBANESWAR', 22)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (69, N'KONARK', 22)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (70, N'PURI', 22)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (71, N'CUTTAK', 22)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (72, N'AMRITSAR', 24)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (73, N'LUDHIANA', 24)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (74, N'PATIALA', 24)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (75, N'CHANDIGARH', 24)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (76, N'AJMER', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (77, N'JAIPUR', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (78, N'RANAKPUR', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (79, N'ALWAR', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (80, N'JAISALMER', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (81, N'SHEKHAWATI', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (82, N'BIKANER', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (83, N'JODHPUR', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (84, N'UDAIPUR', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (85, N'BUNDI', 25)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (86, N'GANGTOK', 26)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (87, N'CHENNAI', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (88, N'KODAIKANAL', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (89, N'RAMESHWARAM', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (90, N'COIMBATORE', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (91, N'MADURAI', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (92, N'THANJAVUR', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (93, N'KANYAKUMARI', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (94, N'OOTY', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (95, N'TRICHY', 27)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (96, N'AGARTALA', 28)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (97, N'DHARADUN', 29)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (98, N'NAINATAL', 29)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (99, N'RISHIKESH', 29)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (100, N'HARIDWAR', 29)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (101, N'AGRA', 30)
GO
print 'Processed 100 total records'
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (102, N'LUCKNOW', 30)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (103, N'VARANASI', 30)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (104, N'ALLAHABAD', 30)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (105, N'BURDWAN', 31)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (106, N'DURGAPUR', 31)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (107, N'MURSHIDABAD', 31)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (108, N'DARJEELING', 31)
INSERT [dbo].[Tbl_city] ([City_ID], [City_Name], [State_ID]) VALUES (109, N'KOLKATA', 31)
/****** Object:  ForeignKey [FK_Tbl_Answer_Tbl_Question]    Script Date: 04/28/2016 19:51:16 ******/
ALTER TABLE [dbo].[Tbl_Answer]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Answer_Tbl_Question] FOREIGN KEY([Question_Id])
REFERENCES [dbo].[Tbl_Question] ([Question_ID])
GO
ALTER TABLE [dbo].[Tbl_Answer] CHECK CONSTRAINT [FK_Tbl_Answer_Tbl_Question]
GO
/****** Object:  ForeignKey [FK_Tbl_city_Tbl_State]    Script Date: 04/28/2016 19:51:16 ******/
ALTER TABLE [dbo].[Tbl_city]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_city_Tbl_State] FOREIGN KEY([State_ID])
REFERENCES [dbo].[Tbl_State] ([State_ID])
GO
ALTER TABLE [dbo].[Tbl_city] CHECK CONSTRAINT [FK_Tbl_city_Tbl_State]
GO
/****** Object:  ForeignKey [FK_Tbl_Complain_Tbl_Registration]    Script Date: 04/28/2016 19:51:16 ******/
ALTER TABLE [dbo].[Tbl_Complain]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Complain_Tbl_Registration] FOREIGN KEY([user_ID])
REFERENCES [dbo].[Tbl_Registration] ([email_id])
GO
ALTER TABLE [dbo].[Tbl_Complain] CHECK CONSTRAINT [FK_Tbl_Complain_Tbl_Registration]
GO
