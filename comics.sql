-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: comics
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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

--
-- Current Database: `comics`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `comics` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `comics`;

--
-- Table structure for table `Autor`
--

DROP TABLE IF EXISTS `Autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autor`
--

LOCK TABLES `Autor` WRITE;
/*!40000 ALTER TABLE `Autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comics`
--

DROP TABLE IF EXISTS `Comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) NOT NULL,
  `imagen` varchar(32) NOT NULL,
  `autor` int(11) NOT NULL,
  `descripcion` varchar(256) NOT NULL,
  `año` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_autor_id` (`autor`),
  CONSTRAINT `fk_autor_id` FOREIGN KEY (`autor`) REFERENCES `Autor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comics`
--

LOCK TABLES `Comics` WRITE;
/*!40000 ALTER TABLE `Comics` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 18:41:08
