RetailPro - Análisis Comercial y Dashboard Ejecutivo
Descripción del proyecto
RetailPro es un proyecto desarrollado en el marco de un curso de Data Analytics. Su objetivo es analizar información de ventas, clientes, productos y categorías para identificar patrones de negocio y generar información útil para la toma de decisiones.
A través de consultas SQL y visualizaciones en Power BI, se busca responder preguntas de negocio relacionadas con el rendimiento comercial, la facturación, las ventas por categoría y el comportamiento de los clientes.
Objetivo de negocio
Identificar qué categorías de productos impulsan el crecimiento de las ventas en la Región Sur y cuál es su impacto en la facturación total de la empresa.
Herramientas utilizadas
•	SQL Server
•	SQL Server Management Studio (SSMS)
•	Power BI Desktop
•	Git y GitHub
Estructura del repositorio
RetailPro/
│
├── scripts/
│   ├── nombres de entregas hechas
│
├── powerbi/
│   nombres de entregas hechas
│
├── documentacion/
Nombres de entregas hechas
│
└── README.md
Cómo ejecutar los scripts SQL
1. Crear la base de datos
Abrir SQL Server Management Studio y crear una nueva base de datos:
CREATE DATABASE RetailPro;
GO
USE RetailPro;
2. Ejecutar los scripts de creación
Ejecutar el archivo:
creacion_tablas.sql
para generar las tablas necesarias del proyecto.
3. Cargar los datos
Ejecutar:
carga_datos.sql
para insertar la información de clientes, productos, categorías y ventas.
4. Ejecutar las consultas analíticas
Ejecutar:
consultas_analiticas.sql
para obtener indicadores y responder las preguntas de negocio definidas en el proyecto.
5. Conectar Power BI
1.	Abrir Power BI Desktop.
2.	Seleccionar Obtener datos > SQL Server.
3.	Conectarse a la base de datos RetailPro.
4.	Importar las tablas necesarias.
5.	Crear el modelo de datos y las visualizaciones.
Principales análisis realizados
•	Facturación total por período.
•	Ventas por categoría y producto.
•	Ranking de productos más vendidos.
•	Ticket promedio de ventas.
•	Evolución temporal de las ventas.
•	Análisis de clientes recurrentes.
•	Dashboard ejecutivo en Power BI.
Resultados esperados
El proyecto permite transformar datos transaccionales en información estratégica que facilite la toma de decisiones comerciales y el seguimiento de los indicadores clave del negocio.
Insights obtenidos
Insight 1
Insight 2
Insight 3
Insight 4
El análisis de categorías permitirá identificar cuáles impulsan el crecimiento de las ventas en la Región Sur y cuáles contribuyen en mayor medida a la facturación total, información clave para orientar campañas comerciales y planificación de stock.
Archivo Power BI (.pbix)
Link al archivo PBIX:
Autor
Paloma López
Proyecto académico realizado como parte del curso de Data Analytics.
