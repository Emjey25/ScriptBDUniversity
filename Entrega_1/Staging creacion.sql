
-- aca estan todos los scripts de creacion de mis tablas de staging , listos para documentar la tarea


CREATE TABLE "Destino de VentasST" (
    "ID_pedido" int,
    "ID_producto" int,
    "ID_cliente" int,
    "fecha_pedido" date,
    "ID_empleado" int,
    "ID_oficina" int,
    "cantidad" int,
    "precio_unidad" numeric(15,2),
    "descuento" numeric(29,4),
    "impuesto" numeric(29,4),
    "total" numeric(31,4),
    "Fac" numeric(26,2)
)

CREATE TABLE "DestinoProductoST" (
    "ID_producto" int,
    "nombre" nvarchar(70),
    "Categoria" int,
    "descripcion" nvarchar(max),
    "cantidad_en_stock" smallint,
    "precio_venta" numeric(15,2)
)


CREATE TABLE "Destino OficinaST" (
    "ID_oficina" int,
    "Descripcion" nvarchar(10),
    "ciudad" nvarchar(30),
    "pais" nvarchar(50),
    "region" nvarchar(50),
    "codigo_postal" nvarchar(10),
    "telefono" nvarchar(20),
    "linea_direccion1" nvarchar(50),
    "linea_direccion2" nvarchar(50)
)

CREATE TABLE "Destino CategoriaST" (
    "Id_Categoria" int,
    "Desc_Categoria" nvarchar(50),
    "descripcion_texto" nvarchar(max)
)

CREATE TABLE "Destino TimeST" (
    "Fecha" nvarchar(51)
)

CREATE TABLE "Destino de ClienteST" (
    "ID_cliente" int,
    "nombre_cliente" nvarchar(50),
    "nombre_contacto" nvarchar(30),
    "apellido_contacto" nvarchar(30),
    "telefono" nvarchar(15),
    "fax" nvarchar(15),
    "linea_direccion1" nvarchar(50),
    "linea_direccion2" nvarchar(50),
    "ciudad" nvarchar(50),
    "pais" nvarchar(50)
)

CREATE TABLE "Destino EmpleadoST" (
    "ID_empleado" int,
    "nombre" nvarchar(50),
    "apellido1" nvarchar(50),
    "apellido2" nvarchar(50),
    "extension" nvarchar(10),
    "email" nvarchar(100),
    "ID_oficina" int,
    "ID_jefe" int,
    "puesto" nvarchar(50)
)


---- consultas que utilice en la bd de origen o tablas de origen , claro esta que son muy basicas 
--- profesor mi bd relacional se llama  [jardineria_model_relacional] , por si de pronto no la ve nombrada con el nombre jardineria 
--fue porque yo se lo cambie. 

-- origen cliente

SELECT [ID_cliente]
      ,[nombre_cliente]
      ,[nombre_contacto]
      ,[apellido_contacto]
      ,[telefono]
      ,[fax]
      ,[linea_direccion1]
      ,[linea_direccion2]
      ,[ciudad]
      ,[pais]
  FROM [jardineria_model_relacional].[dbo].[cliente]

--  origen categoria 

SELECT [Id_Categoria]
      ,[Desc_Categoria]
      ,[descripcion_texto]
  FROM [jardineria_model_relacional].[dbo].[Categoria_producto]

-- origen Empleado

SELECT [ID_empleado]
      ,[nombre]
      ,[apellido1]
      ,[apellido2]
      ,[extension]
      ,[email]
      ,[ID_oficina]
      ,[ID_jefe]
      ,[puesto]
  FROM [jardineria_model_relacional].[dbo].[empleado]

-- Origen tiempo 
SELECT [Fecha]
  FROM [jardineria_model_relacional].[dbo].[Destino TimeST]

  -- Origen Oficina 

  SELECT [ID_oficina]
      ,[Descripcion]
      ,[ciudad]
      ,[pais]
      ,[region]
      ,[codigo_postal]
      ,[telefono]
      ,[linea_direccion1]
      ,[linea_direccion2]
  FROM [jardineria_model_relacional].[dbo].[oficina]

  -- origen ventas  --- explico que esta consulta es la que se conoceta con mi bdsteging especificamente en la tabla llamada FACventas 

  SELECT 
    pe.ID_pedido,
    dp.ID_producto,
    pe.ID_cliente,
	pe.fecha_pedido,
    e.ID_empleado,
    e.ID_oficina,
    dp.cantidad,
    dp.precio_unidad,
    (dp.precio_unidad * dp.cantidad * 0.10) AS descuento,
    (dp.precio_unidad * dp.cantidad * 0.19) AS impuesto,
    (dp.precio_unidad * dp.cantidad) - (dp.precio_unidad * dp.cantidad * 0.10) + (dp.precio_unidad * dp.cantidad * 0.19) AS total,
    (dp.precio_unidad * dp.cantidad) AS Fac
FROM detalle_pedido dp
JOIN pedido pe ON dp.ID_pedido = pe.ID_pedido
JOIN cliente c ON pe.ID_cliente = c.ID_cliente
JOIN empleado e ON e.ID_empleado = e.ID_empleado
JOIN oficina o ON e.ID_oficina = o.ID_oficina
JOIN producto p ON dp.ID_producto = p.ID_producto

--origen producto 

SELECT [ID_producto]
      ,[nombre]
      ,[Categoria]
      ,[descripcion]
      ,[cantidad_en_stock]
      ,[precio_venta]
  FROM [jardineria_model_relacional].[dbo].[producto]








