CREATE DATABASE dbDesign;
USE dbDesign;

-- Host:     Database: dbDesign

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- CREACION DE LAS TABLAS --

-- ESTRUCTURA DE LA TABLA GRAFICAS UBICACION --
-- DROP TABLE IF EXISTS [GraficasUbicacion];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE GraficasUbicacion(
  idGraficasUbicacion int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  UP int NOT NULL,
  Metrologia int NOT NULL,
  ServiciosExternos int NOT NULL,
  Cuarentena int NOT NULL,
  Scrap varchar(45) NOT NULL);




-- ESTRUCTURA DE LA TABLA FACTURACION CLIENTE --
-- DROP TABLE IF EXISTS [tbl_facturacioncliente];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_facturacioncliente (
  idFacturacionCliente int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nocliente varchar(100) DEFAULT NULL,
  Cliente varchar(100) DEFAULT NULL,
  Mes varchar(100) DEFAULT NULL,
  Dia varchar(100) DEFAULT NULL,
  fecha date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;



-- ESTRUCTURA DE LA TABLA LINEA NEGOCIO --
-- DROP TABLE IF EXISTS [tbl_lineanegocio];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_lineanegocio (
  id_LN int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  LineaNegocio varchar(500) DEFAULT NULL,
  Objetivo varchar(500) DEFAULT NULL,
  BackLog varchar(500) DEFAULT NULL,
  FacturadoMes varchar(500) DEFAULT NULL,
  FacturadoDia varchar(500) DEFAULT NULL,
  Fecha date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;



-- ESTRUCTURA DE LA TABLA TOP 15 --
-- DROP TABLE IF EXISTS [tbl_top15];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_top15 (
  CardCode VARCHAR(10000),
  CardName VARCHAR(10000),
  VentasTotales float DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;



-- ESTRUCTURA DE LA TABLA FACTURADO ANUAL --
-- DROP TABLE IF EXISTS [tbl_totalfacturadoanual];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_totalfacturadoanual (
  id_TFA int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Objetivo varchar(500) DEFAULT NULL,
  Acumulado varchar(100) DEFAULT NULL,
  Fecha date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;



-- ESTRUCTURA DE LA TABLA TOTAL ORDENES ABIERTAS --
-- DROP TABLE IF EXISTS [tbl_totalordenesabiertas];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_totalordenesabiertas (
  Id_TOA int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Importe varchar(100) DEFAULT NULL,
  NoOrdenes int DEFAULT NULL,
  Fecha date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;



-- ESTRUCTURA DE LA TABLA VENTAS MENSUALES --
-- DROP TABLE IF EXISTS [tbl_ventasmensuales];
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tbl_ventasmensuales (
  id_vendedor int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre varchar(100) DEFAULT NULL,
  Enero decimal(10,2) DEFAULT NULL,
  Febrero decimal(10,2) DEFAULT NULL,
  Marzo decimal(10,2) DEFAULT NULL,
  Abril decimal(10,2) DEFAULT NULL,
  Mayo decimal(10,2) DEFAULT NULL,
  Junio decimal(10,2) DEFAULT NULL,
  Julio decimal(10,2) DEFAULT NULL,
  Agosto decimal(10,2) DEFAULT NULL,
  Septiembre decimal(10,2) DEFAULT NULL,
  Octubre decimal(10,2) DEFAULT NULL,
  Noviembre decimal(10,2) DEFAULT NULL,
  Diciembre decimal(10,2) DEFAULT NULL,
  Fecha date DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;
--
--
--
--
--

-- INSERT´S A LAS TABLAS --


-- INSERT´S A LA TABLA GRAFICAS UBICACION --
INSERT INTO GraficasUbicacion VALUES 
(default, 84, 32, 26, 15, '10');


-- INSERT´S A LA TABLA FACTURACION CLIENTE --
INSERT INTO tbl_facturacioncliente VALUES 
(default, 'CASA LEY','CASA LEY SAPI SA DE CV','528299.53','','2018-06-08'),
(default, '2167','INNOVA SPORT S.A. DE C.V.','269433.50','131672.00','2018-06-08'),
(default, '2990','MULTIBRAND OUTLET STORES S.A.P.I. DE C.V.','101551.19','','2018-06-08'),
(default, 'WALMART','NUEVA WAL MART DE MEXICO, S DE RL DE CV','80586.31','','2018-06-08'),
(default, '2288','BONMORO SA DE CV','77180.00','','2018-06-08'),
(default, 'SORIANA','TIENDAS SORIANA, SA DE CV','75714.74','1404.46','2018-06-08'),
(default, '3092','GRUPO ALGEDI S. DE R.L. DE C.V.','40987.40','','2018-06-08'),
(default, '2892','PONAN MILLS SA DE CV','38680.00','','2018-06-08'),
(default, '17','GRUPO JULIO S.A. DE C.V.','37660.00','','2018-06-08'),
(default, '2268','LETICIA PAMMY S.A DE C.V','31750.00','','2018-06-08'),
(default, '1495','LITO OFFSET COMERCIAL, S.A. DE C.V.','27000.00','','2018-06-08'),
(default, '3777','GRUPO ELEKTRA S A B DE C V','23836.46','','2018-06-08'),
(default, '3032','VISION COMERCIAL DEPORTIVA SA DE CV','23280.00','23280.00','2018-06-08'),
(default, '3144','GRUPO OM MEXICO COMUNICACION VISUAL SA DE CV','19320.00','','2018-06-08'),
(default, '2419','HOME DEPOT MEXICO S DE RL DE CV','19121.22','','2018-06-08'),
(default, '2201','GRUPO TEXTIL PIMA S.A. DE C.V.','15580.00','15580.00','2018-06-08'),
(default, '2924','DISENOS Y DETALLES S.A DE C.V','11980.00','11980.00','2018-06-08'),
(default, '2117','LEVIS STRAUSS DE MEXICO SA DE CV','10750.00','5760.00','2018-06-08'),
(default, '1038','CAMISAS AFRODITA, SA DE CV','10010.00','','2018-06-08'),
(default, '3117','COMERCIAL CITY FRESKO S DE RL DE CV','9350.00','9350.00','2018-06-08'),
(default, '2396','EXCLUSIVOS DISENOS MAGIA SA DE CV','7880.00','','2018-06-08'),
(default, '2304','SALO Y ALAN SA DE CV','7880.00','','2018-06-08'),
(default, '3865','COFLEX S.A. DE C.V.','7191.32','','2018-06-08'),
(default, '2967','BABY KINGDOM BY SAHIBA SA DE CV','5570.00','','2018-06-08'),
(default, 'LIVERPOOOL','LIVERPOOOL SA DE CV','2623.53','','2018-06-08'),
(default, '3199','GRUPO ANDIC, S.A. DE C.V.','1980.00','','2018-06-08');


-- INSERT´S A LA TABLA LINEA NEGOCIO --
INSERT INTO tbl_lineanegocio VALUES 
(default, 'OTHERS','0.00','5128.25','0.00','0.00','2018-06-08'),
(default, 'FS','1385213.29','537884.58','225329.74','22644.46','2018-06-08'),
(default, 'ALS','1455830.00','0.00','21810.00','38860.00','2018-06-08'),
(default, 'MAS','11346348.00','1156234.65','1042055.46','137522.00','2018-06-08');


-- INSERT´S A LA TABLA TOP 15 --
INSERT INTO tbl_top15 VALUES 
('SORIANA','TIENDAS SORIANA, SA DE CV',14029877.49),
('2991','FARMACIA GUADALAJARA, S.A DE C.V',9433541.006),
('CASA LEY','CASA LEY SAPI SA DE CV',5911388.671),
('3777','GRUPO ELEKTRA S A B DE C V',1992344.238),
('3096','BIJOU MEXICO  SA DE CV',1864966.064),
('LIVERPOOOL','LIVERPOOOL SA DE CV',1672694.164),
('WALMART','NUEVA WAL MART DE MEXICO, S DE RL DE CV',1606455.579),
('3180','PROCTER & GAMBLE MEXICO INC.',1548282.64),
('2167','INNOVA SPORT S.A. DE C.V.',1520986.78),
('2990','MULTIBRAND OUTLET STORES S.A.P.I.  DE C.V.',1329380.076),
('2420','BEST BUY STORES, S. DE R.L. DE C.V.',1243571.75),
('1760','C&A MEXICO S. DE R.L.',1044008.5),
('3185','PROCTER & GAMBLE MANUFACTURING MEXICO S DE RL DE CV',793164.66),
('2419','HOME DEPOT MEXICO S DE RL DE CV',680169.4404),
('2991','FARMACIA GUADALAJARA SA DE CV',501616.08);


-- INSERT´S A LA TABLA TOTAL FACTURADO CLIENTE --
INSERT INTO tbl_totalfacturadoanual VALUES 
(default, '$153,000,000.00','$55,260,676.11','2018-06-08');


-- INSERT´S A LA TABLA TOTAL ORDENES ABIERTAS --
INSERT INTO tbl_totalordenesabiertas VALUES 
(default, '$2,527,031.03',111,'2018-06-08');


-- INSERT´S A LA TABLA VENTAS MENSUALES --
INSERT INTO tbl_ventasmensuales VALUES 
(default, 'FIELDSERVICE',14415.95,20524.25,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'CHECKPOINT',919340.00,701480.00,1054730.00,835824.26,1064280.00,279770.00,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'IGNACIO ARADILLAS',2220464.87,1656674.47,1856145.62,1562503.53,6627309.03,75714.74,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'JUAN CARLOS MERINO FUENTES',199811.68,1639667.00,1875381.54,1267699.56,1929081.97,483333.99,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'JUAN PABLO DIAZ',233969.14,67199.60,295445.34,591581.85,6780.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'MARIO ALBERTO NAVARRETE LEON',1201668.53,3979512.89,5502117.19,5391184.51,1508848.81,253341.79,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'MIREYA RANGEL GONZALEZ',1339389.00,1478836.33,1674893.46,2413942.96,1967911.38,551222.43,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'OTROS',0.00,0.00,0.00,3060.00,38500.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'RICARDO MARTINEZ GODINEZ',0.00,7077.94,8400.00,0.00,76001.65,21330.00,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08'),
(default, 'RICARDO OLVERA GONZALEZ',257439.00,0.00,286387.64,0.00,0.00,280318.02,0.00,0.00,0.00,0.00,0.00,0.00,'2018-06-08');

 --
 --
 --
 --
 -- PROCEDIMIENTOS ALMACENADOS --

-- PROCEDIMIENTO sp_ConsultaFacturacionCasaley --
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaFacturacionCasaley */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaFacturacionCasaley()
SELECT NoCliente,Cliente,
CASE
    WHEN (Mes is NULL) THEN 0 ELSE Mes
END AS Mes,
CASE
    WHEN (Dia is NULL) THEN 0 ELSE Dia
END As Dia,
Fecha FROM tbl_facturacioncliente WHERE Cliente LIKE '%CASALEY%' OR NoCliente IN('001236','003087'
) ;;
Go

-- PROCEDIMIENTO sp_ConsultaFacturacionCliente --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaFacturacionCliente */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaFacturacionCliente ( FechaParameter DATE) 
SELECT NoCliente,Cliente,
CASE
    WHEN (Mes is NULL) THEN 0 ELSE DATE_FORMAT (CAST(Mes AS decimal(15,4)), 1)
END AS Mes,
CASE
    WHEN (Dia is NULL) THEN 0 ELSE DATE_FORMAT (CAST(Mes AS decimal(15,4)), 1)
END As Dia,
Fecha from tbl_facturacioncliente WHERE Fecha = FechaParameter ;;
Go


-- PROCEDIMIENTO sp_ConsultaFacturacionLiverpool --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaFacturacionLiverpool */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaFacturacionLiverpool()
SELECT NoCliente,Cliente,
CASE
    WHEN (Mes is NULL) THEN 0 ELSE Mes
END AS Mes,
CASE
    WHEN (Dia is NULL) THEN 0 ELSE Dia
END As Dia,
Fecha FROM tbl_facturacioncliente WHERE Cliente LIKE '%LIVERPO0L%' OR NoCliente IN('002150','002478','002485','002602','002642','003040','003041','003071') ;;
Go



-- PROCEDIMIENTO sp_ConsultaFacturacionSoriana --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaFacturacionSoriana */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaFacturacionSoriana() 
SELECT NoCliente,Cliente,
CASE
    WHEN (Mes is NULL) THEN 0 ELSE Mes
END AS Mes,
CASE
    WHEN (Dia is NULL) THEN 0 ELSE Dia
END As Dia,
Fecha FROM tbl_facturacioncliente WHERE Cliente LIKE '%SORIANA%' OR NoCliente IN('003204','001230','003200') ;;


-- PROCEDIMIENTO sp_ConsultaFacturacionWalmart --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaFacturacionWalmart */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaFacturacionWalmart()
SELECT NoCliente,Cliente,
CASE
    WHEN (Mes is NULL) THEN 0 ELSE Mes
END AS Mes,
CASE
    WHEN (Dia is NULL) THEN 0 ELSE Dia
END As Dia,
Fecha FROM tbl_facturacioncliente WHERE Cliente LIKE '%WAL MART%' OR NoCliente IN('000069-AB','000069-AS','000069-ASC','000069-S','000069-SC') ;;
Go



-- PROCEDIMIENTO sp_ConsultaLineaNegocio --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaLineaNegocio */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaLineaNegocio ( FechaParameter DATE)
SELECT LineaNegocio, 
DATE_FORMAT (CAST(Objetivo AS decimal(15,4)), 1) AS Objetivo, 
DATE_FORMAT (CAST(BackLog AS decimal(15,4)), 1) AS BackLog,
DATE_FORMAT (CAST(FacturadoMes AS decimal(15,4)), 1) AS FacturadoMes, 
DATE_FORMAT (CAST(FacturadoDia AS decimal(15,4)), 1) AS FacturadoDia FROM tbl_lineanegocio where Fecha = FechaParameter ;;
GO



-- PROCEDIMIENTO sp_ConsultaTop15 --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_consultatop15 */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_consultatop15() 
select CardName,VentasTotales from tbl_top15 ;;
GO



-- PROCEDIMIENTO sp_ConsultaTotalesLineaNegocio --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaTotalesLineaNegocio */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaTotalesLineaNegocio( FechaParameter DATE)
SELECT CASE WHEN (CONCAT('$', format(sum(Objetivo), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(Objetivo), 2)) END as TotalObjetivo,CASE WHEN (CONCAT('$', format(sum(BackLog), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(BackLog), 2)) END as TotalBackLog,CASE WHEN (CONCAT('$', format(sum(FacturadoMes), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(FacturadoMes), 2)) END as TotalFacturadoMes,CASE WHEN (CONCAT('$', format(sum(FacturadoDia), 2)) IS NULL) THEN 0 ELSE CONCAT('$', format(sum(FacturadoDia), 2)) END as TotalFacturadoDia FROM tbl_lineanegocio  where Fecha = FechaParameter ;;
GO



-- PROCEDIMIENTO sp_ConsultaTotalesLineaNegocioGraficas --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaTotalesLineaNegocioGraficas */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaTotalesLineaNegocioGraficas( FechaParameter INT)
SELECT CASE WHEN (sum(Objetivo) IS NULL) THEN 0 ELSE sum(Objetivo) END as TotalObjetivo,CASE WHEN (sum(BackLog) IS NULL) THEN 0 ELSE sum(BackLog) END as TotalBackLog,CASE WHEN (sum(FacturadoMes) IS NULL) THEN 0 ELSE sum(FacturadoMes) END as TotalFacturadoMes, CASE WHEN (sum(FacturadoDia) IS NULL) THEN 0 ELSE sum(FacturadoDia) END as TotalFacturadoDia FROM tbl_lineanegocio  where Fecha = FechaParameter ;;
GO




-- PROCEDIMIENTO sp_ConsultaTotalFacturadoAnual --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaTotalFacturadoAnual */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaTotalFacturadoAnual( FechaParameter DATE)
SELECT * FROM tbl_totalfacturadoanual  where Fecha = FechaParameter ;;
GO



-- PROCEDIMIENTO sp_ConsultaTotalFacturadoCliente --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaTotalFacturadoCliente */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaTotalFacturadoCliente( FechaParameter DATE)
SELECT  CONCAT('$', format(SUM(Mes),2))AS TotalFacturadoMensual,CONCAT('$', format(SUM(Dia),2))AS TotalFacturadoDia FROM tbl_facturacioncliente where Fecha = FechaParameter ;;
GO



-- PROCEDIMIENTO sp_ConsultaTotalOrdenesAbiertas --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaTotalOrdenesAbiertas */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaTotalOrdenesAbiertas( FechaParameter DATE)
SELECT * FROM tbl_totalordenesabiertas where Fecha = FechaParameter ;;
GO



-- PROCEDIMIENTO sp_ConsultaVentasMensuales --
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS sp_ConsultaVentasMensuales */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
CREATE  PROCEDURE sp_ConsultaVentasMensuales( p_FechaParameter DATE)
select * from tbl_ventasmensuales where Fecha = p_FechaParameter ;;
GO


/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;