/* SQLINES DEMO *** le [dbo].[TblPdxWR_FacturacionPorCliente]    Script Date: 02/08/2021 08:33:02 a.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

/* SET ANSI_PADDING ON */
 

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TblPdxWR_FacturacionPorCliente(
	`IdFacturacionPorCliente` int AUTO_INCREMENT NOT NULL,
	`Codigo` varchar(100) NULL,
	`Cliente` varchar(100) NULL,
	`Mes` decimal(18, 2) NULL,
	`Dia` decimal(18, 2) NULL,
	`Fecha` date NULL,
 CONSTRAINT `PK__tbl_fact__821182A30C4D0938` PRIMARY KEY 
(
	`IdFacturacionPorCliente` ASC
) 
);


/* SET ANSI_PADDING OFF */
 

/* SQLINES DEMO *** le [dbo].[TblPdxWR_LineaNegocio]    Script Date: 02/08/2021 08:40:58 a.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

/* SET ANSI_PADDING ON */
 

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TblPdxWR_LineaNegocio(
	`Id_LN` int AUTO_INCREMENT NOT NULL,
	`LineaNegocio` varchar(500) NULL,
	`Objetivo` decimal(18, 2) NULL,
	`Oportunidades` decimal(18, 2) NULL,
	`BackLog` decimal(18, 2) NULL,
	`FacturadoMes` decimal(18, 2) NULL,
	`FacturadoDia` decimal(18, 2) NULL,
	`Fecha` date NULL,
 CONSTRAINT `PK__tbl_line__01499E3FA095FBD9` PRIMARY KEY 
(
	`Id_LN` ASC
) 
);


/* SET ANSI_PADDING OFF */
 

/* SQLINES DEMO *** le [dbo].[TblPdxWR_Parameters]    Script Date: 02/08/2021 08:50:56 a.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

/* SET ANSI_PADDING ON */
 

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TblPdxWR_Parameters(
	`IdParametro` int NOT NULL,
	`Variable` varchar(50) NULL,
	`Valor` Longtext NULL,
	`Descripcion` varchar(100) NOT NULL,
	`Status` int NOT NULL
);


/* SET ANSI_PADDING OFF */
 

/* SQLINES DEMO *** le [dbo].[TblPdxWR_Top15]    Script Date: 02/08/2021 08:53:01 a.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

/* SET ANSI_PADDING ON */
 

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TblPdxWR_Top15(
	`Id_Top15` int AUTO_INCREMENT NOT NULL,
	`CardCode` Longtext NULL,
	`CardName` Longtext NULL,
	`VentasTotales` Double NULL,
	`Fecha` date NULL
);


/* SET ANSI_PADDING OFF */
 

/* SQLINES DEMO *** le [dbo].[TblPdxWR_TotalFacturadoAnual]    Script Date: 02/08/2021 08:53:46 a.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

/* SET ANSI_PADDING ON */
 

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TblPdxWR_TotalFacturadoAnual(
	`Id_TFA` int AUTO_INCREMENT NOT NULL,
	`Objetivo` varchar(500) NULL,
	`Acumulado` varchar(100) NULL,
	`Fecha` date NULL,
PRIMARY KEY 
(
	`Id_TFA` ASC
) 
);


/* SET ANSI_PADDING OFF */
 

/* SQLINES DEMO *** le [dbo].[TblPdxWR_TotalOrdenesAbiertas]    Script Date: 02/08/2021 08:58:57 a.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

/* SET ANSI_PADDING ON */
 

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TblPdxWR_TotalOrdenesAbiertas(
	`Id_TOA` int AUTO_INCREMENT NOT NULL,
	`Importe` varchar(100) NULL,
	`NoOrdenes` int NULL,
	`Fecha` date NULL,
PRIMARY KEY 
(
	`Id_TOA` ASC
) 
);


/* SET ANSI_PADDING OFF */
 

/* SQLINES DEMO *** le [dbo].[TblPdxWR_VentasMensualesVendedor]    Script Date: 02/08/2021 08:59:27 a.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

/* SET ANSI_PADDING ON */
 

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE TblPdxWR_VentasMensualesVendedor(
	`Id_VM` int AUTO_INCREMENT NOT NULL,
	`NoVendedor` int NULL,
	`Nombre` varchar(100) NULL,
	`Enero` decimal(10, 2) NULL,
	`Febrero` decimal(10, 2) NULL,
	`Marzo` decimal(10, 2) NULL,
	`Abril` decimal(10, 2) NULL,
	`Mayo` decimal(10, 2) NULL,
	`Junio` decimal(10, 2) NULL,
	`Julio` decimal(10, 2) NULL,
	`Agosto` decimal(10, 2) NULL,
	`Septiembre` decimal(10, 2) NULL,
	`Octubre` decimal(10, 2) NULL,
	`Noviembre` decimal(10, 2) NULL,
	`Diciembre` decimal(10, 2) NULL,
	`Fecha` date NULL,
 CONSTRAINT `PK__TblPdxWR__5257D23DC65D7588` PRIMARY KEY 
(
	`Id_VM` ASC
) 
);


/* SET ANSI_PADDING OFF */


/*** Disparadores ***/

/**** SpPdxWR_VentasMensualesVendedor ********/

USE `CCL_DESING2021`;
 

/* SQLINES DEMO *** redProcedure [dbo].[SpPdxWR_VentasMensualesVendedor]    Script Date: 02/08/2021 03:48:31 p.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 


-- SQLINES DEMO *** ========================================================  
-- SQLINES DEMO *** usiness One
-- SQLINES DEMO ***  el Reporte de Ventas de Checkpoint Diario
-- SQLINES DEMO *** here SRL de CV
-- SQLINES DEMO *** n:	2018-05-15
--	Versión:			1.0.0.0
-- SQLINES DEMO *** ------ Histórico de Modificaciones ---------------------
--	Modificación:			
--	Modificó:				
-- SQLINES DEMO *** ción:	
--	Versión:					
--	Observaciones:			
-- SQLINES DEMO *** ========================================================

-- SQLINES LICENSE FOR EVALUATION USE ONLY
DELIMITER //

CREATE PROCEDURE SpPdxWR_VentasMensualesVendedor() 

	

	DECLARE
	v_FechaInicialYear Date;
	DECLARE v_FechaFinalYear Date;

		--  SQLINES DEMO *** has para obetner calculos mensuales
		SET v_FechaInicialYear =  CAST((CONCAT(CAST(YEAR(NOW(3)) AS CHAR) , '-01-01 00:00:00.000')) AS DATE);
		SET v_FechaFinalYear = NOW(3); 

		/* SQLINES DEMO *** MES POR LINEA DE NEGOCIO***/
		IF OBJECT_ID('tempdb..#VentasVendedorDetalle') IS NOT NULL THEN
			DROP TABLE #VentasVendedorDetalle;
		END IF;

		-- SQLINES LICENSE FOR EVALUATION USE ONLY
		CREATE TEMPORARY TABLE #VentasVendedorDetalle (Vendedor Varchar(50),
											 Mes_Venta Int,
											 Invoices numeric(19,6), 
											 Invoices_Y numeric(19,6), 
											 Invoices_C numeric(19,6), 
											 CreditNotes numeric(19,6), 
											 CreditNotes_Y numeric(19,6), 
											 CreditNotes_C numeric(19,6));

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.SlpCode, MONTH(B.DocDate), SUM(LineTotal) AS Invoices,  0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- Invoices
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'N' AND B.ObjType = 13
			GROUP BY B.SlpCode, MONTH(B.DocDate));

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.SlpCode, MONTH(B.DocDate), 0 AS Invoices, SUM(LineTotal) AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C	-- Invoices_Y
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'Y' AND B.ObjType = 13
			GROUP BY B.SlpCode, MONTH(B.DocDate));

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.SlpCode, MONTH(B.DocDate), 0 AS Invoices,  0 AS Invoices_Y, SUM(LineTotal) AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- Invoices_C
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'C' AND B.ObjType = 13
			GROUP BY B.SlpCode, MONTH(B.DocDate));

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.SlpCode, MONTH(B.DocDate), 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, SUM(LineTotal) AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- CreditNotes
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'N' AND B.ObjType = 14 AND (A.AcctCode <> '213001' OR (A.AcctCode = '213001' AND B.DocType = 'S'))
			GROUP BY B.SlpCode, MONTH(B.DocDate));

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.SlpCode, MONTH(B.DocDate), 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, SUM(LineTotal) AS CreditNotes_Y, 0 AS CreditNotes_C		-- CreditNotes_Y
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'Y' AND B.ObjType = 14 
			GROUP BY B.SlpCode, MONTH(B.DocDate));

			INSERT INTO #VentasVendedorDetalle (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.SlpCode, MONTH(B.DocDate), 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, SUM(LineTotal) AS CreditNotes_C		-- CreditNotes_C
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'C' AND B.ObjType = 14  
			GROUP BY B.SlpCode, MONTH(B.DocDate));

			--  SQLINES DEMO *** tasVendedorDetalle

			IF OBJECT_ID('tempdb..#VentasVendedor') IS NOT NULL THEN
				DROP TABLE #VentasVendedor;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasVendedor (Vendedor Varchar(50),
										  Mes_Venta Int,
										  Invoices numeric(19,6), 
										  Invoices_Y numeric(19,6), 
										  Invoices_C numeric(19,6), 
									      CreditNotes numeric(19,6), 
										  CreditNotes_Y numeric(19,6), 
										  CreditNotes_C numeric(19,6));

			INSERT INTO #VentasVendedor (Vendedor, Mes_Venta, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			SELECT Vendedor, Mes_Venta,
				   SUM(Invoices), SUM(Invoices_Y), SUM(Invoices_C), SUM(CreditNotes), SUM(CreditNotes_Y), SUM(CreditNotes_C)
			FROM #VentasVendedorDetalle
			GROUP BY Vendedor, Mes_Venta
			ORDER BY Vendedor;

			--  SQLINES DEMO *** tasVendedor

			--  SQLINES DEMO *** temporal e insertamos los totales de cada cliente para obtener el total facturado en el mes
			IF OBJECT_ID('tempdb..#VentasVendedorMensual') IS NOT NULL THEN
				DROP TABLE #VentasVendedorMensual;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasVendedorMensual (Vendedor Varchar(50),
												 Mes_Venta Int, 
												 TotalAnual numeric(19,6));
										      
            -- SQLINES DEMO *** mulado de ventas Mensuales
			INSERT INTO #VentasVendedorMensual (Vendedor, Mes_Venta, TotalAnual)
			SELECT Vendedor, Mes_Venta, ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) AS TotalMes
			FROM #VentasVendedor
			ORDER BY Vendedor;

			-- SELECT A.Vendedor,
			--	   CASE B.SlpName
			-- SQLINES DEMO ***  GONZALEZ' THEN 'FIELDSERVICE'
			-- SQLINES DEMO *** mpleado del departamento de ventas-'  THEN 'OTROS'
			--		ELSE B.SlpName
			--	   END AS Nombre,
			-- SQLINES DEMO *** es_Venta,
			-- SQLINES DEMO *** Anual, 'C', 'en-us') AS Total
			--  SQLINES DEMO *** orMensual A
			--  SQLINES DEMO *** ON (B.SlpCode = A.Vendedor)
			-- WHERE TotalAnual > 0
			--  SQLINES DEMO *** nual DESC

			--  SQLINES DEMO *** temporal e insertamos los totales de cada cliente para obtener el total facturado en el mes
			IF OBJECT_ID('tempdb..#VentasVendedorFinal') IS NOT NULL THEN
				DROP TABLE #VentasVendedorFinal;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasVendedorFinal (Vendedor Varchar(50),
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
											   TotalDic numeric(19,6));

            -- SQLINES DEMO *** mulado de ventas Mensuales
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
			ORDER BY 1, TotalAnual DESC;

			--  SQLINES DEMO *** tasVendedorFinal

			--  SQLINES DEMO *** AS #VENDEDOR,
			-- SQLINES DEMO *** ame
			-- SQLINES DEMO *** NA GONZALEZ' THEN 'FIELDSERVICE'
			-- SQLINES DEMO ***  empleado del departamento de ventas-'  THEN 'OTROS'
			-- SQLINES DEMO *** ame
			--	   END AS NOMBRE, 
			-- SQLINES DEMO *** AS ENERO, 
			-- SQLINES DEMO *** AS FEBRERO, 
			-- SQLINES DEMO *** AS MARZO, 
			-- SQLINES DEMO *** AS ABRIL, 
			-- SQLINES DEMO *** AS MAYO, 
			-- SQLINES DEMO *** AS JUNIO, 
			-- SQLINES DEMO *** AS JULIO, 
			-- SQLINES DEMO *** AS AGOSTO, 
			-- SQLINES DEMO *** AS SEPTIEMBRE, 
			-- SQLINES DEMO *** AS OCTUBRE, 
			-- SQLINES DEMO *** AS NOVIEMBRE, 
			-- SQLINES DEMO *** AS DICIEMBRE
			--  SQLINES DEMO *** orFinal A
			--  SQLINES DEMO *** ON (B.SlpCode = A.Vendedor)
			--  SQLINES DEMO *** r, B.SlpName

			--  SQLINES DEMO *** [TblPdxWR_VentasMensualesVendedor]
   -- SQLINES DEMO *** or],[Nombre],[Enero],[Febrero],[Marzo],[Abril],[Mayo],[Junio],[Julio],[Agosto],[Septiembre],[Octubre],[Noviembre],[Diciembre],[Fecha])
			--  SQLINES DEMO *** AS #VENDEDOR,
			-- SQLINES DEMO *** ame
			-- SQLINES DEMO *** NA GONZALEZ' THEN 'FIELDSERVICE'
			-- SQLINES DEMO ***  empleado del departamento de ventas-'  THEN 'OTROS'
			-- SQLINES DEMO *** ame
			--	   END AS NOMBRE, 
			-- SQLINES DEMO *** AS ENERO, 
			-- SQLINES DEMO *** AS FEBRERO, 
			-- SQLINES DEMO *** AS MARZO, 
			-- SQLINES DEMO *** AS ABRIL, 
			-- SQLINES DEMO *** AS MAYO, 
			-- SQLINES DEMO *** AS JUNIO, 
			-- SQLINES DEMO *** AS JULIO, 
			-- SQLINES DEMO *** AS AGOSTO, 
			-- SQLINES DEMO *** AS SEPTIEMBRE, 
			-- SQLINES DEMO *** AS OCTUBRE, 
			-- SQLINES DEMO *** AS NOVIEMBRE, 
			-- SQLINES DEMO *** AS DICIEMBRE,
			-- SQLINES DEMO ***  GETDATE()) 
			--  SQLINES DEMO *** orFinal A
			--  SQLINES DEMO *** ON (B.SlpCode = A.Vendedor)
			--  SQLINES DEMO *** r, B.SlpName

			-- SET NOCOUNT OFF
					
END;


//

DELIMITER ;



/*** SpPdxWR_EnviaReporteVentasDesign  ***/
USE `CCL_DESING2021`;
 

/* SQLINES DEMO *** redProcedure [dbo].[SpPdxWR_EnviaReporteVentasDesign]    Script Date: 02/08/2021 03:49:45 p.m. ******/
/* SET ANSI_NULLS ON */
 

/* SET QUOTED_IDENTIFIER ON */
 

-- SQLINES DEMO *** ========================================================  
-- SQLINES DEMO *** usiness One
-- SQLINES DEMO ***  el Reporte de Ventas de Design Diario
-- SQLINES DEMO ***  ET SRL de CV
-- SQLINES DEMO *** n:	2019-10-01
--	Versión:			1.0.0.0
-- SQLINES DEMO *** ------ Histórico de Modificaciones ---------------------
--	Modificación:			
--	Modificó:				
-- SQLINES DEMO *** ción:	
--	Versión:					
--	Observaciones:			
-- SQLINES DEMO *** ========================================================

-- SQLINES LICENSE FOR EVALUATION USE ONLY
DELIMITER //

CREATE PROCEDURE SpPdxWR_EnviaReporteVentasDesign() 
BEGIN

			DECLARE v_FechaInicialYear Date;
					DECLARE v_FechaFinalYear Date;
					DECLARE v_FechaInicialMonth Date;
					DECLARE v_FechaFinalMonth Date;
					DECLARE v_FechaInicialDay Date;
					DECLARE v_FechaFinalDay Date;
					DECLARE v_FechaInicialBackLog Date;
					DECLARE v_FechaFinalBackLog Date;
					DECLARE v_FechaInicialPastMonth Date;
					DECLARE v_FechaFinalPastMonth Date;
					DECLARE v_Registros Int;
					DECLARE v_Dia Int; 


				-- SQLINES LICENSE FOR EVALUATION USE ONLY
				SET v_Dia = DAYOFWEEK(NOW(3)); 

		IF v_Dia > 1 AND v_Dia < 7

		THEN

			--  SQLINES DEMO *** has para obtener calculos anuales
			SET v_FechaInicialYear = CAST((CONCAT(CAST(YEAR(NOW(3)) AS CHAR) , '-01-01 00:00:00.000')) AS DATE);
			SET v_FechaFinalYear = NOW(3);

			--  SQLINES DEMO *** has para obetner calculos mensuales
			SET v_FechaInicialMonth = CONVERT(YEAR(NOW(3)) + '-' , CONVERT(MONTH(NOW(3)), CHAR(2)) , '-1', date);
			SET v_FechaFinalMonth = NOW(3); 		

			--  SQLINES DEMO *** has para obetner calculos diarios
			SET v_FechaInicialDay = NOW(3); 
			SET v_FechaFinalDay = NOW(3); 

			--  SQLINES DEMO *** ha para obtener el BackLog del periodo (Toto el mes actual)
			SET v_FechaInicialBackLog = CONVERT(YEAR(NOW(3)) + '-' , CONVERT(MONTH(NOW(3)), CHAR(2)) , '-1', date);
			SET v_FechaFinalBackLog = EOMONTH (NOW(3));
		
		--  SQLINES DEMO *** has para obetner calculos del mes anterior
			SET v_FechaInicialPastMonth = TIMESTAMPADD(month,-1,TIMESTAMPADD(month,TIMESTAMPDIFF(month,0,NOW(3)),0));
			SET v_FechaFinalPastMonth = TIMESTAMPADD(microsecond,-3 * 1000,TIMESTAMPADD(month,0,TIMESTAMPADD(month,TIMESTAMPDIFF(month,0,NOW(3)),0))); 


			/* SQLINES DEMO *** ACIÓN POR CLIENTE (INICIO) ***/

			/* SQLINES DEMO ***  - CALCULO MENSUAL (INICIO) ***/
			IF OBJECT_ID('tempdb..#VentasMensuales_Detalle') IS NOT NULL THEN
			   DROP TABLE #VentasMensuales_Detalle;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasMensuales_Detalle (CardCode nvarchar(15), 
												   CardName nvarchar(100),
												   Invoices numeric(19,6), 
												   Invoices_Y numeric(19,6), 
												   Invoices_C numeric(19,6), 
												   CreditNotes numeric(19,6), 
											       CreditNotes_Y numeric(19,6), 
												   CreditNotes_C numeric(19,6));

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, SUM(LineTotal) AS Invoices,  0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- Invoices
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialMonth AND v_FechaFinalMonth AND
				  B.CANCELED = 'N' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, 0 AS Invoices, SUM(LineTotal) AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C	-- Invoices_Y
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialMonth AND v_FechaFinalMonth AND
				  B.CANCELED = 'Y' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices,  0 AS Invoices_Y, SUM(LineTotal) AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- Invoices_C
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialMonth AND v_FechaFinalMonth AND
				  B.CANCELED = 'C' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, SUM(LineTotal) AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- CreditNotes
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialMonth AND v_FechaFinalMonth AND
				  B.CANCELED = 'N' AND B.ObjType = 14 AND A.AcctCode NOT IN ('3301-0300') --  SQLINES DEMO *** esign			
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, SUM(LineTotal) AS CreditNotes_Y, 0 AS CreditNotes_C		-- CreditNotes_Y
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialMonth AND v_FechaFinalMonth AND
				  B.CANCELED = 'Y' AND B.ObjType = 14 
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasMensuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, SUM(LineTotal) AS CreditNotes_C		-- CreditNotes_C
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialMonth AND v_FechaFinalMonth AND
				  B.CANCELED = 'C' AND B.ObjType = 14  
			GROUP BY B.CardCode, B.CardName);

			IF OBJECT_ID('tempdb..#VentasMensuales') IS NOT NULL THEN
			DROP TABLE #VentasMensuales;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasMensuales (CardCode nvarchar(15), 
										   CardName nvarchar(100), 
										   Invoices numeric(19,6), 
										   Invoices_Y numeric(19,6), 
										   Invoices_C numeric(19,6), 
										   CreditNotes numeric(19,6), 
										   CreditNotes_Y numeric(19,6), 
										   CreditNotes_C numeric(19,6));

			INSERT INTO #VentasMensuales (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			SELECT CardCode, CardName, SUM(Invoices), SUM(Invoices_Y), SUM(Invoices_C), SUM(CreditNotes), SUM(CreditNotes_Y), SUM(CreditNotes_C)
			FROM #VentasMensuales_Detalle
			GROUP BY CardCode, CardName
			ORDER BY CardCode, CardName;

				-- 
					/* SQLINES DEMO *** e Ventas Mensuales por Cliente*/
					-- SQLINES LICENSE FOR EVALUATION USE ONLY
					SELECT CardCode, CardName,
						   FORMAT(((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)), 'C', 'en-us') AS Total, 
						   FORMAT(Invoices, 'C', 'en-us') AS Invoices,
						   FORMAT(Invoices_Y, 'C', 'en-us') AS Invoices_Y, 
						   FORMAT(Invoices_C, 'C', 'en-us') AS Invoices_C, 
						   FORMAT(CreditNotes, 'C', 'en-us')AS CreditNotes,
						   FORMAT(CreditNotes_Y, 'C', 'en-us')AS CreditNotes,	
 						   FORMAT(CreditNotes_C, 'C', 'en-us') AS CreditNotes_C
					FROM #VentasMensuales; 
				-- 
			
			/* SQLINES DEMO *** CALCULO MENSUAL (FIN) ***/

/* SQLINES DEMO ***  - CALCULO DIARIO (INICIO) ***/
			IF OBJECT_ID('tempdb..#VentasDiarias_Detalle') IS NOT NULL THEN
			DROP TABLE #VentasDiarias_Detalle;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasDiarias_Detalle (CardCode nvarchar(15), 
												 CardName nvarchar(100), 
												 Invoices numeric(19,6), 
												 Invoices_Y numeric(19,6), 
												 Invoices_C numeric(19,6), 
												 CreditNotes numeric(19,6), 
											     CreditNotes_Y numeric(19,6), 
												 CreditNotes_C numeric(19,6));

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, SUM(LineTotal) AS Invoices,  0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- Invoices
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialDay AND v_FechaFinalDay AND
				  B.CANCELED = 'N' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, 0 AS Invoices, SUM(LineTotal) AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C	-- Invoices_Y
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialDay AND v_FechaFinalDay AND
				  B.CANCELED = 'Y' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices,  0 AS Invoices_Y, SUM(LineTotal) AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- Invoices_C
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialDay AND v_FechaFinalDay AND
				  B.CANCELED = 'C' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, SUM(LineTotal) AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- CreditNotes
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialDay AND v_FechaFinalDay AND
				  B.CANCELED = 'N' AND B.ObjType = 14 AND A.AcctCode NOT IN ('3301-0300') --  SQLINES DEMO *** esign		
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, SUM(LineTotal) AS CreditNotes_Y, 0 AS CreditNotes_C		-- CreditNotes_Y
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialDay AND v_FechaFinalDay AND
				  B.CANCELED = 'Y' AND B.ObjType = 14 
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasDiarias_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, SUM(LineTotal) AS CreditNotes_C		-- CreditNotes_C
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialDay AND v_FechaFinalDay AND
				  B.CANCELED = 'C' AND B.ObjType = 14  
			GROUP BY B.CardCode, B.CardName);


			IF OBJECT_ID('tempdb..#VentasDiarias') IS NOT NULL THEN
			DROP TABLE #VentasDiarias;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasDiarias (CardCode nvarchar(15), 
										 CardName nvarchar(100),
										 Invoices numeric(19,6), 
										 Invoices_Y numeric(19,6), 
										 Invoices_C numeric(19,6), 
										 CreditNotes numeric(19,6), 
										 CreditNotes_Y numeric(19,6), 
										 CreditNotes_C numeric(19,6));

			INSERT INTO #VentasDiarias (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			SELECT CardCode, CardName, SUM(Invoices), SUM(Invoices_Y), SUM(Invoices_C), SUM(CreditNotes), SUM(CreditNotes_Y), SUM(CreditNotes_C)
			FROM #VentasDiarias_Detalle
			GROUP BY CardCode, CardName
			ORDER BY CardCode, CardName;

				/* SQLINES DEMO ***  Ventas Diarias por Cliente*/		
					-- SQLINES LICENSE FOR EVALUATION USE ONLY
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
				
				*/;

			/* SQLINES DEMO *** CALCULO DIARIO (FIN) ***/


			--  SQLINES DEMO *** temporal e insertamos los totales de cada cliente para obtener el total facturado en el mes
			IF OBJECT_ID('tempdb..#TotalMensualDiario') IS NOT NULL THEN
			DROP TABLE #TotalMensualDiario;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #TotalMensualDiario (CardCode nvarchar(15), 
											  CardName nvarchar(100),
											  Zona nvarchar(20),
									          TotalMesInvoices numeric(19,6),
										      TotalDiaInvoices numeric(19,6), 
											  TotalMesCreditNotes numeric(19,6), 
											  TotalDiaCreditNotes numeric(19,6));

            -- SQLINES DEMO *** mulado de Ventas Mensuales
			INSERT INTO #TotalMensualDiario (CardCode, CardName, TotalMesInvoices, TotalMesCreditNotes)
			SELECT CardCode, CardName,
				   ((Invoices + Invoices_Y)-(Invoices_C)) AS TotalMesSinRebate,
				   ((CreditNotes_C)-(CreditNotes+CreditNotes_Y)) AS TotalMesCreditNotes
			FROM #VentasMensuales
			WHERE ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) <> 0
			ORDER BY CardCode;

			-- SQLINES DEMO *** mulado de Ventas Diarias
			INSERT INTO #TotalMensualDiario (CardCode, CardName, TotalDiaInvoices, TotalDiaCreditNotes)
			SELECT CardCode, CardName,
				   ((Invoices + Invoices_Y)-(Invoices_C)) AS TotalDiaSinRebate,
				   ((CreditNotes_C)-(CreditNotes+CreditNotes_Y)) AS TotalDiaCreditNotes
			FROM #VentasDiarias
			WHERE ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) <> 0
			ORDER BY CardCode;
		
			/* SQLINES DEMO *** ada uno de los clientes que tuvo Ventas*/
			UPDATE
				#TotalMensualDiario A
			LEFT JOIN OCRD	B ON A.CardCode = B.CardCode
			SET
				Zona = C.GroupName
    	; COLLATE database_default
			LEFT JOIN OCRG	C ON B.GroupCode = C.GroupCode
			

			-- SQLINES DEMO *** CIÓN POR CLIENTE --

			/* SQLINES DEMO *** e AS 'Cliente', 
					CardName AS 'Descripción', 
					Zona,
					FORMAT(SUM(TotalMesInvoices), 'C', 'en-us') AS 'Acumulado Mes', 
					FORMAT(SUM(TotalDiaInvoices), 'C', 'en-us') AS 'Facturado Hoy'
			FROM #TotalMensualDiario
			GROUP BY CardCode, CardName, Zona
			ORDER BY SUM(TotalMesInvoices) DESC		
			*/

			/* SQLINES DEMO *** ÓN POR CLIENTE (FIN) ***/


			/* SQLINES DEMO *** ORDENES ABIERTAS (INICIO) ***/

			-- SQLINES DEMO *** RDENES ABIERTAS (PARA VALIDAR) --
			/* SQLINES DEMO ***  FORMAT(SUM(LineTotal),'C','en-us') 
					FROM RDR1 
					WHERE LineStatus = 'O') AS 'Importe',
				    COUNT(*)  AS 'No. Ord.'
			FROM ORDR 
			WHERE DocStatus = 'O'
			*/
			/* SQLINES DEMO *** ENES ABIERTAS (FIN)***/


			/* SQLINES DEMO *** FACTURADO EN EL AÑO (INICIO) ***/


			IF OBJECT_ID('tempdb..#VentasAnuales_Detalle') IS NOT NULL THEN
			DROP TABLE #VentasAnuales_Detalle;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasAnuales_Detalle (CardCode nvarchar(15), 
												 CardName nvarchar(100), 
												 Invoices numeric(19,6), 
												 Invoices_Y numeric(19,6), 
												 Invoices_C numeric(19,6), 
												 CreditNotes numeric(19,6), 
											     CreditNotes_Y numeric(19,6), 
												 CreditNotes_C numeric(19,6));

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, SUM(LineTotal) AS Invoices,  0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- Invoices
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'N' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode, B.CardName, 0 AS Invoices, SUM(LineTotal) AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C	-- Invoices_Y
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'Y' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices,  0 AS Invoices_Y, SUM(LineTotal) AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- Invoices_C
			FROM INV1 A
			INNER JOIN OINV B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'C' AND B.ObjType = 13
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, SUM(LineTotal) AS CreditNotes, 0 AS CreditNotes_Y, 0 AS CreditNotes_C		-- CreditNotes
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'N' AND B.ObjType = 14 AND A.AcctCode NOT IN ('630035','630058') --  SQLINES DEMO *** very
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT  B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, SUM(LineTotal) AS CreditNotes_Y, 0 AS CreditNotes_C		-- CreditNotes_Y
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'Y' AND B.ObjType = 14 
			GROUP BY B.CardCode, B.CardName);

			INSERT INTO #VentasAnuales_Detalle (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			(SELECT B.CardCode,  B.CardName, 0 AS Invoices, 0 AS Invoices_Y, 0 AS Invoices_C, 0 AS CreditNotes, 0 AS CreditNotes_Y, SUM(LineTotal) AS CreditNotes_C		-- CreditNotes_C
			FROM RIN1 A
			INNER JOIN ORIN B ON (B.DocEntry = A.DocEntry)
			WHERE B.DocDate BETWEEN v_FechaInicialYear AND v_FechaFinalYear AND
				  B.CANCELED = 'C' AND B.ObjType = 14  
			GROUP BY B.CardCode, B.CardName);


			IF OBJECT_ID('tempdb..#VentasAnuales') IS NOT NULL THEN
			DROP TABLE #VentasAnuales;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #VentasAnuales (CardCode nvarchar(15), 
										 CardName nvarchar(100),
										 Invoices numeric(19,6), 
										 Invoices_Y numeric(19,6), 
										 Invoices_C numeric(19,6), 
										 CreditNotes numeric(19,6), 
										 CreditNotes_Y numeric(19,6), 
										 CreditNotes_C numeric(19,6));

			INSERT INTO #VentasAnuales (CardCode, CardName, Invoices, Invoices_Y, Invoices_C, CreditNotes, CreditNotes_Y, CreditNotes_C)
			SELECT CardCode, CardName, SUM(Invoices), SUM(Invoices_Y), SUM(Invoices_C), SUM(CreditNotes), SUM(CreditNotes_Y), SUM(CreditNotes_C)
			FROM #VentasAnuales_Detalle
			GROUP BY CardCode, CardName
			ORDER BY CardCode, CardName;


			--  SQLINES DEMO *** temporal e insertamos los totales de cada cliente para obtener el total facturado en el mes
			IF OBJECT_ID('tempdb..#TotalAnual') IS NOT NULL THEN
			DROP TABLE #TotalAnual;
			END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #TotalAnual (CardCode nvarchar(15), 
									  CardName nvarchar(100),
									  Zona nvarchar(20),
									  TotalAnual numeric(19,6));

            -- SQLINES DEMO *** mulado de Ventas Mensuales
			INSERT INTO #TotalAnual (CardCode, CardName, TotalAnual)
			SELECT CardCode, CardName,
				   ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) AS TotalAnual
			FROM #VentasAnuales
			WHERE ((Invoices + Invoices_Y + CreditNotes_C)-(Invoices_C+CreditNotes+CreditNotes_Y)) <> 0
			ORDER BY CardCode;

			-- Solo validación 
			--  SQLINES DEMO *** alAnual

			/* SQLINES DEMO *** TURADO EN EL AÑO (FIN) ***/
			
			-- SQLINES DEMO *** ANUAL  (PARA VALIDAR)--
			/* SQLINES DEMO *** 				FORMAT((SELECT TOP 1 U_C_OBJETIVOA FROM [@U_OBJETIVOA]), 'C', 'en-us') AS 'Objetivo Anual',
					FORMAT((SELECT SUM(TotalAnual) FROM #TotalAnual), 'C', 'en-us') AS 'Acumulado'
			FROM #TotalMensualDiario		
			*/

			-- SQLINES DEMO ***  BACKEND  --
			-- SQLINES DEMO *** principal de saldos por Linea de Negocio
	 		IF OBJECT_ID('tempdb..#TotalZona') IS NOT NULL THEN
			DROP TABLE #TotalZona;
		 	END IF;

			-- SQLINES LICENSE FOR EVALUATION USE ONLY
			CREATE TEMPORARY TABLE #TotalZona (Zona NVARCHAR(50), 
									 Objetivo NUMERIC(19,6), 
									 BackLog NUMERIC(19,6), 
									 FacturadoMes NUMERIC(19,6), 
									 FacturadoDia NUMERIC(19,6),
									 CreditNotesMes NUMERIC(19,6),
									 CreditNotesDia NUMERIC(19,6));

									 											    
			INSERT INTO #TotalZona (Zona, Objetivo, FacturadoMes, FacturadoDia, CreditNotesMes, CreditNotesDia)
			SELECT  B.Name AS 'Zona',
					IFNULL(B.U_C_OBJETIVO,0), 
					SUM(TotalMesInvoices), 
					SUM(TotalDiaInvoices),
					SUM(TotalMesCreditNotes),
					SUM(TotalDiaCreditNotes)
			FROM #TotalMensualDiario A
			RIGHT JOIN @U_OBJETIVO B ON A.ZONA = B.NAME; COLLATE database_default
			GROUP BY B.Name, B.U_C_OBJETIVO


			-- SQLINES DEMO *** lores de BACKLOG a la tabla Principal de Linea de Negocio

				-- SQLINES DEMO *** para agrupar el BackLog
				IF OBJECT_ID('tempdb..#TotalBackLog') IS NOT NULL THEN
				DROP TABLE #TotalBackLog;
				END IF;

				-- SQLINES LICENSE FOR EVALUATION USE ONLY
				CREATE TEMPORARY TABLE #TotalBackLog (Zona NVARCHAR(50), 
											BackLog NUMERIC(19,6));


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
					WHERE T0.[U_FechaReal] >=v_FechaInicialBackLog and T0.[U_FechaReal] <=v_FechaFinalBackLog
						  AND (T0.U_BackOrder IS NULL OR T0.U_BackOrder = 'N') 
					GROUP BY T3.[GroupName]);


				INSERT INTO #TotalZona (Zona, BackLog)
					SELECT Zona, SUM(BackLog)
					FROM #TotalBackLog
					GROUP BY Zona;
			-- ** **

			-- SQLINES DEMO *** S POR ZONA FRONTEND (PARA VALIDAR)--
			/* SQLINES DEMO *** S 'Zona',
					SUM(Objetivo) AS 'Objetivo',
					SUM(BackLog) AS 'BackLog', 
					SUM(FacturadoMes) AS 'Facturado en el Mes sin Rebate', 
					SUM(FacturadoDia) AS 'Facturado en el Dia sin Rebate'
			FROM #TotalZona
			GROUP BY Zona
			ORDER BY Zona
			*/


--  SQLINES DEMO *** ReporteVentasDesign


		END IF;
END;

//

DELIMITER ;

 