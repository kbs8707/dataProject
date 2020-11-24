CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `accountID` int NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `contactNum` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` binary(45) DEFAULT NULL,
  `ccNum` binary(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'k','s',123,'email',NULL,NULL,'aaa'),(2,'Paolina','Pantone',457149783,'ppantone1@noaa.gov',_binary 'pBRK5td\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '4659\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','ppantone1'),(3,'Brittany','Gaytor',289092819,'bgaytor2@ihg.com',_binary '3vgJh6V4\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '1195\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','bgaytor2'),(4,'Mikol','Slight',783586028,'mslight3@ezinearticles.com',_binary 'FAQokM\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '8831\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','mslight3'),(5,'Luz','Nibloe',491060234,'lnibloe4@hugedomains.com',_binary '5jgiKgX\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '8640\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','lnibloe4'),(6,'Kennie','Alsop',888295056,'kalsop5@ucoz.com',_binary 'y7hzJzIB7\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '6674\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','kalsop5'),(7,'Garrek','MacTague',498288219,'gmactague6@imdb.com',_binary 'lfhG1aKb3Z7\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '2873\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','gmactague6'),(8,'Karna','Gaw',235192995,'kgaw7@storify.com',_binary 'rCCT8GDy\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '7462\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','kgaw7'),(9,'Vilhelmina','Amsberger',406542976,'vamsberger8@cdbaby.com',_binary 'dkUmqTTeEjS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '8874\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','vamsberger8'),(10,'Kenyon','Dunguy',834352270,'kdunguy9@pen.io',_binary 'rxqWBbKfoT\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '1804\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','kdunguy9'),(11,'Sondra','Luparto',627098983,'slupartoa@google.cn',_binary 'lXq3MH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '5005\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','slupartoa'),(12,'Sigrid','Haldin',315823899,'shaldinb@soup.io',_binary 'r8BrglCAN3Z5\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '4409\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','shaldinb'),(13,'Natal','Parsisson',674431784,'nparsissonc@slashdot.org',_binary 'nUJELa6o\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '5695\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','nparsissonc'),(14,'Idalia','Vuitton',901771662,'ivuittond@cbslocal.com',_binary 'fo4ebZ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '1050\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','ivuittond'),(15,'Ewart','Gaynesford',699718377,'egaynesforde@dagondesign.com',_binary 'pFLLCmWyMAH3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '4457\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','egaynesforde'),(16,'Shurlock','Nanson',785112023,'snansonf@qq.com',_binary 'd0eBEQM\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '9583\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','snansonf'),(17,'Constantine','Aloshkin',515037624,'caloshking@dyndns.org',_binary 'VqoVWERbbHb\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '7655\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','caloshking'),(18,'Justin','Maykin',268633626,'jmaykinh@nationalgeographic.com',_binary '0XVU1M\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '3998\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','jmaykinh'),(19,'Demott','Antrum',543831988,'dantrumi@examiner.com',_binary 'mWvFvZ1ubIhK\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '3988\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','dantrumi'),(20,'Honoria','Slaney',474160979,'hslaneyj@spiegel.de',_binary 'rHo5CU1X\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '1753\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','hslaneyj'),(21,'Quinta','Dillinger',297642639,'qdillingerk@webmd.com',_binary 'FlIqFJneP\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '9228\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','qdillingerk'),(22,'Collete','Le Fevre',741230429,'clefevrel@archive.org',_binary 'Gs7G2XF8I\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '2598\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','clefevrel'),(23,'Alyosha','Haulkham',943787665,'ahaulkhamm@icq.com',_binary 'WEb7F3fIZuJ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '8029\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','ahaulkhamm'),(24,'Raina','Harbord',205536906,'rharbordn@wiley.com',_binary 'puaJ9Ja6Nn\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '6383\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','rharbordn'),(25,'Marthe','Engall',735158829,'mengallo@senate.gov',_binary 'N3rXh75djqL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '8396\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','mengallo'),(26,'Roda','Matysik',416742578,'rmatysikp@tripod.com',_binary 'xmgULu\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '1151\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','rmatysikp'),(27,'Mel','Mumbray',600820464,'mmumbrayq@freewebs.com',_binary 'mY1vLaa\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '8013\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','mmumbrayq'),(28,'Gare','Scantleberry',342782323,'gscantleberryr@bizjournals.com',_binary 'pX9uoJ9lpX\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '5379\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','gscantleberryr'),(29,'Adda','Bland',400848524,'ablands@cdc.gov',_binary 'PpswyXTE5b\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '9714\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','ablands'),(30,'Christy','Adamovitch',376310144,'cadamovitcht@miitbeian.gov.cn',_binary 'YVbiSq5K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '5029\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','cadamovitcht'),(31,'Janna','Worpole',177984129,'jworpoleu@geocities.com',_binary 'fAmbNrjDyte1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '5690\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','jworpoleu'),(32,'Jany','Willerton',800028248,'jwillertonv@mapquest.com',_binary 'VEkEKt\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '4585\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','jwillertonv'),(33,'Toma','Forde',120320237,'tfordew@pinterest.com',_binary 'cAaTv3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '8699\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','tfordew'),(34,'Mendel','Alanbrooke',647751701,'malanbrookex@mashable.com',_binary 'cTXDDS3j1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',_binary '2606\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','malanbrookex');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket` (
  `basketID` int NOT NULL,
  `basketNo` int DEFAULT NULL,
  `currentbuyerID` int DEFAULT NULL,
  `currproductID` int DEFAULT NULL,
  PRIMARY KEY (`basketID`),
  KEY `currentbuyerID_idx` (`currentbuyerID`),
  KEY `currProductID_idx` (`currproductID`),
  CONSTRAINT `currentbuyerID` FOREIGN KEY (`currentbuyerID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currProductID` FOREIGN KEY (`currproductID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` VALUES (1,1,1,3),(2,2,1,25),(3,1,2,23),(4,2,2,50),(5,3,2,65),(6,1,4,30),(7,1,6,1),(8,1,8,9),(9,1,9,2),(10,2,9,20),(11,1,15,65),(12,1,12,66),(13,1,30,67),(14,2,30,71),(15,1,33,58),(16,1,24,45),(17,1,5,43),(18,1,17,38),(19,1,20,33),(20,2,20,62);
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookID` int NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'The Hobbit','J. R. R. Tolkien','Fantasy',304,'Hardcover'),(2,'The Fellowship of the Ring','J. R. R. Tolkien','Fantasy',479,'Hardcover'),(3,'The Two Towers','J. R. R. Tolkien','Fantasy',415,'Hardcover'),(4,'Harry Potter and the Philospher\'s Stone','J. K. Rowling','Fantasy',223,'Softcover'),(5,'Harry Potter and the Chamber of Secrets','J. K. Rowling','Fantasy',251,'Softcover'),(6,'Harry Potter and the Prisoner of Azkaban','J. K. Rowling','Fantasy',317,'Softcover'),(7,'Harry Potter and the Goblet of Fire','J. K. Rowling','Fantasy',636,'Softcover'),(8,'A Clash of Kings','George R. R. Martin','Fantasy',768,'Softcover'),(9,'A Storm of Swords','George R. R. Martin','Fantasy',845,'Softcover'),(10,'A Feast for Crows','George R. R. Martin','Fantasy',973,'Softcover'),(11,'A Dance With Dragons','George R. R. Martin','Fantasy',753,'Softcover'),(12,'The Winds of Winter','George R. R. Martin','Fantasy',824,'Softcover'),(13,'A Dream of Spring','George R. R. Martin','Fantasy',902,'Softcover'),(14,'The Hunger Games','Suzanne Collins','Action',374,'Softcover'),(15,'Catching Fire','Suzanne Collins','Action',391,'Softcover'),(16,'Mockingjay','Suzanne Collins','Action',390,'Softcover'),(17,'1914',' James Farner','Historic',199,'Hardcover'),(18,'1915',' James Farner','Historic',199,'Hardcover'),(19,'1916',' James Farner','Historic',203,'Hardcover'),(20,'1917',' James Farner','Historic',205,'Hardcover'),(21,'World War Z','Max Brooks','Horror',342,'Softcover'),(22,'It',' Stephen King','Horror',1116,'Hardcover'),(23,'The Shining',' Stephen King','Horror',659,'Softcover'),(24,'The Stand',' Stephen King','Horror',1153,'Softcover'),(25,'Misery',' Stephen King','Horror',370,'Hardcover'),(26,'Deception Point','Dan Brown','Action',372,'Softcover'),(27,'Divergent','Veronica Roth','Action',487,'Hardcover'),(28,'The Exorcist','William Peter Blatty','Horror',340,'Softcover'),(29,'Grand Blue','Kenji Inoue','Manga',108,'Softcover'),(30,'Gintama ','Hideaki Sorachi','Manga',205,'Softcover'),(31,'War and Peace','Leo Tolstoy','Historic',1225,'Hardcover'),(32,'The End','John Borgen','Horror',460,'Hardcover'),(33,'Light and Dark','Suzie McKinnie','Action',380,'Softcover');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` int NOT NULL,
  `bookID` int DEFAULT NULL,
  `condition` varchar(45) DEFAULT NULL,
  `productsellerID` int DEFAULT NULL,
  `price` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`productID`),
  KEY `bookID_idx` (`bookID`),
  KEY `sellerID_idx` (`productsellerID`),
  CONSTRAINT `bookID` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productSellerID` FOREIGN KEY (`productsellerID`) REFERENCES `sellerinfo` (`sellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'new',3,23.20),(2,2,'new',3,23.50),(3,3,'new',3,22.00),(4,1,'used',1,20.00),(5,1,'used',5,18.00),(6,2,'used',5,18.00),(7,3,'used',5,18.00),(8,4,'new',3,20.00),(9,5,'new',3,22.80),(10,6,'new',3,21.40),(11,6,'new',4,21.40),(12,5,'used',1,16.00),(13,7,'new',3,24.00),(14,7,'used',2,20.00),(15,8,'new',1,30.00),(16,8,'used',2,22.00),(17,9,'new',1,31.75),(18,9,'new',3,29.99),(19,9,'new',7,28.88),(20,10,'new',7,32.50),(21,10,'new',3,34.00),(22,10,'used',5,25.00),(23,11,'new',7,31.25),(24,11,'new',4,30.98),(25,12,'new',6,30.00),(26,12,'used',8,25.99),(27,13,'new',3,32.50),(28,13,'new',4,29.99),(29,13,'used',5,25.00),(30,14,'used',5,22.00),(31,14,'new',1,23.50),(32,14,'new',8,21.00),(33,14,'new',7,22.50),(34,14,'new',3,22.00),(35,15,'new',7,19.99),(36,15,'used',2,20.98),(37,16,'new',7,18.00),(38,16,'new',7,18.50),(39,17,'new',2,20.00),(40,17,'new',1,20.00),(41,17,'used',4,19.00),(42,18,'new',7,17.50),(43,18,'new',1,18.99),(44,19,'used',8,14.99),(45,19,'new',2,16.00),(46,20,'new',5,18.40),(47,21,'new',3,14.00),(48,21,'new',4,13.28),(49,21,'new',1,13.00),(50,22,'used',7,9.50),(51,22,'new',5,12.00),(52,22,'new',6,13.00),(53,23,'new',1,8.99),(54,23,'new',4,9.50),(55,24,'used',8,8.00),(56,24,'new',5,11.00),(57,25,'new',1,12.50),(58,25,'new',2,13.00),(59,26,'used',6,8.99),(60,26,'used',3,9.50),(61,26,'new',5,10.75),(62,27,'new',7,12.00),(63,27,'new',1,13.40),(64,27,'used',4,8.88),(65,28,'new',5,9.50),(66,28,'used',6,10.00),(67,29,'used',8,7.50),(68,30,'used',8,8.50),(69,31,'new',7,12.00),(70,31,'used',3,9.00),(71,31,'new',4,11.50);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewID` int NOT NULL,
  `sellerID` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`reviewID`),
  KEY `sellerID_idx` (`sellerID`),
  CONSTRAINT `reviewsellerID` FOREIGN KEY (`sellerID`) REFERENCES `sellerinfo` (`sellerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,3,9,'Book is good'),(2,4,8,'New book, came on time'),(3,1,10,'Brand new conidiotn and came very fast'),(4,5,4,'was in bad conidition'),(5,2,7,'i like it'),(6,3,8,'Book was in good condition'),(7,5,9,'quick and good condition'),(8,6,10,'nice price'),(9,7,8,'Book was in good condition'),(10,3,9,'amazing'),(11,2,10,'very nice'),(12,8,2,'book was in bad condition'),(13,7,10,'highely recommend'),(14,6,9,'amazinggg'),(15,8,10,'very good seller'),(16,3,10,'nice book'),(17,4,9,'great'),(18,7,10,'perfect'),(19,3,10,'just what i wanted!');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellerinfo`
--

DROP TABLE IF EXISTS `sellerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellerinfo` (
  `sellerID` int NOT NULL,
  `sellerName` varchar(45) DEFAULT NULL,
  `verified` tinyint DEFAULT NULL,
  `accountID` int DEFAULT NULL,
  PRIMARY KEY (`sellerID`),
  CONSTRAINT `accountID` FOREIGN KEY (`sellerID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellerinfo`
--

LOCK TABLES `sellerinfo` WRITE;
/*!40000 ALTER TABLE `sellerinfo` DISABLE KEYS */;
INSERT INTO `sellerinfo` VALUES (1,'Roda',1,26),(2,'Mel',1,27),(3,'GoodBooks',1,28),(4,'SmartRead',1,29),(5,'Christy',0,30),(6,'Janna',1,31),(7,'LibNovel',1,32),(8,'Toma',0,33),(9,'Sigrid',0,12),(10,'Natal',0,13);
/*!40000 ALTER TABLE `sellerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transactionID` int NOT NULL,
  `productID` int DEFAULT NULL,
  `buyerID` int DEFAULT NULL,
  `transactionsellerID` int DEFAULT NULL,
  `orderID` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` decimal(4,2) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `shippingAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transactionID`),
  KEY `buyerID_idx` (`buyerID`),
  KEY `transactionsellerID_idx` (`transactionsellerID`),
  KEY `productID_idx` (`productID`),
  CONSTRAINT `buyerID` FOREIGN KEY (`buyerID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productID` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactionsellerID` FOREIGN KEY (`transactionsellerID`) REFERENCES `account` (`accountID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,2,30,3,1,'2020-07-04',23.50,'complete','450 Stree, USA'),(2,3,30,3,1,'2020-07-04',22.00,'complete','450 Stree, USA'),(3,8,23,3,2,'2020-08-10',20.00,'complete','34 Here, China'),(4,32,1,8,3,'2020-08-15',21.00,'complete','435 A Place'),(5,70,22,3,4,'2020-07-21',9.00,'complete','450 Stree, USA'),(6,65,26,5,5,'2020-08-05',9.50,'complete','16 Road Avenu, Canada'),(7,68,8,8,6,'2020-10-12',8.50,'pending','536 Igloo, Canada'),(8,54,5,4,7,'2020-08-30',9.50,'complete','783 Here, Japan'),(9,22,9,5,8,'2020-08-05',25.00,'complete','420 live, Australia'),(10,7,23,5,2,'2020-08-10',18.00,'complete','443 Yo, Canada'),(11,23,28,7,9,'2020-07-28',31.25,'complete','3434 Falls, USA'),(12,29,34,5,10,'2020-07-02',25.00,'complete','756 Place, USA'),(13,50,2,7,11,'2020-11-21',9.50,'complete','353 Yo, Taiwan'),(14,52,2,6,12,'2020-08-02',13.00,'complete','852 Avenue, Germany'),(15,69,20,7,13,'2020-11-05',12.00,'complete','Burgods Road, England'),(16,67,18,8,14,'2020-11-12',7.50,'pending','Halioland, England'),(17,63,19,1,15,'2020-08-01',13.40,'complete','235 I Live Here, Canada'),(18,1,7,3,16,'2020-11-21',23.20,'complete','877 Yo, USA'),(19,40,2,1,17,'2020-11-20',20.00,'complete','935 shipHere, Germany'),(20,42,5,7,18,'2020-08-28',17.50,'pending','74 Here, Canada'),(21,49,28,1,19,'2020-07-09',13.00,'complete','856 Rooftop, Norway'),(22,56,32,5,20,'2020-11-29',11.00,'complete','75 Skys, USA'),(23,31,30,1,1,'2020-07-04',23.50,'pending','450 Stree, USA'),(24,38,20,7,13,'2020-11-10',18.00,'complete','746 Underwater, USA'),(25,39,2,2,17,'2020-07-15',20.00,'complete','23 Here, Canada'),(26,37,8,7,6,'2020-11-08',25.99,'pending','999 A place, USA'),(27,45,9,2,8,'2020-08-22',16.00,'complete','124 Island, Denmark'),(28,24,15,4,21,'2020-08-29',29.99,'complete','344 Island, Denmark'),(29,34,19,3,22,'2020-07-30',22.00,'pending','424 Home, Canada'),(30,39,30,2,1,'2020-07-04',20.00,'complete','450 Stree, USA');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24 14:30:45
