USE [jardineria_model_relacional]
GO
/****** Object:  Table [dbo].[Categoria_producto]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_producto](
	[Id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[Desc_Categoria] [varchar](50) NOT NULL,
	[descripcion_texto] [text] NULL,
	[descripcion_html] [text] NULL,
	[imagen] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[ID_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_cliente] [varchar](50) NOT NULL,
	[nombre_contacto] [varchar](30) NULL,
	[apellido_contacto] [varchar](30) NULL,
	[telefono] [varchar](15) NOT NULL,
	[fax] [varchar](15) NOT NULL,
	[linea_direccion1] [varchar](50) NOT NULL,
	[linea_direccion2] [varchar](50) NULL,
	[ciudad] [varchar](50) NOT NULL,
	[region] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
	[codigo_postal] [varchar](10) NULL,
	[ID_empleado_rep_ventas] [int] NULL,
	[limite_credito] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino TimeST]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino TimeST](
	[Fecha] [nvarchar](51) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_pedido]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_pedido](
	[ID_detalle_pedido] [int] IDENTITY(1,1) NOT NULL,
	[ID_pedido] [int] NOT NULL,
	[ID_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unidad] [numeric](15, 2) NOT NULL,
	[numero_linea] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_detalle_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[ID_empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NULL,
	[extension] [varchar](10) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[ID_oficina] [int] NOT NULL,
	[ID_jefe] [int] NULL,
	[puesto] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oficina]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oficina](
	[ID_oficina] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](10) NOT NULL,
	[ciudad] [varchar](30) NOT NULL,
	[pais] [varchar](50) NOT NULL,
	[region] [varchar](50) NULL,
	[codigo_postal] [varchar](10) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[linea_direccion1] [varchar](50) NOT NULL,
	[linea_direccion2] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_oficina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pago]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[ID_pago] [int] IDENTITY(1,1) NOT NULL,
	[ID_cliente] [int] NOT NULL,
	[forma_pago] [varchar](40) NOT NULL,
	[id_transaccion] [varchar](50) NOT NULL,
	[fecha_pago] [date] NOT NULL,
	[total] [numeric](15, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[ID_pedido] [int] IDENTITY(1,1) NOT NULL,
	[fecha_pedido] [date] NOT NULL,
	[fecha_esperada] [date] NOT NULL,
	[fecha_entrega] [date] NULL,
	[estado] [varchar](15) NOT NULL,
	[comentarios] [text] NULL,
	[ID_cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 13/03/2025 2:26:08 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[ID_producto] [int] IDENTITY(1,1) NOT NULL,
	[CodigoProducto] [varchar](15) NOT NULL,
	[nombre] [varchar](70) NOT NULL,
	[Categoria] [int] NOT NULL,
	[dimensiones] [varchar](25) NULL,
	[proveedor] [varchar](50) NULL,
	[descripcion] [text] NULL,
	[cantidad_en_stock] [smallint] NOT NULL,
	[precio_venta] [numeric](15, 2) NOT NULL,
	[precio_proveedor] [numeric](15, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [nombre_contacto]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [apellido_contacto]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [linea_direccion2]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [region]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [pais]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [codigo_postal]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [ID_empleado_rep_ventas]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (NULL) FOR [limite_credito]
GO
ALTER TABLE [dbo].[empleado] ADD  DEFAULT (NULL) FOR [apellido2]
GO
ALTER TABLE [dbo].[empleado] ADD  DEFAULT (NULL) FOR [ID_jefe]
GO
ALTER TABLE [dbo].[empleado] ADD  DEFAULT (NULL) FOR [puesto]
GO
ALTER TABLE [dbo].[oficina] ADD  DEFAULT (NULL) FOR [region]
GO
ALTER TABLE [dbo].[oficina] ADD  DEFAULT (NULL) FOR [linea_direccion2]
GO
ALTER TABLE [dbo].[pedido] ADD  DEFAULT (NULL) FOR [fecha_entrega]
GO
ALTER TABLE [dbo].[producto] ADD  DEFAULT (NULL) FOR [proveedor]
GO
ALTER TABLE [dbo].[producto] ADD  DEFAULT (NULL) FOR [precio_proveedor]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([ID_empleado_rep_ventas])
REFERENCES [dbo].[empleado] ([ID_empleado])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([ID_pedido])
REFERENCES [dbo].[pedido] ([ID_pedido])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([ID_producto])
REFERENCES [dbo].[producto] ([ID_producto])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([ID_jefe])
REFERENCES [dbo].[empleado] ([ID_empleado])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([ID_oficina])
REFERENCES [dbo].[oficina] ([ID_oficina])
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([ID_cliente])
REFERENCES [dbo].[cliente] ([ID_cliente])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([Categoria])
REFERENCES [dbo].[Categoria_producto] ([Id_Categoria])
GO
