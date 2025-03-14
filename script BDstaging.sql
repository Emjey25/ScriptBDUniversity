USE [StagingBDJardineria]
GO
/****** Object:  Table [dbo].[Destino CategoriaST]    Script Date: 13/03/2025 1:59:40 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino CategoriaST](
	[Id_Categoria] [int] NULL,
	[Desc_Categoria] [nvarchar](50) NULL,
	[descripcion_texto] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino de ClienteST]    Script Date: 13/03/2025 1:59:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino de ClienteST](
	[ID_cliente] [int] NULL,
	[nombre_cliente] [nvarchar](50) NULL,
	[nombre_contacto] [nvarchar](30) NULL,
	[apellido_contacto] [nvarchar](30) NULL,
	[telefono] [nvarchar](15) NULL,
	[fax] [nvarchar](15) NULL,
	[linea_direccion1] [nvarchar](50) NULL,
	[linea_direccion2] [nvarchar](50) NULL,
	[ciudad] [nvarchar](50) NULL,
	[pais] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino de VentasST]    Script Date: 13/03/2025 1:59:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino de VentasST](
	[ID_pedido] [int] NULL,
	[ID_producto] [int] NULL,
	[ID_cliente] [int] NULL,
	[fecha_pedido] [date] NULL,
	[ID_empleado] [int] NULL,
	[ID_oficina] [int] NULL,
	[cantidad] [int] NULL,
	[precio_unidad] [numeric](15, 2) NULL,
	[descuento] [numeric](29, 4) NULL,
	[impuesto] [numeric](29, 4) NULL,
	[total] [numeric](31, 4) NULL,
	[Fac] [numeric](26, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino EmpleadoST]    Script Date: 13/03/2025 1:59:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino EmpleadoST](
	[ID_empleado] [int] NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido1] [nvarchar](50) NULL,
	[apellido2] [nvarchar](50) NULL,
	[extension] [nvarchar](10) NULL,
	[email] [nvarchar](100) NULL,
	[ID_oficina] [int] NULL,
	[ID_jefe] [int] NULL,
	[puesto] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino OficinaST]    Script Date: 13/03/2025 1:59:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino OficinaST](
	[ID_oficina] [int] NULL,
	[Descripcion] [nvarchar](10) NULL,
	[ciudad] [nvarchar](30) NULL,
	[pais] [nvarchar](50) NULL,
	[region] [nvarchar](50) NULL,
	[codigo_postal] [nvarchar](10) NULL,
	[telefono] [nvarchar](20) NULL,
	[linea_direccion1] [nvarchar](50) NULL,
	[linea_direccion2] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destino TimeST]    Script Date: 13/03/2025 1:59:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destino TimeST](
	[Fecha] [nvarchar](51) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DestinoProductoST]    Script Date: 13/03/2025 1:59:41 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DestinoProductoST](
	[ID_producto] [int] NULL,
	[nombre] [nvarchar](70) NULL,
	[Categoria] [int] NULL,
	[descripcion] [nvarchar](max) NULL,
	[cantidad_en_stock] [smallint] NULL,
	[precio_venta] [numeric](15, 2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
