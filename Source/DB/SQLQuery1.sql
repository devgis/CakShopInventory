
USE [cakeshopinventorysystem]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[lname] [varchar](50) NULL,
	[pwd] [varchar](100) NULL,
	[flag] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials](
	[mid] [int] IDENTITY(1,1) NOT NULL,
	[mname] [varchar](50) NULL,
	[unit] [varchar](50) NULL,
	[spec] [varchar](50) NULL,
	[remark] [varchar](50) NULL,
	[quantity] [decimal](18, 2) NULL,
	[wquantity] [decimal](18, 2) NULL,
	[price] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](50) NULL,
	[ptype] [varchar](20) NULL,
	[pic] [varchar](100) NULL,
	[quantity] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[destion] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pselling]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pselling](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[nnum] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[remark] [varchar](200) NULL,
	[auser] [varchar](50) NULL,
	[atime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchaseorder]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchaseorder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mid] [int] NULL,
	[nnum] [decimal](18, 2) NULL,
	[sid] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[remarks] [varchar](50) NULL,
	[auser] [varchar](50) NULL,
	[atime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchasereturn]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchasereturn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mid] [int] NULL,
	[nnum] [varchar](50) NULL,
	[sid] [int] NULL,
	[price] [decimal](18, 2) NULL,
	[reasons] [varchar](50) NULL,
	[auser] [varchar](50) NULL,
	[atime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salesreturn]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salesreturn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[nnum] [int] NULL,
	[reason] [varchar](200) NULL,
	[price] [decimal](18, 2) NULL,
	[remarks] [varchar](50) NULL,
	[auser] [varchar](50) NULL,
	[atime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suppliers](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[sname] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2022-03-04 18:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userid] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[sex] [varchar](10) NULL,
	[tel] [varchar](11) NULL,
	[address] [varchar](100) NULL,
	[userstate] [varchar](20) NULL,
	[remark] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([aid], [lname], [pwd], [flag]) VALUES (1, N'admin', N'1', N'管理员')
SET IDENTITY_INSERT [dbo].[admin] OFF
SET IDENTITY_INSERT [dbo].[materials] ON 

INSERT [dbo].[materials] ([mid], [mname], [unit], [spec], [remark], [quantity], [wquantity], [price]) VALUES (1, N'大番茄', N'斤', N'23', N'用的', CAST(150.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(4.50 AS Decimal(18, 2)))
INSERT [dbo].[materials] ([mid], [mname], [unit], [spec], [remark], [quantity], [wquantity], [price]) VALUES (2, N'哈密瓜', N'个', N'小的', N'吃的', CAST(100.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(13.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[materials] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([pid], [pname], [ptype], [pic], [quantity], [price], [destion]) VALUES (1, N'七彩蛋糕', N'蛋糕', N'20220303105506857.jpg', 10, CAST(168.00 AS Decimal(18, 2)), N'好吃')
INSERT [dbo].[products] ([pid], [pname], [ptype], [pic], [quantity], [price], [destion]) VALUES (2, N'巧克力蛋糕', N'蛋糕', N'20220303112747140.jpg', 10, CAST(220.00 AS Decimal(18, 2)), N'好吃')
SET IDENTITY_INSERT [dbo].[products] OFF
SET IDENTITY_INSERT [dbo].[pselling] ON 

INSERT [dbo].[pselling] ([id], [pid], [nnum], [price], [remark], [auser], [atime]) VALUES (1, 1, 1, CAST(210.00 AS Decimal(18, 2)), N'没好', N'管理员', CAST(N'2022-03-03T22:57:49.000' AS DateTime))
INSERT [dbo].[pselling] ([id], [pid], [nnum], [price], [remark], [auser], [atime]) VALUES (2, 1, 1, CAST(210.00 AS Decimal(18, 2)), N'test', N'张三', CAST(N'2022-03-03T23:29:16.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[pselling] OFF
SET IDENTITY_INSERT [dbo].[purchaseorder] ON 

INSERT [dbo].[purchaseorder] ([id], [mid], [nnum], [sid], [price], [remarks], [auser], [atime]) VALUES (4, 1, CAST(100.00 AS Decimal(18, 2)), 1, CAST(13.00 AS Decimal(18, 2)), N'test', N'admin', CAST(N'2022-03-03T22:49:55.000' AS DateTime))
INSERT [dbo].[purchaseorder] ([id], [mid], [nnum], [sid], [price], [remarks], [auser], [atime]) VALUES (5, 1, CAST(100.00 AS Decimal(18, 2)), 2, CAST(10.00 AS Decimal(18, 2)), N'test', N'李红', CAST(N'2022-03-03T23:30:52.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[purchaseorder] OFF
SET IDENTITY_INSERT [dbo].[purchasereturn] ON 

INSERT [dbo].[purchasereturn] ([id], [mid], [nnum], [sid], [price], [reasons], [auser], [atime]) VALUES (1, 1, N'1', 1, CAST(4.50 AS Decimal(18, 2)), N'坏了', N'admin', CAST(N'2022-03-03T22:52:07.000' AS DateTime))
INSERT [dbo].[purchasereturn] ([id], [mid], [nnum], [sid], [price], [reasons], [auser], [atime]) VALUES (2, 1, N'50', 2, CAST(10.00 AS Decimal(18, 2)), N'测试', N'李红', CAST(N'2022-03-03T23:31:15.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[purchasereturn] OFF
SET IDENTITY_INSERT [dbo].[salesreturn] ON 

INSERT [dbo].[salesreturn] ([id], [pid], [nnum], [reason], [price], [remarks], [auser], [atime]) VALUES (1, 1, 1, N'不好看', CAST(190.00 AS Decimal(18, 2)), N'测试', N'管理员', CAST(N'2022-03-03T22:59:15.000' AS DateTime))
INSERT [dbo].[salesreturn] ([id], [pid], [nnum], [reason], [price], [remarks], [auser], [atime]) VALUES (2, 1, 1, N'测试一下', CAST(190.00 AS Decimal(18, 2)), N'好', N'张三', CAST(N'2022-03-03T23:30:08.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[salesreturn] OFF
SET IDENTITY_INSERT [dbo].[suppliers] ON 

INSERT [dbo].[suppliers] ([sid], [sname]) VALUES (1, N'小米有限公司')
INSERT [dbo].[suppliers] ([sid], [sname]) VALUES (2, N'爱家水果有限公司')
SET IDENTITY_INSERT [dbo].[suppliers] OFF
INSERT [dbo].[users] ([userid], [password], [username], [sex], [tel], [address], [userstate], [remark]) VALUES (N'1001', N'1001', N'张三', N'男', N'18203658745', N'痃', N'销售员', N'非常好')
INSERT [dbo].[users] ([userid], [password], [username], [sex], [tel], [address], [userstate], [remark]) VALUES (N'1002', N'1002', N'李红', N'男', N'18203658365', N'北京', N'采购员', N'采购好')
INSERT [dbo].[users] ([userid], [password], [username], [sex], [tel], [address], [userstate], [remark]) VALUES (N'1003', N'1003', N'王静', N'女', N'18203658985', N'北京', N'仓管员', N'能力强')
/****** Object:  Index [PK_admin]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[admin] ADD  CONSTRAINT [PK_admin] PRIMARY KEY NONCLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_materials]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[materials] ADD  CONSTRAINT [PK_materials] PRIMARY KEY NONCLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_products]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[products] ADD  CONSTRAINT [PK_products] PRIMARY KEY NONCLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_pselling]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[pselling] ADD  CONSTRAINT [PK_pselling] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_purchaseorder]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[purchaseorder] ADD  CONSTRAINT [PK_purchaseorder] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_purchasereturn]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[purchasereturn] ADD  CONSTRAINT [PK_purchasereturn] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_salesreturn]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[salesreturn] ADD  CONSTRAINT [PK_salesreturn] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_suppliers]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[suppliers] ADD  CONSTRAINT [PK_suppliers] PRIMARY KEY NONCLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_users]    Script Date: 2022-03-04 18:49:43 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [PK_users] PRIMARY KEY NONCLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'aid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'lname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'mid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原材料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'mname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'spec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用途' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预警量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'wquantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'materials', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'products', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'products', @level2type=N'COLUMN',@level2name=N'pname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'products', @level2type=N'COLUMN',@level2name=N'ptype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'products', @level2type=N'COLUMN',@level2name=N'pic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'products', @level2type=N'COLUMN',@level2name=N'quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'products', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'products', @level2type=N'COLUMN',@level2name=N'destion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pselling', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pselling', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pselling', @level2type=N'COLUMN',@level2name=N'nnum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pselling', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pselling', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pselling', @level2type=N'COLUMN',@level2name=N'auser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pselling', @level2type=N'COLUMN',@level2name=N'atime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchaseorder', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原材料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchaseorder', @level2type=N'COLUMN',@level2name=N'mid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchaseorder', @level2type=N'COLUMN',@level2name=N'nnum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchaseorder', @level2type=N'COLUMN',@level2name=N'sid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchaseorder', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchaseorder', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchaseorder', @level2type=N'COLUMN',@level2name=N'auser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchaseorder', @level2type=N'COLUMN',@level2name=N'atime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchasereturn', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原材料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchasereturn', @level2type=N'COLUMN',@level2name=N'mid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchasereturn', @level2type=N'COLUMN',@level2name=N'nnum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchasereturn', @level2type=N'COLUMN',@level2name=N'sid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchasereturn', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchasereturn', @level2type=N'COLUMN',@level2name=N'reasons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchasereturn', @level2type=N'COLUMN',@level2name=N'auser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'purchasereturn', @level2type=N'COLUMN',@level2name=N'atime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'salesreturn', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'salesreturn', @level2type=N'COLUMN',@level2name=N'pid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'salesreturn', @level2type=N'COLUMN',@level2name=N'nnum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'salesreturn', @level2type=N'COLUMN',@level2name=N'reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'salesreturn', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'salesreturn', @level2type=N'COLUMN',@level2name=N'remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'salesreturn', @level2type=N'COLUMN',@level2name=N'auser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'salesreturn', @level2type=N'COLUMN',@level2name=N'atime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'suppliers', @level2type=N'COLUMN',@level2name=N'sid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'suppliers', @level2type=N'COLUMN',@level2name=N'sname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'员工编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'userid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'家庭地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'userstate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'remark'
GO
USE [master]
GO
ALTER DATABASE [cakeshopinventorysystem] SET  READ_WRITE 
GO
