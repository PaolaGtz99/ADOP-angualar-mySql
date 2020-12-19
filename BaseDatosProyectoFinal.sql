-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: difadopcion
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cuenta_con`
--

DROP TABLE IF EXISTS `cuenta_con`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta_con` (
  `id_solicitud` int NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_solicitud`),
  KEY `id_solicitud` (`id_solicitud`),
  CONSTRAINT `cuenta_con_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `cuenta_con_ibfk_2` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud` (`id_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_con`
--

LOCK TABLES `cuenta_con` WRITE;
/*!40000 ALTER TABLE `cuenta_con` DISABLE KEYS */;
INSERT INTO `cuenta_con` VALUES (2,4),(4,14),(5,14),(6,12),(7,15),(8,17),(9,20);
/*!40000 ALTER TABLE `cuenta_con` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `duracion_c` time NOT NULL,
  `fecha_c` date NOT NULL,
  `nom_c` varchar(60) NOT NULL,
  `num_a` int DEFAULT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `personal` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'17:30:00','2020-12-02','Entendiendo las causas de anomalia en menores',21,6),(2,'00:30:00','2020-11-30','Valores de la familia',12,2),(8,'22:17:00','2020-12-14','Entendiendo a los menores',10,2),(9,'10:00:00','2020-12-07','Bienestar de la familia en tiempos de crisis',2,1),(10,'12:30:00','2020-12-09','Curso para que los padres comprendan a la niñez',0,1);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infante`
--

DROP TABLE IF EXISTS `infante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infante` (
  `id_infante` varchar(15) NOT NULL,
  `nom_in` varchar(30) NOT NULL,
  `ape_pinf` varchar(20) NOT NULL,
  `ape_minf` varchar(20) NOT NULL,
  `fechaN_in` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `est_adop` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_infante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infante`
--

LOCK TABLES `infante` WRITE;
/*!40000 ALTER TABLE `infante` DISABLE KEYS */;
INSERT INTO `infante` VALUES ('01P11','Andres Palacios','Robles','Aguilera','1999-03-12','M','En proceso'),('02M02','Juan','Sanchez','Aguilera','2001-12-12','M','Adoptado'),('03M03','Evaluna','Montemayor','Salas','2010-10-02','F','En proceso'),('04A02','Juan Jose','Montemayor','Medina','1989-10-02','M','Adoptado'),('1M3','Alejandra ','Mares','Mares','2012-01-10','M','En proceso'),('1P11','Josue ','Reyes','Reyes','1995-05-08','M','En proceso'),('1P2','Alejandro','Palomares','Manriquez','2002-02-25','F','Sin proceso'),('2M12','Santiago','Perez','Montoya','2000-03-08','M','Sin proceso'),('2P9','Ameria','Salas','Gonzalez','2003-01-28','F','Sin proceso'),('3M12','Mariano','Torres','Flores','2003-02-04','M','Sin proceso'),('3P12','Martina','Perez','Montañez','2007-03-05','F','Sin proceso'),('6M11','Fernanda','Salas','Salas','1992-07-14','F','En proceso'),('7P12','Manuel','Reyes','Reyes','2000-03-07','M','Sin proceso'),('8P12','Santiago','Meridi','Salas','1997-03-06','M','Sin proceso'),('9M2','Juan','Salas','Salas','1991-02-05','M','Sin proceso'),('9P12','Karla','Gomez','Padilla','2005-01-04','F','Sin proceso');
/*!40000 ALTER TABLE `infante` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `estadoinfante` BEFORE INSERT ON `infante` FOR EACH ROW begin
   set new.est_adop = "Sin proceso";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `involucrados`
--

DROP TABLE IF EXISTS `involucrados`;
/*!50001 DROP VIEW IF EXISTS `involucrados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `involucrados` AS SELECT 
 1 AS `id_reporte`,
 1 AS `fecha_rep`,
 1 AS `desc_rep`,
 1 AS `id_infante`,
 1 AS `id_usuario`,
 1 AS `nom_usuario`,
 1 AS `nom_in`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lista_espera`
--

DROP TABLE IF EXISTS `lista_espera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_espera` (
  `id_espera` int NOT NULL AUTO_INCREMENT,
  `fecha_soli` date DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_espera`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_espera`
--

LOCK TABLES `lista_espera` WRITE;
/*!40000 ALTER TABLE `lista_espera` DISABLE KEYS */;
INSERT INTO `lista_espera` VALUES (4,'2018-10-10','Lista uno'),(5,'2018-10-10','Lista dos'),(6,'2018-10-10','Lista tres');
/*!40000 ALTER TABLE `lista_espera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `listas`
--

DROP TABLE IF EXISTS `listas`;
/*!50001 DROP VIEW IF EXISTS `listas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listas` AS SELECT 
 1 AS `categoria`,
 1 AS `estado`,
 1 AS `fecha`,
 1 AS `nom_usuario`,
 1 AS `nom_in`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `modificarrep`
--

DROP TABLE IF EXISTS `modificarrep`;
/*!50001 DROP VIEW IF EXISTS `modificarrep`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `modificarrep` AS SELECT 
 1 AS `id_reporte`,
 1 AS `fecha_rep`,
 1 AS `desc_rep`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `participa_en`
--

DROP TABLE IF EXISTS `participa_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participa_en` (
  `id_curso` int NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_curso`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `participa_en_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario_interesado` (`id_usuario`),
  CONSTRAINT `participa_en_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participa_en`
--

LOCK TABLES `participa_en` WRITE;
/*!40000 ALTER TABLE `participa_en` DISABLE KEYS */;
INSERT INTO `participa_en` VALUES (1,4),(1,17),(2,4),(2,14),(2,15),(9,4),(9,20);
/*!40000 ALTER TABLE `participa_en` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `aumentar` BEFORE INSERT ON `participa_en` FOR EACH ROW begin
   update curso set num_a = num_a + 1 where id_curso = new.id_curso; 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `id_usuario` int NOT NULL,
  `puesto_usr` varchar(20) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `Usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Trabajador Social'),(2,'Administrador'),(3,'Secretario'),(6,'Administrador'),(16,'Trabajador Social');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `peticion`
--

DROP TABLE IF EXISTS `peticion`;
/*!50001 DROP VIEW IF EXISTS `peticion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `peticion` AS SELECT 
 1 AS `estado`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `repmensu`
--

DROP TABLE IF EXISTS `repmensu`;
/*!50001 DROP VIEW IF EXISTS `repmensu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `repmensu` AS SELECT 
 1 AS `id_infante`,
 1 AS `id_usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `fecha_rep` date DEFAULT NULL,
  `desc_rep` varchar(1000) NOT NULL,
  `id_infante` varchar(10) NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_infante` (`id_infante`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`id_infante`) REFERENCES `infante` (`id_infante`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
INSERT INTO `reporte` VALUES (1,'2020-12-04','La reunion se llevo a cabo y con normalidad','01P11',4),(4,'2020-12-06','Primer encuentro entre el adoptado y el posible adoptante','6M11',12),(7,'2020-12-05','Cita exitosa','1P11',15);
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actreporte` BEFORE UPDATE ON `reporte` FOR EACH ROW begin
  if(new.fecha_rep="0000-00-00") then 
    set new.fecha_rep = old.fecha_rep;
   end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reporte_entrada`
--

DROP TABLE IF EXISTS `reporte_entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte_entrada` (
  `id_rep` int NOT NULL AUTO_INCREMENT,
  `fecha_ent` date NOT NULL,
  `desc_situ` varchar(1000) NOT NULL,
  `nom_tutor` varchar(30) DEFAULT NULL,
  `ape_ptutor` varchar(20) DEFAULT NULL,
  `ape_mtutor` varchar(20) DEFAULT NULL,
  `id_infante` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_rep`),
  KEY `id_infante` (`id_infante`),
  CONSTRAINT `reporte_entrada_ibfk_1` FOREIGN KEY (`id_infante`) REFERENCES `infante` (`id_infante`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte_entrada`
--

LOCK TABLES `reporte_entrada` WRITE;
/*!40000 ALTER TABLE `reporte_entrada` DISABLE KEYS */;
INSERT INTO `reporte_entrada` VALUES (1,'1989-02-07','Fue dejado, tras haber experimentado violencia familiar','Juan ','Perez','Salva','1P2'),(2,'2018-01-30','Malas condiciones, se encuentra en proceso legal la familia','Mariela','Perez','Mares','1M3'),(3,'2019-11-07','','Teresa','Guillen','Ramos','2P9'),(4,'2019-09-13','Malas condiciones, vivia en pobreza extrema','Jose Ramon','Ruiz','Chavez','9M2'),(5,'2020-12-03','Buenas condiciones','','','','9P12'),(6,'2020-12-03','Llego a la casa hogar temparno, sin nadie que lo acompañara','','','','2M12'),(7,'2020-12-03','Buenas condiciones','','','','8P12'),(8,'2020-12-05','Buenas condiciones','','','','1P11'),(9,'2020-12-03','La trajo un familiar, ya que su famila original la abandono','Belinda','Cruz','Cruz','6M11'),(10,'2020-12-04','Se encontro afuera de la casa hogar','Mariana','Montañez','Torres','3P12'),(11,'2020-12-06','Buenas condiciones','','','','7P12'),(12,'2020-12-06','El infante se encontro afuera de la casa hogar','','','','3M12');
/*!40000 ALTER TABLE `reporte_entrada` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `fecharepent` BEFORE INSERT ON `reporte_entrada` FOR EACH ROW begin
  if(new.fecha_ent="0000-00-00")then
   set new.fecha_ent = sysdate();
   end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `id_solicitud` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(30) NOT NULL,
  `id_infante` varchar(30) DEFAULT NULL,
  `id_espera` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `id_infante` (`id_infante`),
  KEY `id_espera` (`id_espera`),
  CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`id_infante`) REFERENCES `infante` (`id_infante`),
  CONSTRAINT `solicitud_ibfk_3` FOREIGN KEY (`id_espera`) REFERENCES `lista_espera` (`id_espera`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (2,'En proceso','01P11',4,'2020-11-25'),(3,'Enviada',NULL,NULL,'2020-11-28'),(4,'En proceso',NULL,4,'2020-11-28'),(5,'En proceso',NULL,4,'2020-11-23'),(6,'En proceso','6M11',4,'2020-11-28'),(7,'En proceso','1P11',4,'2020-12-03'),(8,'Enviada',NULL,NULL,'2020-12-06'),(9,'Enviada',NULL,NULL,'2020-12-06');
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `fechasoli` BEFORE INSERT ON `solicitud` FOR EACH ROW begin
   set new.fecha = sysdate();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `solicituduser`
--

DROP TABLE IF EXISTS `solicituduser`;
/*!50001 DROP VIEW IF EXISTS `solicituduser`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `solicituduser` AS SELECT 
 1 AS `id_usuario`,
 1 AS `id_solicitud`,
 1 AS `estado`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nom_usuario` varchar(30) NOT NULL,
  `ape_puser` varchar(20) NOT NULL,
  `ape_musr` varchar(20) NOT NULL,
  `cel_usr` char(12) DEFAULT NULL,
  `tel_usr` char(12) DEFAULT NULL,
  `calle_usr` varchar(40) NOT NULL,
  `colonia_usr` varchar(20) NOT NULL,
  `municipio_usr` varchar(20) NOT NULL,
  `email_usr` varchar(30) NOT NULL,
  `contra` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Mariana','Montemayor','Salas','4492345456','4499887654','Amole','La florida','Aguascalientes','mariana123@hotmail.com','asbh43'),(2,'Sergio','Gomez','Gutierrez','4494545456','4499964354','De la cruz norte','La guadalupana','Aguascalientes','sergioguti@gmail.com','gutierrez123'),(3,'Santiago','Ramundo','Bunedia','4495645678','4495466789','La apalilla','La florida','Aguascalientes','ramundosanti@gmail.com','ramundo8976'),(4,'Alexia Teresa','Sanchez','Ruiz','4495641265','4495476689','Calle de los remedios','Santa anita II','Aguascalientes','ale323@gmail.com','321Alexia'),(6,'Juan Carlos','Sanchez','Palomares','4965941265','4495987689','Calle de los remedios','La florida','Aguascalientes','sanzh@gmail.com','almhd888'),(12,'Juan Jose','Sanchez','Palomo','4965941165','4495978689','Sartrenejo','La florida','Aguascalientes','josejuan@gmail.com','alg656'),(14,'Maria','Salazar','Montenegro','4499876566','4499098765','independencia','la loma','Aguascalientes','palo876@gmail.com','hola'),(15,'Juan Jose ','Medina','Perez','4490098765','4497878765','Independencia','Las flores','Aguascalientes','juen@hotmail.com','unodostres'),(16,'Perla','Sanchez','Palomares','4965976265','4499087689','Calle de los remedios','La florida','Aguascalientes','lkdh@gmail.com','auyuuhd888'),(17,'Juan Jose','Sanchez','Palomino','4490978876','4498987656','Independencia','La florida','Aguascalientes','josejuan@gmail.com','Hola'),(20,'Valeria','Molina','Fernandez','4498756453','4490987654','Las golondrinas','Jardines del lago','Aguascalientes','valery12@gmail.com','Hola');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_interesado`
--

DROP TABLE IF EXISTS `usuario_interesado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_interesado` (
  `id_usuario` int NOT NULL,
  `sexo` char(1) NOT NULL,
  `estado_c` varchar(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sueldo` int NOT NULL,
  `num_hijos` int DEFAULT NULL,
  `carta_pen` blob,
  `enf_cron` char(2) DEFAULT NULL,
  `vivienda_propia` char(2) DEFAULT NULL,
  `ocupacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  CONSTRAINT `usuario_interesado_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_interesado`
--

LOCK TABLES `usuario_interesado` WRITE;
/*!40000 ALTER TABLE `usuario_interesado` DISABLE KEYS */;
INSERT INTO `usuario_interesado` VALUES (4,'F','Casado','1982-10-10',12567,0,_binary '0','No','Si','Gerente'),(12,'M','Casado','1990-10-10',4500,0,'','No','Si','Gerente'),(14,'F','Casado','1989-06-06',4500,1,_binary 'C:\\fakepath\\escanear0002.pdf','No','Si','Secretaria'),(15,'M','Casado','1989-02-15',20000,0,_binary 'C:\\fakepath\\escanear0001.pdf','No','Si','Secretario público'),(17,'M','Casado','1983-07-12',15000,0,_binary 'C:\\fakepath\\escanear0001.pdf','No','Si','Gerente general Coca-Cola'),(20,'F','Casado','1996-02-14',32000,0,_binary 'C:\\fakepath\\escanear0002.pdf','No','Si','Gerente general en Sabritas');
/*!40000 ALTER TABLE `usuario_interesado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'difadopcion'
--

--
-- Dumping routines for database 'difadopcion'
--
/*!50003 DROP PROCEDURE IF EXISTS `actlista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actlista`()
BEGIN
 declare estado2 varchar(30);
   declare id_solicitud2 int;
   declare fecha2 date;
    declare verificar varchar(40);
 declare no_hay_mas_registros int default 0;
  declare cursor7 cursor for select id_solicitud,estado,fecha from Solicitud;
  declare continue handler for not found set no_hay_mas_registros = 1;

  open cursor7;
  loop1: LOOP
   fetch cursor7 into id_solicitud2,estado2,fecha2;
   if(estado2 = "En proceso" ) then
     if((year(sysdate())-year(fecha2)) > 2) then 
       update solicitud set id_espera = 6 where id_solicitud = id_solicitud2;
	 else if((year(sysdate())-year(fecha2)) > 1) then 
      update solicitud set id_espera = 5 where id_solicitud = id_solicitud2;
      else
      update solicitud set id_espera = 4 where id_solicitud = id_solicitud2;
      end if;
	 end if;
   end if;
   IF (no_hay_mas_registros = 1) THEN
    LEAVE loop1;
    END IF;
   end loop;
    close cursor7;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actsolicitud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actsolicitud`(
in estado2 varchar(30),
in id_solicitud2 int,
in id_infante2 varchar(15))
BEGIN
   declare estado3 varchar(30);
   declare id_infante3 varchar(15);
   
    declare verificar varchar(40);
 declare no_hay_mas_registros int default 0;
  declare cursor5 cursor for select id_infante,est_adop from Infante;
  declare continue handler for not found set no_hay_mas_registros = 1;
  set verificar ="No Existe";
  open cursor5;
  loop1: LOOP
   fetch cursor5 into id_infante3,estado3;
   if((id_infante3 = id_infante2) and (estado3 = "En proceso" or estado3 ="Adoptado") ) then
     set verificar = "Existe";
   end if;
   IF (no_hay_mas_registros = 1) THEN
    LEAVE loop1;
    END IF;
   end loop;
    close cursor5;
    if(verificar = "No Existe") then
    update Solicitud set estado = estado2,id_infante =id_infante2 where id_solicitud=id_solicitud2;
    update Infante set est_adop = "En proceso" where id_infante = id_infante2;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearCurso`(
in duracion_c2 time,
in fecha_c2 date,
in nom_c2 varchar(60),
in num_a2 int,
in id_usuario2 int)
BEGIN
declare nomcurso varchar(60);
 declare esta varchar(40);
 declare no_hay_mas_registros int default 0;
  declare cursor1 cursor for select nom_c from curso;
  declare continue handler for not found set no_hay_mas_registros = 1;
  set esta ="No Existe";
  open cursor1;
  loop1: LOOP
   fetch cursor1 into nomcurso;
   if(nomcurso = nom_c2) then
     set esta = "Existe";
   end if;
   IF (no_hay_mas_registros = 1) THEN
    LEAVE loop1;
    END IF;
   end loop;
    close cursor1;
   if(esta = "No Existe") then
   if(select id_usuario from Personal where id_usuario = id_usuario2 )then
   insert into Curso(duracion_c,fecha_c,nom_c,num_a,id_usuario) 
      values(duracion_c2,fecha_c2,nom_c2,num_a2,id_usuario2);
     end if;
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearReporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearReporte`(
in fecha_rep2 date,
in desc_rep2 varchar(1000),
in id_infante2 varchar(10),
in id_usuario2 int)
BEGIN
   if((select id_infante from repmensu where id_usuario = id_usuario2 and id_infante =id_infante2)) then
       insert into Reporte(fecha_rep,desc_rep,id_infante,id_usuario) 
       values(fecha_rep2,desc_rep2,id_infante2,id_usuario2);
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crearSoli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crearSoli`(
in estado2 varchar(30),
in id_usuario2 int)
BEGIN
  declare id int;
  call insertarSoli(estado2);
  set id = (select max(id_solicitud) from Solicitud);
  insert into Cuenta_con (id_usuario,id_solicitud) values(id_usuario2,id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inscripcionCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscripcionCurso`(
in id_curso2 int,
in id_usuario2 int
)
BEGIN
declare ide int;
 declare numero int;
 declare numero2 int;
 declare no_hay_mas_registros int default 0;
  declare cursor6 cursor for select id_curso, num_a from curso;
  declare continue handler for not found set no_hay_mas_registros = 1;
  open cursor6;
  loop1: LOOP
   fetch cursor6 into ide,numero;
   if(ide = id_curso2) then
     set numero2 = numero;
   end if;
   IF (no_hay_mas_registros = 1) THEN
    LEAVE loop1;
    END IF;
   end loop;
    close cursor6;
    if(numero2 < 26)then
       insert into participa_en(id_curso,id_usuario) values(id_curso2,id_usuario2);
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarempl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarempl`(in nom_usuario2 varchar(30),
in ape_puser2 varchar(20),
in ape_musr2  varchar(20),
in cel_usr2 char(12),
in tel_usr2 char(15),
in calle_usr2 varchar(40),
in colonia_usr2 varchar(20),
in municipio_usr2 varchar(20),
in email_usr2 varchar(30),
in contra2 varchar(50),
in puesto_usr2 varchar(20))
BEGIN
   declare id int;
   declare nom_usuario3 varchar(30);
   declare ape_puser3 varchar(20);
   declare ape_musr3  varchar(20);
   declare email_usr3 varchar(30);
    declare ver varchar(40);
 declare no_hay_mas_registros int default 0;
  declare cursor2 cursor for select nom_usuario,ape_puser,ape_musr,email_usr from usuario;
  declare continue handler for not found set no_hay_mas_registros = 1;
  set ver ="No Existe";
  open cursor2;
  loop1: LOOP
   fetch cursor2 into nom_usuario3,ape_puser3, ape_musr3,email_usr3;
   if((nom_usuario3 = nom_usuario2) and (ape_puser2 = ape_puser3) and (ape_musr2 = ape_musr3) and(email_usr2=email_usr3) ) then
     set ver = "Existe";
   end if;
   IF (no_hay_mas_registros = 1) THEN
    LEAVE loop1;
    END IF;
   end loop;
    close cursor2;
    if(ver = "No Existe") then
  call InsertarEmpleados(nom_usuario2, ape_puser2,ape_musr2,cel_usr2,tel_usr2, calle_usr2, colonia_usr2, municipio_usr2,email_usr2,contra2);
  set id = (select max(id_usuario) from Usuario);
  insert into Personal (id_usuario,puesto_usr) values(id,puesto_usr2);
  end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarEmpleados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEmpleados`(in nom_usuario2 varchar(30),
in ape_puser2 varchar(20),
in ape_musr2  varchar(20),
in cel_usr2 char(12),
in tel_usr2 char(15),
in calle_usr2 varchar(40),
in colonia_usr2 varchar(20),
in municipio_usr2 varchar(20),
in email_usr2 varchar(30),
in contra2 varchar(50))
insert into Usuario
   (nom_usuario, ape_puser,ape_musr,cel_usr,tel_usr, calle_usr, colonia_usr, municipio_usr,email_usr,contra)
   values(nom_usuario2, ape_puser2,ape_musr2,cel_usr2,tel_usr2, calle_usr2, colonia_usr2, municipio_usr2,email_usr2,contra2) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarInteresado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarInteresado`(
in nom_usuario2 varchar(30),
in ape_puser2 varchar(20),
in ape_musr2  varchar(20),
in cel_usr2 char(12),
in tel_usr2 char(15),
in calle_usr2 varchar(40),
in colonia_usr2 varchar(20),
in municipio_usr2 varchar(20),
in email_usr2 varchar(30),
in contra2 varchar(50),
in sexo2 char,
in estado_c2 varchar(20),
in fecha_nac2 date,
in sueldo2 int,
in num_hijos2 int,
in carta_pen2 blob,
in enf_cron2 char(2),
in vivienda_propia2 char(2),
in ocupacion2 varchar(50) 
)
BEGIN
declare id int;
 declare nom_usuario3 varchar(30);
   declare ape_puser3 varchar(20);
   declare ape_musr3  varchar(20);
   declare email_usr3 varchar(30);
    declare ver varchar(40);
 declare no_hay_mas_registros int default 0;
  declare cursor3 cursor for select nom_usuario,ape_puser,ape_musr,email_usr from usuario;
  declare continue handler for not found set no_hay_mas_registros = 1;
  set ver ="No Existe";
  open cursor3;
  loop1: LOOP
   fetch cursor3 into nom_usuario3,ape_puser3, ape_musr3,email_usr3;
   if((nom_usuario3 = nom_usuario2) and (ape_puser2 = ape_puser3) and (ape_musr2 = ape_musr3) and(email_usr2=email_usr3) ) then
     set ver = "Existe";
   end if;
   IF (no_hay_mas_registros = 1) THEN
    LEAVE loop1;
    END IF;
   end loop;
    close cursor3;
    if(ver = "No Existe") then
  call InsertarEmpleados(nom_usuario2, ape_puser2,ape_musr2,cel_usr2,tel_usr2, calle_usr2, colonia_usr2, municipio_usr2,email_usr2,contra2);
  set id = (select max(id_usuario) from Usuario);
  insert into Usuario_Interesado (id_usuario,sexo,estado_c,fecha_nac,sueldo,num_hijos,carta_pen, enf_cron,vivienda_propia,ocupacion) values(id,sexo2,estado_c2,fecha_nac2,sueldo2,num_hijos2,carta_pen2, enf_cron2,vivienda_propia2,ocupacion2);
  end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarSoli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarSoli`(
in estado2 varchar(30))
BEGIN
   insert into peticion(estado) values(estado2);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevoInfante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoInfante`(
in id_infante2 varchar(15),
in nom_in2 varchar(30),
in ape_pinf2 varchar(20),
in ape_minf2  varchar(20),
in fechaN_in2 date,
in sexo2 char,
in fecha_ent2 date,
in desc_situ2 varchar(1000),
in nom_tutor2 varchar(30),
in ape_ptutor2 varchar(20),
in ape_mtutor2  varchar(20))
BEGIN

   declare nom_infante varchar(30);
   declare ape_infante varchar(20);
   declare ape_minfante  varchar(20);
   declare fechain date;
    declare ver varchar(40);
 declare no_hay_mas_registros int default 0;
  declare cursor4 cursor for select nom_in,ape_pinf, ape_minf from Infante;
  declare continue handler for not found set no_hay_mas_registros = 1;
  set ver ="No Existe";
  open cursor4;
  loop1: LOOP
   fetch cursor4 into nom_infante,ape_infante,ape_minfante;
   if((nom_infante = nom_in2) and (ape_pinf2 = ape_infante) and (ape_minf2 = ape_minfante) ) then
     set ver = "Existe";
   end if;
   IF (no_hay_mas_registros = 1) THEN
    LEAVE loop1;
    END IF;
   end loop;
    close cursor4;
    if(ver = "No Existe") then
     insert into Infante (id_infante,nom_in, ape_pinf,ape_minf,fechaN_in, sexo) values(id_infante2,nom_in2, ape_pinf2,ape_minf2,fechaN_in2, sexo2);
     insert into Reporte_Entrada (fecha_ent,desc_situ,nom_tutor, ape_ptutor,ape_mtutor,id_infante) values(fecha_ent2,desc_situ2,nom_tutor2, ape_ptutor2,ape_mtutor2,id_infante2);
  end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `involucrados`
--

/*!50001 DROP VIEW IF EXISTS `involucrados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `involucrados` AS select `reporte`.`id_reporte` AS `id_reporte`,`reporte`.`fecha_rep` AS `fecha_rep`,`reporte`.`desc_rep` AS `desc_rep`,`reporte`.`id_infante` AS `id_infante`,`reporte`.`id_usuario` AS `id_usuario`,`usuario`.`nom_usuario` AS `nom_usuario`,`infante`.`nom_in` AS `nom_in` from ((`reporte` join `usuario`) join `infante`) where ((`reporte`.`id_usuario` = `usuario`.`id_usuario`) and (`reporte`.`id_infante` = `infante`.`id_infante`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listas`
--

/*!50001 DROP VIEW IF EXISTS `listas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listas` AS select `l`.`categoria` AS `categoria`,`s`.`estado` AS `estado`,`s`.`fecha` AS `fecha`,`u`.`nom_usuario` AS `nom_usuario`,`i`.`nom_in` AS `nom_in` from (((((`lista_espera` `l` join `usuario` `u`) join `usuario_interesado` `ui`) join `infante` `i`) join `cuenta_con` `cu`) join `solicitud` `s`) where ((`s`.`id_espera` = `l`.`id_espera`) and (`s`.`id_infante` = `i`.`id_infante`) and (`s`.`id_solicitud` = `cu`.`id_solicitud`) and (`cu`.`id_usuario` = `u`.`id_usuario`) and (`u`.`id_usuario` = `ui`.`id_usuario`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `modificarrep`
--

/*!50001 DROP VIEW IF EXISTS `modificarrep`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `modificarrep` AS select `reporte`.`id_reporte` AS `id_reporte`,`reporte`.`fecha_rep` AS `fecha_rep`,`reporte`.`desc_rep` AS `desc_rep` from `reporte` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `peticion`
--

/*!50001 DROP VIEW IF EXISTS `peticion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `peticion` AS select `solicitud`.`estado` AS `estado`,`solicitud`.`fecha` AS `fecha` from `solicitud` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `repmensu`
--

/*!50001 DROP VIEW IF EXISTS `repmensu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `repmensu` AS select `i`.`id_infante` AS `id_infante`,`ui`.`id_usuario` AS `id_usuario` from ((((`usuario` `u` join `usuario_interesado` `ui`) join `infante` `i`) join `cuenta_con` `cu`) join `solicitud` `s`) where ((`s`.`id_infante` = `i`.`id_infante`) and (`s`.`id_solicitud` = `cu`.`id_solicitud`) and (`cu`.`id_usuario` = `u`.`id_usuario`) and (`u`.`id_usuario` = `ui`.`id_usuario`) and (`s`.`estado` = 'En proceso')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `solicituduser`
--

/*!50001 DROP VIEW IF EXISTS `solicituduser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `solicituduser` AS select `cuenta_con`.`id_usuario` AS `id_usuario`,`solicitud`.`id_solicitud` AS `id_solicitud`,`solicitud`.`estado` AS `estado`,`solicitud`.`fecha` AS `fecha` from (`solicitud` join `cuenta_con` on((`solicitud`.`id_solicitud` = `cuenta_con`.`id_solicitud`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-06 13:38:42
