USE [BDVENTAS_5]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 6/10/2017 12:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[codcategoria] [char](2) NOT NULL,
	[descategoria] [varchar](20) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[codcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 6/10/2017 12:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[VEN_Codigo] [char](10) NOT NULL,
	[DV_Cantidad] [int] NULL,
	[DV_Precio] [decimal](10, 2) NULL,
	[DV_SubTotal] [decimal](10, 2) NULL,
	[codproducto] [char](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[medio_pago]    Script Date: 6/10/2017 12:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[medio_pago](
	[id_medio] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_medio_pago] PRIMARY KEY CLUSTERED 
(
	[id_medio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 6/10/2017 12:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[codproducto] [char](4) NOT NULL,
	[desproducto] [varchar](40) NULL,
	[codcategoria] [char](2) NULL,
	[preproducto] [decimal](18, 2) NULL,
	[canproducto] [int] NULL,
	[imagen] [varchar](40) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[codproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 6/10/2017 12:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VENTA](
	[VEN_Codigo] [char](10) NOT NULL,
	[VEN_Fecha] [varchar](50) NULL,
	[VEN_SuTotal] [decimal](10, 2) NULL,
	[VEN_IGV] [decimal](10, 2) NULL,
	[VEN_Total] [decimal](10, 2) NULL,
	[VEN_Cliente] [varchar](50) NULL,
	[VEN_medio_pago] [int] NULL,
 CONSTRAINT [PK_VENTA_1] PRIMARY KEY CLUSTERED 
(
	[VEN_Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Categorias] ([codcategoria], [descategoria]) VALUES (N'1 ', N'Celulares')
INSERT [dbo].[Categorias] ([codcategoria], [descategoria]) VALUES (N'2 ', N'Laptops')
INSERT [dbo].[Categorias] ([codcategoria], [descategoria]) VALUES (N'3 ', N'DVD')
INSERT [dbo].[Categorias] ([codcategoria], [descategoria]) VALUES (N'4 ', N'Refrigeradoras')
INSERT [dbo].[Categorias] ([codcategoria], [descategoria]) VALUES (N'5 ', N'Estufas')
INSERT [dbo].[Categorias] ([codcategoria], [descategoria]) VALUES (N'6 ', N'Hogar')
INSERT [dbo].[DETALLE_VENTA] ([VEN_Codigo], [DV_Cantidad], [DV_Precio], [DV_SubTotal], [codproducto]) VALUES (N'0001      ', 1, CAST(5000.00 AS Decimal(10, 2)), CAST(5000.00 AS Decimal(10, 2)), N'3   ')
INSERT [dbo].[DETALLE_VENTA] ([VEN_Codigo], [DV_Cantidad], [DV_Precio], [DV_SubTotal], [codproducto]) VALUES (N'0002      ', 2, CAST(200.00 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)), N'15  ')
SET IDENTITY_INSERT [dbo].[medio_pago] ON 

INSERT [dbo].[medio_pago] ([id_medio], [descripcion]) VALUES (1, N'Deposito Bancario')
INSERT [dbo].[medio_pago] ([id_medio], [descripcion]) VALUES (2, N'Pago contra entrega')
SET IDENTITY_INSERT [dbo].[medio_pago] OFF
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'1   ', N'Celular Samsung', N'1 ', CAST(900.00 AS Decimal(18, 2)), 5, N'CELULAR.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'10  ', N'Licuadora', N'6 ', CAST(250.00 AS Decimal(18, 2)), 20, N'dsc_0197_5.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'11  ', N'Microondas', N'6 ', CAST(500.00 AS Decimal(18, 2)), 80, N'MICROONDAS.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'12  ', N'Refrigeradora', N'6 ', CAST(3500.00 AS Decimal(18, 2)), 80, N'frigider.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'14  ', N'DVD', N'3 ', CAST(4500.00 AS Decimal(18, 2)), 80, N'dvd.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'15  ', N'Olla Arrocera', N'6 ', CAST(200.00 AS Decimal(18, 2)), 80, N'OLLA ARROCERA (1).jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'2   ', N'Laptop', N'2 ', CAST(10000.00 AS Decimal(18, 2)), 10, N'apple.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'3   ', N'Laptop', N'2 ', CAST(5000.00 AS Decimal(18, 2)), 10, N'Laptop-PNG-Image.png')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'4   ', N'Laptop', N'2 ', CAST(6000.00 AS Decimal(18, 2)), 10, N'sony.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'5   ', N'Laptop', N'2 ', CAST(7000.00 AS Decimal(18, 2)), 10, N'lenovo.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'6   ', N'Laptop', N'2 ', CAST(4500.00 AS Decimal(18, 2)), 10, N'hp.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'7   ', N'Tablet', N'1 ', CAST(4500.00 AS Decimal(18, 2)), 10, N'latin_GT-P7510ZKDSPR_001_Front.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'8   ', N'Laptop', N'2 ', CAST(2000.00 AS Decimal(18, 2)), 10, N'IMPRESORA (1).jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'9   ', N'Estufa', N'5 ', CAST(1000.00 AS Decimal(18, 2)), 100, N'IMPRESORA (2).jpg')
INSERT [dbo].[VENTA] ([VEN_Codigo], [VEN_Fecha], [VEN_SuTotal], [VEN_IGV], [VEN_Total], [VEN_Cliente], [VEN_medio_pago]) VALUES (N'0001      ', N'6/10/2017 ', CAST(4400.00 AS Decimal(10, 2)), CAST(600.00 AS Decimal(10, 2)), CAST(5000.00 AS Decimal(10, 2)), N'Jorge Sandoval', 2)
INSERT [dbo].[VENTA] ([VEN_Codigo], [VEN_Fecha], [VEN_SuTotal], [VEN_IGV], [VEN_Total], [VEN_Cliente], [VEN_medio_pago]) VALUES (N'0002      ', N'6/10/2017 ', CAST(352.00 AS Decimal(10, 2)), CAST(48.00 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)), N'', 2)
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_Productos] FOREIGN KEY([codproducto])
REFERENCES [dbo].[Productos] ([codproducto])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_Productos]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_VENTA] FOREIGN KEY([VEN_Codigo])
REFERENCES [dbo].[VENTA] ([VEN_Codigo])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_VENTA]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([codcategoria])
REFERENCES [dbo].[Categorias] ([codcategoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [FK_VENTA_medio_pago] FOREIGN KEY([VEN_medio_pago])
REFERENCES [dbo].[medio_pago] ([id_medio])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [FK_VENTA_medio_pago]
GO
