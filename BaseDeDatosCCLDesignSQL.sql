/****** Object:  Table [dbo].[TblPdxWR_FacturacionPorCliente]    Script Date: 02/08/2021 08:33:02 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TblPdxWR_FacturacionPorCliente](
	[IdFacturacionPorCliente] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](100) NULL,
	[Cliente] [varchar](100) NULL,
	[Mes] [decimal](18, 2) NULL,
	[Dia] [decimal](18, 2) NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK__tbl_fact__821182A30C4D0938] PRIMARY KEY CLUSTERED 
(
	[IdFacturacionPorCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TblPdxWR_LineaNegocio]    Script Date: 02/08/2021 08:40:58 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TblPdxWR_LineaNegocio](
	[Id_LN] [int] IDENTITY(1,1) NOT NULL,
	[LineaNegocio] [varchar](500) NULL,
	[Objetivo] [decimal](18, 2) NULL,
	[Oportunidades] [decimal](18, 2) NULL,
	[BackLog] [decimal](18, 2) NULL,
	[FacturadoMes] [decimal](18, 2) NULL,
	[FacturadoDia] [decimal](18, 2) NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK__tbl_line__01499E3FA095FBD9] PRIMARY KEY CLUSTERED 
(
	[Id_LN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TblPdxWR_Parameters]    Script Date: 02/08/2021 08:50:56 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TblPdxWR_Parameters](
	[IdParametro] [int] NOT NULL,
	[Variable] [varchar](50) NULL,
	[Valor] [varchar](max) NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Status] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TblPdxWR_Top15]    Script Date: 02/08/2021 08:53:01 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TblPdxWR_Top15](
	[Id_Top15] [int] IDENTITY(1,1) NOT NULL,
	[CardCode] [varchar](max) NULL,
	[CardName] [varchar](max) NULL,
	[VentasTotales] [float] NULL,
	[Fecha] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TblPdxWR_TotalFacturadoAnual]    Script Date: 02/08/2021 08:53:46 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TblPdxWR_TotalFacturadoAnual](
	[Id_TFA] [int] IDENTITY(1,1) NOT NULL,
	[Objetivo] [varchar](500) NULL,
	[Acumulado] [varchar](100) NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_TFA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TblPdxWR_TotalOrdenesAbiertas]    Script Date: 02/08/2021 08:58:57 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TblPdxWR_TotalOrdenesAbiertas](
	[Id_TOA] [int] IDENTITY(1,1) NOT NULL,
	[Importe] [varchar](100) NULL,
	[NoOrdenes] [int] NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_TOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TblPdxWR_VentasMensualesVendedor]    Script Date: 02/08/2021 08:59:27 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TblPdxWR_VentasMensualesVendedor](
	[Id_VM] [int] IDENTITY(1,1) NOT NULL,
	[NoVendedor] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[Enero] [decimal](10, 2) NULL,
	[Febrero] [decimal](10, 2) NULL,
	[Marzo] [decimal](10, 2) NULL,
	[Abril] [decimal](10, 2) NULL,
	[Mayo] [decimal](10, 2) NULL,
	[Junio] [decimal](10, 2) NULL,
	[Julio] [decimal](10, 2) NULL,
	[Agosto] [decimal](10, 2) NULL,
	[Septiembre] [decimal](10, 2) NULL,
	[Octubre] [decimal](10, 2) NULL,
	[Noviembre] [decimal](10, 2) NULL,
	[Diciembre] [decimal](10, 2) NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK__TblPdxWR__5257D23DC65D7588] PRIMARY KEY CLUSTERED 
(
	[Id_VM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


/* Disparadores */

/****** SpPdxWR_VentasMensualesVendedor ********/

USE [CCL_DESING2021]
GO

/****** Object:  StoredProcedure [dbo].[SpPdxWR_VentasMensualesVendedor]    Script Date: 02/08/2021 03:48:31 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--	=========================================================================  
--	Proyecto:			Sap Business One
--	Objetivo:			Envia el Reporte de Ventas de Checkpoint Diario
--	Autor:				CloudSphere SRL de CV
--	Fecha de creación:	2018-05-15
--	Versión:			1.0.0.0
--	----------------------- Histórico de Modificaciones ---------------------
--	Modificación:			
--	Modificó:				
--	Fecha de modificación:	
--	Versión:					
--	Observaciones:			
--	=========================================================================

CREATE PROCEDURE [dbo].[SpPdxWR_VentasMensualesVendedor] 
AS
BEGIN
	
	SET NOCOUNT ON

	DECLARE
	@FechaInicialYear Date,
	@FechaFinalYear Date

		--Asignación de fechas para obetner calculos mensuales
		SET @FechaInicialYear =  CAST((CAST(YEAR(GETDATE()) AS VARCHAR) + '-01-01 00:00:00.000') AS DATE)
		SET @FechaFinalYear = GETDATE() 

		/***FACTURADO EN EL MES POR LINEA DE NEGOCIO***/
		IF OBJECT_ID('tempdb..#VentasVendedorDetalle') IS NOT NULL
			DROP TABLE #VentasVendedorDetalle

		CREATE TABLE #VentasVendedorDetalle (Vendedor Varchar(50),
											 Mes_Venta Int,
											 Invoices numeric(19,6), 
											 Invoices_Y numeric(19,6), 
											 Invoices_C numeric(19,6), 
											 CreditNotes numeric(19,6), 
											 CreditNotes_Y numeric(19,6), 
											 CreditNotes_C numeric(19,6))

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.SlpCode, MONTH(B.DocDate), SUM(LineTotal) AS Invoices,  0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--Invoices
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'N' AND B.ObjType = 13
			GROUP BY B.SlpCode, MONTH(B.DocDate))

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.SlpCode, MONTH(B.DocDate), 0 AS Invoices, SUM(LineTotal) AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C	--Invoices_Y
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'Y' AND B.ObjType = 13
			GROUP BY B.SlpCode, MONTH(B.DocDate))

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.SlpCode, MONTH(B.DocDate), 0 AS Invoices,  0 AS Invoices_Y, SUM(LineTotal) AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--Invoices_C
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'C' AND B.ObjType = 13
			GROUP BY B.SlpCode, MONTH(B.DocDate))

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.SlpCode, MONTH(B.DocDate), 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, SUM(LineTotal) AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--CreditNotes
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'N' AND B.ObjType = 14 AND (A.AcctCode <> '213001' OR (A.AcctCode = '213001' AND B.DocType = 'S'))
			GROUP BY B.SlpCode, MONTH(B.DocDate))

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.SlpCode, MONTH(B.DocDate), 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, SUM(LineTotal) AS CreditNotes_Y, 0 AS CreditNotes_C		--CreditNotes_Y
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'Y' AND B.ObjType = 14 
			GROUP BY B.SlpCode, MONTH(B.DocDate))

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.SlpCode, MONTH(B.DocDate), 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, SUM(LineTotal) AS CreditNotes_C		--CreditNotes_C
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'C' AND B.ObjType = 14  
			GROUP BY B.SlpCode, MONTH(B.DocDate))

			--SELECT * FROM #VentasVendedorDetalle

			IF OBJECT_ID('tempdb..#VentasVendedor') IS NOT NULL
				DROP TABLE #VentasVendedor

			CREATE TABLE #VentasVendedor (Vendedor Varchar(50),
										  Mes_Venta Int,
										  Invoices numeric(19,6), 
										  Invoices_Y numeric(19,6), 
										  Invoices_C numeric(19,6), 
									      CreditNotes numeric(19,6), 
										  CreditNotes_Y numeric(19,6), 
										  CreditNotes_C numeric(19,6))

			INSERT INTO #VentasVendedor (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			SELECT Vendedor, Mes_Venta,
				   SUM(Invoices), SUM(Invoices_Y), SUM(Invoices_C), SUM(CreditNotes), SUM(CreditNotes_Y), SUM(CreditNotes_C)
			FROM #VentasVendedorDetalle
			GROUP BY Vendedor, Mes_Venta
			ORDER BY Vendedor

			--SELECT * FROM #VentasVendedor

			--Creamos una tabla temporal e insertamos los totales de cada cliente para obtener el total facturado en el mes
			IF OBJECT_ID('tempdb..#VentasVendedorMensual') IS NOT NULL
				DROP TABLE #VentasVendedorMensual

			CREATE TABLE #VentasVendedorMensual (Vendedor Varchar(50),
												 Mes_Venta Int, 
												 TotalAnual numeric(19,6))
										      
            -- Insertamos el acumulado de ventas Mensuales
			INSERT INTO #VentasVendedorMensual (Vendedor, Mes_Venta, TotalAnual)
			SELECT Vendedor, Mes_Venta, ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) AS TotalMes
			FROM #VentasVendedor
			ORDER BY Vendedor

			--SELECT A.Vendedor,
			--	   CASE B.SlpName
			--	    WHEN 'ADRIANA GONZALEZ' THEN 'FIELDSERVICE'
			--		WHEN '-Ningún empleado del departamento de ventas-'  THEN 'OTROS'
			--		ELSE B.SlpName
			--	   END AS Nombre,
			--	   Mes_Venta AS Mes_Venta,
			--	   FORMAT(A.TotalAnual, 'C', 'en-us') AS Total
			--FROM #VentasVendedorMensual A
			--INNER JOIN OSLP B ON (B.SlpCode = A.Vendedor)
			--WHERE TotalAnual > 0
			--ORDER BY 1, TotalAnual DESC

			--Creamos una tabla temporal e insertamos los totales de cada cliente para obtener el total facturado en el mes
			IF OBJECT_ID('tempdb..#VentasVendedorFinal') IS NOT NULL
				DROP TABLE #VentasVendedorFinal

			CREATE TABLE #VentasVendedorFinal (Vendedor Varchar(50),
											   TotalEne numeric(19,6),
											   TotalFeb numeric(19,6),
											   TotalMar numeric(19,6),
											   TotalAbr numeric(19,6),
											   TotalMay numeric(19,6),
											   TotalJun numeric(19,6),
											   TotalJul numeric(19,6),
											   TotalAgo numeric(19,6),
											   TotalSep numeric(19,6),
											   TotalOct numeric(19,6),
											   TotalNov numeric(19,6),
											   TotalDic numeric(19,6))

            -- Insertamos el acumulado de ventas Mensuales
			INSERT INTO #VentasVendedorFinal (Vendedor, TotalEne, TotalFeb, TotalMar, TotalAbr, TotalMay, TotalJun, TotalJul, TotalAgo, TotalSep, TotalOct, TotalNov, TotalDic)
			SELECT Vendedor,
				   CASE Mes_Venta WHEN 1 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 2 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 3 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 4 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 5 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 6 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 7 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 8 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 9 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 10 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 11 THEN TotalAnual ELSE 0 END,
				   CASE Mes_Venta WHEN 12 THEN TotalAnual ELSE 0 END
			FROM #VentasVendedorMensual
			WHERE TotalAnual > 0
			ORDER BY 1, TotalAnual DESC

			--SELECT * FROM #VentasVendedorFinal

			--SELECT A.Vendedor AS #VENDEDOR,
			--       CASE B.SlpName
			--	      WHEN 'ADRIANA GONZALEZ' THEN 'FIELDSERVICE'
			--		  WHEN '-Ningún empleado del departamento de ventas-'  THEN 'OTROS'
			--	      ELSE B.SlpName
			--	   END AS NOMBRE, 
			--	   SUM(TotalEne) AS ENERO, 
			--	   SUM(TotalFeb) AS FEBRERO, 
			--	   SUM(TotalMar) AS MARZO, 
			--	   SUM(TotalAbr) AS ABRIL, 
			--	   SUM(TotalMay) AS MAYO, 
			--	   SUM(TotalJun) AS JUNIO, 
			--	   SUM(TotalJul) AS JULIO, 
			--	   SUM(TotalAgo) AS AGOSTO, 
			--	   SUM(TotalSep) AS SEPTIEMBRE, 
			--	   SUM(TotalOct) AS OCTUBRE, 
			--	   SUM(TotalNov) AS NOVIEMBRE, 
			--	   SUM(TotalDic) AS DICIEMBRE
			--FROM #VentasVendedorFinal A
			--INNER JOIN OSLP B ON (B.SlpCode = A.Vendedor)
			--GROUP BY A.Vendedor, B.SlpName

			--INSERT INTO [dbo].[TblPdxWR_VentasMensualesVendedor]
   --        ([NoVendedor],[Nombre],[Enero],[Febrero],[Marzo],[Abril],[Mayo],[Junio],[Julio],[Agosto],[Septiembre],[Octubre],[Noviembre],[Diciembre],[Fecha])
			--SELECT A.Vendedor AS #VENDEDOR,
			--       CASE B.SlpName
			--	      WHEN 'ADRIANA GONZALEZ' THEN 'FIELDSERVICE'
			--		  WHEN '-Ningún empleado del departamento de ventas-'  THEN 'OTROS'
			--	      ELSE B.SlpName
			--	   END AS NOMBRE, 
			--	   SUM(TotalEne) AS ENERO, 
			--	   SUM(TotalFeb) AS FEBRERO, 
			--	   SUM(TotalMar) AS MARZO, 
			--	   SUM(TotalAbr) AS ABRIL, 
			--	   SUM(TotalMay) AS MAYO, 
			--	   SUM(TotalJun) AS JUNIO, 
			--	   SUM(TotalJul) AS JULIO, 
			--	   SUM(TotalAgo) AS AGOSTO, 
			--	   SUM(TotalSep) AS SEPTIEMBRE, 
			--	   SUM(TotalOct) AS OCTUBRE, 
			--	   SUM(TotalNov) AS NOVIEMBRE, 
			--	   SUM(TotalDic) AS DICIEMBRE,
			--	   CONVERT (DATE, GETDATE()) 
			--FROM #VentasVendedorFinal A
			--INNER JOIN OSLP B ON (B.SlpCode = A.Vendedor)
			--GROUP BY A.Vendedor, B.SlpName

			--SET NOCOUNT OFF
					
END


GO

/****** SpPdxWR_EnviaReporteVentasDesign *******/
USE [CCL_DESING2021]
GO

/****** Object:  StoredProcedure [dbo].[SpPdxWR_EnviaReporteVentasDesign]    Script Date: 02/08/2021 03:49:45 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--	=========================================================================  
--	Proyecto:			Sap Business One
--	Objetivo:			Envia el Reporte de Ventas de Design Diario
--	Autor:				Paradox ET SRL de CV
--	Fecha de creación:	2019-10-01
--	Versión:			1.0.0.0
--	----------------------- Histórico de Modificaciones ---------------------
--	Modificación:			
--	Modificó:				
--	Fecha de modificación:	
--	Versión:					
--	Observaciones:			
--	=========================================================================

CREATE PROCEDURE [dbo].[SpPdxWR_EnviaReporteVentasDesign] 
AS
BEGIN
	SET NOCOUNT ON

			DECLARE @FechaInicialYear Date,
					@FechaFinalYear Date,
					@FechaInicialMonth Date,
					@FechaFinalMonth Date,
					@FechaInicialDay Date,
					@FechaFinalDay Date,
					@FechaInicialBackLog Date,
					@FechaFinalBackLog Date,
					@FechaInicialPastMonth Date,
					@FechaFinalPastMonth Date,
					@Registros Int,
					@Dia Int 


				SELECT @Dia = DATEPART(dw,GETDATE()) 

		IF @Dia > 1 AND @Dia < 7

		BEGIN

			--Asignación de fechas para obtener calculos anuales
			SET @FechaInicialYear = CAST((CAST(YEAR(GETDATE()) AS VARCHAR) + '-01-01 00:00:00.000') AS DATE)
			SET @FechaFinalYear = GETDATE()

			--Asignación de fechas para obetner calculos mensuales
			SET @FechaInicialMonth = CONVERT(date, DATENAME(YEAR,GETDATE()) + '-' + CONVERT(VARCHAR(2),MONTH(GETDATE())) + '-1')
			SET @FechaFinalMonth = GETDATE() 		

			--Asignación de fechas para obetner calculos diarios
			SET @FechaInicialDay = GETDATE() 
			SET @FechaFinalDay = GETDATE() 

			--Asignación de fecha para obtener el BackLog del periodo (Toto el mes actual)
			SET @FechaInicialBackLog = CONVERT(date, DATENAME(YEAR,GETDATE()) + '-' + CONVERT(VARCHAR(2),MONTH(GETDATE())) + '-1')
			SET @FechaFinalBackLog = EOMONTH (GETDATE())
		
		--Asignación de fechas para obetner calculos del mes anterior
			SET @FechaInicialPastMonth = DATEADD(mm,-1,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0))
			SET @FechaFinalPastMonth = DATEADD(ms,-3,DATEADD(mm,0,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0))) 


			/*** (INICIO) FACTURACIÓN POR CLIENTE (INICIO) ***/

			/*** (INICIO) PASO 1 - CALCULO MENSUAL (INICIO) ***/
			IF OBJECT_ID('tempdb..#VentasMensuales_Detalle') IS NOT NULL
			   DROP TABLE #VentasMensuales_Detalle

			CREATE TABLE #VentasMensuales_Detalle (CardCode nvarchar(15), 
												   CardName nvarchar(100),
												   Invoices numeric(19,6), 
												   Invoices_Y numeric(19,6), 
												   Invoices_C numeric(19,6), 
												   CreditNotes numeric(19,6), 
											       CreditNotes_Y numeric(19,6), 
												   CreditNotes_C numeric(19,6))

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, SUM(LineTotal) AS Invoices,  0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--Invoices
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialMonth AND @FechaFinalMonth AND
				  B.CANCELED = 'N' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, 0 AS Invoices, SUM(LineTotal) AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C	--Invoices_Y
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialMonth AND @FechaFinalMonth AND
				  B.CANCELED = 'Y' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices,  0 AS Invoices_Y, SUM(LineTotal) AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--Invoices_C
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialMonth AND @FechaFinalMonth AND
				  B.CANCELED = 'C' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, SUM(LineTotal) AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--CreditNotes
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialMonth AND @FechaFinalMonth AND
				  B.CANCELED = 'N' AND B.ObjType = 14 AND A.AcctCode NOT IN ('3301-0300') --Aplica solo para Design			
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, SUM(LineTotal) AS CreditNotes_Y, 0 AS CreditNotes_C		--CreditNotes_Y
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialMonth AND @FechaFinalMonth AND
				  B.CANCELED = 'Y' AND B.ObjType = 14 
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, SUM(LineTotal) AS CreditNotes_C		--CreditNotes_C
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialMonth AND @FechaFinalMonth AND
				  B.CANCELED = 'C' AND B.ObjType = 14  
			GROUP BY B.CardCode, B.CardName)

			IF OBJECT_ID('tempdb..#VentasMensuales') IS NOT NULL
			DROP TABLE #VentasMensuales

			CREATE TABLE #VentasMensuales (CardCode nvarchar(15), 
										   CardName nvarchar(100), 
										   Invoices numeric(19,6), 
										   Invoices_Y numeric(19,6), 
										   Invoices_C numeric(19,6), 
										   CreditNotes numeric(19,6), 
										   CreditNotes_Y numeric(19,6), 
										   CreditNotes_C numeric(19,6))

			INSERT INTO #VentasMensuales (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			SELECT CardCode, CardName, SUM(Invoices), SUM(Invoices_Y), SUM(Invoices_C), SUM(CreditNotes), SUM(CreditNotes_Y), SUM(CreditNotes_C)
			FROM #VentasMensuales_Detalle
			GROUP BY CardCode, CardName
			ORDER BY CardCode, CardName

				--
					/*PRUEBA - Detalle de Ventas Mensuales por Cliente*/
					SELECT CardCode, CardName,
						   FORMAT(((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)), 'C', 'en-us') AS Total, 
						   FORMAT(Invoices, 'C', 'en-us') AS Invoices,
						   FORMAT(Invoices_Y, 'C', 'en-us') AS Invoices_Y, 
						   FORMAT(Invoices_C, 'C', 'en-us') AS Invoices_C, 
						   FORMAT(CreditNotes, 'C', 'en-us')AS CreditNotes,
						   FORMAT(CreditNotes_Y, 'C', 'en-us')AS CreditNotes,	
 						   FORMAT(CreditNotes_C, 'C', 'en-us') AS CreditNotes_C
					FROM #VentasMensuales 
				--
			
			/*** (FIN) PASO 1 - CALCULO MENSUAL (FIN) ***/

/*** (INICIO) PASO 2 - CALCULO DIARIO (INICIO) ***/
			IF OBJECT_ID('tempdb..#VentasDiarias_Detalle') IS NOT NULL
			DROP TABLE #VentasDiarias_Detalle

			CREATE TABLE #VentasDiarias_Detalle (CardCode nvarchar(15), 
												 CardName nvarchar(100), 
												 Invoices numeric(19,6), 
												 Invoices_Y numeric(19,6), 
												 Invoices_C numeric(19,6), 
												 CreditNotes numeric(19,6), 
											     CreditNotes_Y numeric(19,6), 
												 CreditNotes_C numeric(19,6))

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, SUM(LineTotal) AS Invoices,  0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--Invoices
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialDay AND @FechaFinalDay AND
				  B.CANCELED = 'N' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, 0 AS Invoices, SUM(LineTotal) AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C	--Invoices_Y
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialDay AND @FechaFinalDay AND
				  B.CANCELED = 'Y' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices,  0 AS Invoices_Y, SUM(LineTotal) AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--Invoices_C
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialDay AND @FechaFinalDay AND
				  B.CANCELED = 'C' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, SUM(LineTotal) AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--CreditNotes
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialDay AND @FechaFinalDay AND
				  B.CANCELED = 'N' AND B.ObjType = 14 AND A.AcctCode NOT IN ('3301-0300') --Aplica solo para Design		
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, SUM(LineTotal) AS CreditNotes_Y, 0 AS CreditNotes_C		--CreditNotes_Y
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialDay AND @FechaFinalDay AND
				  B.CANCELED = 'Y' AND B.ObjType = 14 
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, SUM(LineTotal) AS CreditNotes_C		--CreditNotes_C
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialDay AND @FechaFinalDay AND
				  B.CANCELED = 'C' AND B.ObjType = 14  
			GROUP BY B.CardCode, B.CardName)


			IF OBJECT_ID('tempdb..#VentasDiarias') IS NOT NULL
			DROP TABLE #VentasDiarias

			CREATE TABLE #VentasDiarias (CardCode nvarchar(15), 
										 CardName nvarchar(100),
										 Invoices numeric(19,6), 
										 Invoices_Y numeric(19,6), 
										 Invoices_C numeric(19,6), 
										 CreditNotes numeric(19,6), 
										 CreditNotes_Y numeric(19,6), 
										 CreditNotes_C numeric(19,6))

			INSERT INTO #VentasDiarias (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			SELECT CardCode, CardName, SUM(Invoices), SUM(Invoices_Y), SUM(Invoices_C), SUM(CreditNotes), SUM(CreditNotes_Y), SUM(CreditNotes_C)
			FROM #VentasDiarias_Detalle
			GROUP BY CardCode, CardName
			ORDER BY CardCode, CardName

				/*
					/*Detalle de Ventas Diarias por Cliente*/		
					SELECT CardCode, CardName, 
						   FORMAT(((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)), 'C', 'en-us') AS Total, 
						   FORMAT(Invoices, 'C', 'en-us') AS Invoices,
						   FORMAT(Invoices_Y, 'C', 'en-us') AS Invoices_Y, 
						   FORMAT(Invoices_C, 'C', 'en-us') AS Invoices_C, 
						   FORMAT(CreditNotes, 'C', 'en-us')AS CreditNotes,
						   FORMAT(CreditNotes_Y, 'C', 'en-us')AS CreditNotes,	
 						   FORMAT(CreditNotes_C, 'C', 'en-us') AS CreditNotes_C
					FROM #VentasDiarias
					ORDER BY CardCode
				
				*/

			/*** (FIN) PASO 2 - CALCULO DIARIO (FIN) ***/


			--Creamos una tabla temporal e insertamos los totales de cada cliente para obtener el total facturado en el mes
			IF OBJECT_ID('tempdb..#TotalMensualDiario') IS NOT NULL
			DROP TABLE #TotalMensualDiario

			CREATE TABLE #TotalMensualDiario (CardCode nvarchar(15), 
											  CardName nvarchar(100),
											  Zona nvarchar(20),
									          TotalMesInvoices numeric(19,6),
										      TotalDiaInvoices numeric(19,6), 
											  TotalMesCreditNotes numeric(19,6), 
											  TotalDiaCreditNotes numeric(19,6))

            -- Insertamos el acumulado de Ventas Mensuales
			INSERT INTO #TotalMensualDiario (CardCode, CardName, TotalMesInvoices, TotalMesCreditNotes)
			SELECT CardCode, CardName,
				   ((Invoices + Invoices_Y)-(Invoices_C)) AS TotalMesSinRebate,
				   ((CreditNotes_C)-(CreditNotes+CreditNotes_Y)) AS TotalMesCreditNotes
			FROM #VentasMensuales
			WHERE ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) <> 0
			ORDER BY CardCode

			-- Insertamos el acumulado de Ventas Diarias
			INSERT INTO #TotalMensualDiario (CardCode, CardName, TotalDiaInvoices, TotalDiaCreditNotes)
			SELECT CardCode, CardName,
				   ((Invoices + Invoices_Y)-(Invoices_C)) AS TotalDiaSinRebate,
				   ((CreditNotes_C)-(CreditNotes+CreditNotes_Y)) AS TotalDiaCreditNotes
			FROM #VentasDiarias
			WHERE ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) <> 0
			ORDER BY CardCode
		
			/*Coloca la ZONA a cada uno de los clientes que tuvo Ventas*/
			UPDATE
				#TotalMensualDiario
			SET
				Zona = C.GroupName
    		FROM
				#TotalMensualDiario A
			LEFT JOIN OCRD	B ON A.CardCode = B.CardCode COLLATE database_default
			LEFT JOIN OCRG	C ON B.GroupCode = C.GroupCode
			

			-- (TABLA 4) FACTURACIÓN POR CLIENTE --

			/*
			SELECT CardCode AS 'Cliente', 
					CardName AS 'Descripción', 
					Zona,
					FORMAT(SUM(TotalMesInvoices), 'C', 'en-us') AS 'Acumulado Mes', 
					FORMAT(SUM(TotalDiaInvoices), 'C', 'en-us') AS 'Facturado Hoy'
			FROM #TotalMensualDiario
			GROUP BY CardCode, CardName, Zona
			ORDER BY SUM(TotalMesInvoices) DESC		
			*/

			/*** (FIN) FACTURACIÓN POR CLIENTE (FIN) ***/


			/*** (INICIO) TOTAL ORDENES ABIERTAS (INICIO) ***/

			-- (TABLA 2) TOTAL ORDENES ABIERTAS (PARA VALIDAR) --
			/*
			SELECT (SELECT FORMAT(SUM(LineTotal),'C','en-us') 
					FROM RDR1 
					WHERE LineStatus = 'O') AS 'Importe',
				    COUNT(*)  AS 'No. Ord.'
			FROM ORDR 
			WHERE DocStatus = 'O'
			*/
			/*** (FIN) TOTAL ORDENES ABIERTAS (FIN)***/


			/*** (INICIO) TOTAL FACTURADO EN EL AÑO (INICIO) ***/


			IF OBJECT_ID('tempdb..#VentasAnuales_Detalle') IS NOT NULL
			DROP TABLE #VentasAnuales_Detalle

			CREATE TABLE #VentasAnuales_Detalle (CardCode nvarchar(15), 
												 CardName nvarchar(100), 
												 Invoices numeric(19,6), 
												 Invoices_Y numeric(19,6), 
												 Invoices_C numeric(19,6), 
												 CreditNotes numeric(19,6), 
											     CreditNotes_Y numeric(19,6), 
												 CreditNotes_C numeric(19,6))

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, SUM(LineTotal) AS Invoices,  0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--Invoices
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'N' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, 0 AS Invoices, SUM(LineTotal) AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C	--Invoices_Y
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'Y' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices,  0 AS Invoices_Y, SUM(LineTotal) AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--Invoices_C
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'C' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, SUM(LineTotal) AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		--CreditNotes
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'N' AND B.ObjType = 14 AND A.AcctCode NOT IN ('630035','630058') --Aplica solo para Avery
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, SUM(LineTotal) AS CreditNotes_Y, 0 AS CreditNotes_C		--CreditNotes_Y
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'Y' AND B.ObjType = 14 
			GROUP BY B.CardCode, B.CardName)

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, SUM(LineTotal) AS CreditNotes_C		--CreditNotes_C
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN @FechaInicialYear AND @FechaFinalYear AND
				  B.CANCELED = 'C' AND B.ObjType = 14  
			GROUP BY B.CardCode, B.CardName)


			IF OBJECT_ID('tempdb..#VentasAnuales') IS NOT NULL
			DROP TABLE #VentasAnuales

			CREATE TABLE #VentasAnuales (CardCode nvarchar(15), 
										 CardName nvarchar(100),
										 Invoices numeric(19,6), 
										 Invoices_Y numeric(19,6), 
										 Invoices_C numeric(19,6), 
										 CreditNotes numeric(19,6), 
										 CreditNotes_Y numeric(19,6), 
										 CreditNotes_C numeric(19,6))

			INSERT INTO #VentasAnuales (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			SELECT CardCode, CardName, SUM(Invoices), SUM(Invoices_Y), SUM(Invoices_C), SUM(CreditNotes), SUM(CreditNotes_Y), SUM(CreditNotes_C)
			FROM #VentasAnuales_Detalle
			GROUP BY CardCode, CardName
			ORDER BY CardCode, CardName


			--Creamos una tabla temporal e insertamos los totales de cada cliente para obtener el total facturado en el mes
			IF OBJECT_ID('tempdb..#TotalAnual') IS NOT NULL
			DROP TABLE #TotalAnual

			CREATE TABLE #TotalAnual (CardCode nvarchar(15), 
									  CardName nvarchar(100),
									  Zona nvarchar(20),
									  TotalAnual numeric(19,6))

            -- Insertamos el acumulado de Ventas Mensuales
			INSERT INTO #TotalAnual (CardCode, CardName, TotalAnual)
			SELECT CardCode, CardName,
				   ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) AS TotalAnual
			FROM #VentasAnuales
			WHERE ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) <> 0
			ORDER BY CardCode

			--Solo validación 
			--SELECT * FROM #TotalAnual

			/*** (FIN) TOTAL FACTURADO EN EL AÑO (FIN) ***/
			
			--  (TABLA 3) TOTAL ANUAL  (PARA VALIDAR)--
			/*
			SELECT TOP 1
					FORMAT((SELECT TOP 1 U_C_OBJETIVOA FROM [@U_OBJETIVOA]), 'C', 'en-us') AS 'Objetivo Anual',
					FORMAT((SELECT SUM(TotalAnual) FROM #TotalAnual), 'C', 'en-us') AS 'Acumulado'
			FROM #TotalMensualDiario		
			*/

			--  TOTALES POR ZONA BACKEND  --
			-- Creamos la tabla principal de saldos por Linea de Negocio
	 		IF OBJECT_ID('tempdb..#TotalZona') IS NOT NULL
			DROP TABLE #TotalZona

			CREATE TABLE #TotalZona (Zona NVARCHAR(50), 
									 Objetivo NUMERIC(19,6), 
									 BackLog NUMERIC(19,6), 
									 FacturadoMes NUMERIC(19,6), 
									 FacturadoDia NUMERIC(19,6),
									 CreditNotesMes NUMERIC(19,6),
									 CreditNotesDia NUMERIC(19,6))

									 											    
			INSERT INTO #TotalZona (Zona, Objetivo, FacturadoMes, FacturadoDia, CreditNotesMes, CreditNotesDia)
			SELECT  B.Name AS 'Zona',
					ISNULL(B.U_C_OBJETIVO,0), 
					SUM(TotalMesInvoices), 
					SUM(TotalDiaInvoices),
					SUM(TotalMesCreditNotes),
					SUM(TotalDiaCreditNotes)
			FROM #TotalMensualDiario A
			RIGHT JOIN [@U_OBJETIVO] B ON A.ZONA = B.NAME COLLATE database_default
			GROUP BY B.Name, B.U_C_OBJETIVO


			-- Insertamos los valores de BACKLOG a la tabla Principal de Linea de Negocio

				-- Creamos la tabla para agrupar el BackLog
				IF OBJECT_ID('tempdb..#TotalBackLog') IS NOT NULL
				DROP TABLE #TotalBackLog

				CREATE TABLE #TotalBackLog (Zona NVARCHAR(50), 
											BackLog NUMERIC(19,6))


				INSERT INTO #TotalBackLog (Zona, BackLog)
					(SELECT T3.[GroupName], SUM((T1.[LineTotal]/T1.[Quantity])*T1.[OpenQty]) AS 'BackLog'
					FROM ODLN T0  
					INNER JOIN DLN1 T1 ON T0.[DocEntry] = T1.[DocEntry] 
					INNER JOIN OCRD T2 ON T0.[CardCode] = T2.[CardCode] 
					INNER JOIN OCRG T3 ON T2.[GroupCode] = T3.[GroupCode]
					WHERE T1.[LineStatus] = 'O'
					GROUP BY T3.[GroupName]
					UNION
					SELECT T3.[GroupName], SUM((T1.[LineTotal]/T1.[Quantity])*T1.[OpenQty]) AS 'BackLog'
					FROM ORDR T0  
					INNER JOIN RDR1 T1 ON T0.[DocEntry] = T1.[DocEntry] 
					INNER JOIN OCRD T2 ON T0.[CardCode] = T2.[CardCode] 
					INNER JOIN OCRG T3 ON T2.[GroupCode] = T3.[GroupCode] 
					WHERE T0.[U_FechaReal] >=@FechaInicialBackLog and T0.[U_FechaReal] <=@FechaFinalBackLog
						  AND (T0.U_BackOrder IS NULL OR T0.U_BackOrder = 'N') 
					GROUP BY T3.[GroupName])


				INSERT INTO #TotalZona (Zona, BackLog)
					SELECT Zona, SUM(BackLog)
					FROM #TotalBackLog
					GROUP BY Zona
			--** **

			--  (TABLA 1) TOTALES POR ZONA FRONTEND (PARA VALIDAR)--
			/*
			SELECT 	Zona AS 'Zona',
					SUM(Objetivo) AS 'Objetivo',
					SUM(BackLog) AS 'BackLog', 
					SUM(FacturadoMes) AS 'Facturado en el Mes sin Rebate', 
					SUM(FacturadoDia) AS 'Facturado en el Dia sin Rebate'
			FROM #TotalZona
			GROUP BY Zona
			ORDER BY Zona
			*/


--EXEC SpPdxWR_EnviaReporteVentasDesign


		END
	SET NOCOUNT OFF
END

GO




