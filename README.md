# 🚀 ScriptBDUniversity

## 📌 Descripción del Proyecto
Este repositorio contiene los respaldos de las bases de datos **Jardinería** y **StagingBD2**, utilizadas en el desarrollo de un modelo dimensional basado en la estructura de un **Data Mart**. El objetivo de este proyecto es mejorar la eficiencia en el análisis de datos de ventas y optimizar la consulta de información a través de un modelo estrella.

## 📂 Contenido del Repositorio
- 📌 **Backup de la base de datos Jardinería**: Respaldo de la base de datos transaccional original.
- 📌 **Backup de la base de datos StagingBD2**: Contiene los datos estructurados en una fase intermedia antes de su integración en el modelo dimensional.
- 📜 **Scripts SQL** para la creación y carga de datos en **StagingBD2**.
- 📖 **Documentación del proyecto**, que incluye el análisis del problema, la propuesta de solución y la descripción del modelo estrella implementado.

## 🎯 Objetivos del Proyecto
1. ✅ **Optimizar el análisis de ventas** mediante la implementación de un modelo dimensional basado en la base de datos Jardinería.
2. 🔄 **Facilitar la migración y transformación de datos** a través de una base intermedia (StagingBD2), reduciendo la carga sobre la base de datos transaccional.
3. 🔍 **Garantizar la integridad y calidad de la información** mediante procesos de limpieza y normalización en la fase de Staging.
4. 💾 **Proporcionar un repositorio con backups y scripts SQL** que permitan la replicación y análisis de los datos.

## 📊 Estructura del Modelo
El modelo propuesto se basa en la implementación de una estructura **estrella**, donde los datos se organizan en una tabla de **hechos** y varias **dimensiones**:

### ⭐ **Tabla de Hechos: Destino de VentasST**
📌 Contiene los datos de transacciones de ventas, incluyendo:
- 📍 ID_pedido, ID_producto, ID_cliente, fecha_pedido, ID_empleado, ID_oficina
- 📊 Cantidad, precio_unidad, descuento, impuesto, total, factor de ajuste (**Fac**)

### 🗂️ **Dimensiones**
- 📦 **DestinoProductoST**: Información de productos y categorías.
- 🏢 **Destino OficinaST**: Datos de las oficinas de la empresa.
- 🏷️ **Destino CategoriaST**: Descripción de las categorías de productos.
- 🕒 **Destino TimeST**: Dimensión de tiempo para análisis temporal de ventas.
- 👥 **Destino de ClienteST**: Información de los clientes.
- 👨‍💼 **Destino EmpleadoST**: Datos de los empleados y jerarquía organizacional.

## ⚙️ Instrucciones de Uso
1. 📂 **Restaurar los backups** en un entorno de base de datos SQL Server o compatible.
2. 🏗️ **Ejecutar los scripts SQL** para crear la estructura de la base de datos Staging.
3. 🔎 **Validar la integridad de los datos** comparando la información transferida desde la base transaccional a Staging.
4. 📈 **Realizar consultas analíticas** sobre el modelo estrella implementado.

## 📎 Anexos
- 💾 **Backup de Jardinería y StagingBD2**.
- 📜 **Scripts SQL de migración y carga de datos**.
- 📖 **Documentación detallada del modelo implementado**.

## ✍️ Autor
Este trabajo ha sido desarrollado como parte del curso de **Bases de Datos 2** en el contexto de la implementación de modelos dimensionales y Data Marts (MARIA JOSE CAUSIL).



