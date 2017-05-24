CREATE DATABASE  IF NOT EXISTS `avcb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `avcb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: avcb
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `aid` varchar(45) NOT NULL,
  `app_date` varchar(45) DEFAULT NULL,
  `app_hour` varchar(45) DEFAULT NULL,
  `ped_id` varchar(45) DEFAULT NULL,
  `vet_id` varchar(45) DEFAULT NULL,
  `vet_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES ('appointment1','25-05-2017','10:00','pet1','3','Kasob'),('appointment2','21-05-2017','11:00','pet2','1','Bimol'),('appointment3','25-05-2017','9:00','pet3','1','Kamal'),('appointment4','25-05-2017','17:00','pet4','7','Kadar');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boarding`
--

DROP TABLE IF EXISTS `boarding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boarding` (
  `bid` varchar(45) NOT NULL,
  `pet_id` varchar(45) DEFAULT NULL,
  `boarding_date` varchar(45) DEFAULT NULL,
  `boarding_hour` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boarding`
--

LOCK TABLES `boarding` WRITE;
/*!40000 ALTER TABLE `boarding` DISABLE KEYS */;
INSERT INTO `boarding` VALUES ('boarding1','pet1','21-05-2017','6'),('boarding2','pet2','20-05-2017','4'),('boarding3','pet3','22-05-2017','10'),('boarding4','pet4','20-05-2017','7');
/*!40000 ALTER TABLE `boarding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bstaff`
--

DROP TABLE IF EXISTS `bstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bstaff` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bstaff`
--

LOCK TABLES `bstaff` WRITE;
/*!40000 ALTER TABLE `bstaff` DISABLE KEYS */;
INSERT INTO `bstaff` VALUES (2,'Orchi K','123','o@gmail.com','Mirpur','bs1','123');
/*!40000 ALTER TABLE `bstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cid` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('customer1','Gury','223','c@gmail.com','Dhaka'),('customer2','Alam','3355','arafatniaz@gmail.com','Firmgate'),('customer3','Mithun','2424433','me@gmail.com','Jassor'),('customer4','Orchi Khandoker','224234','o@gmail.com','Mirpur'),('customer5','Nahid','34343','niazarafat007@gmail.com','Gazipur'),('customer6','ddf','sdf','asdfsdf','sdf'),('customer7','ds','adf','asd','ad');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'Chabed','12345','c@gmail.com','Mirpur','m1','123'),(2,'Hasan','25896','h@gmail.com','Mirpur','m2','123');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet` (
  `pid` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `pet_species` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `customer_id` varchar(45) DEFAULT 'no',
  `status` varchar(45) DEFAULT NULL,
  `fed_time` varchar(45) DEFAULT NULL,
  `seen` varchar(10) DEFAULT 'no',
  `diagnosis` varchar(450) DEFAULT NULL,
  `prognosis` varchar(450) DEFAULT NULL,
  `charge` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES ('pet1','Householdpet','Dog','Tomi','customer1','ill','21-05-2017  at  09:39:22 PM','seen','add something','add something','100'),('pet2','Bird','Bird','Tota','customer2','Critically ill','21-05-2017  at  06:05:01 PM','seen','Break left hand','Contrast','250'),('pet3','Amphibian','Snake','cobra','customer3','ill','21-05-2017  at  06:05:12 PM','seen','injure in legs badly','have other problem','150'),('pet4','Householdpet','Cat','SUSU','customer4',NULL,NULL,NULL,NULL,NULL,NULL),('pet5','Householdpet','Dog','fufu','customer5',NULL,NULL,NULL,NULL,NULL,NULL),('pet6','Amphibian','sdf','sdf','customer6',NULL,NULL,NULL,NULL,NULL,NULL),('pet7','Householdpet','asdf','adf','customer7',NULL,'24-05-2017  at  03:17:18 PM',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receptionist` (
  `repid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`repid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptionist`
--

LOCK TABLES `receptionist` WRITE;
/*!40000 ALTER TABLE `receptionist` DISABLE KEYS */;
INSERT INTO `receptionist` VALUES (1,'Alamin','123','chabedalam@gmail.com','Dhanmondi','r1','123'),(2,'saaran','12345','SA@gamal.com','Azimpur','r2','123');
/*!40000 ALTER TABLE `receptionist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota`
--

DROP TABLE IF EXISTS `rota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rota` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rota_date` varchar(45) DEFAULT NULL,
  `saturday` varchar(45) DEFAULT NULL,
  `sunday` varchar(45) DEFAULT NULL,
  `monday` varchar(45) DEFAULT NULL,
  `tuesday` varchar(45) DEFAULT NULL,
  `wrdnesday` varchar(45) DEFAULT NULL,
  `thursday` varchar(45) DEFAULT NULL,
  `friday` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota`
--

LOCK TABLES `rota` WRITE;
/*!40000 ALTER TABLE `rota` DISABLE KEYS */;
INSERT INTO `rota` VALUES (7,'19-05-17 09:26:23','5,3,5','4,3,1','4,3,3','5,4,4','3,6,3','4,4,1','5,5,5'),(8,'19-05-17 10:31:09','1,1,1','1,1,1','1,1,1','1,1,1','1,1,1','1,1,1','1,1,1'),(9,'24-05-17 03:15:16','3,6,5','1,1,1','1,1,1','1,1,1','1,1,1','1,1,1','1,1,1');
/*!40000 ALTER TABLE `rota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vet`
--

DROP TABLE IF EXISTS `vet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vet` (
  `vetid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `ex1` varchar(45) DEFAULT NULL,
  `ex2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vetid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vet`
--

LOCK TABLES `vet` WRITE;
/*!40000 ALTER TABLE `vet` DISABLE KEYS */;
INSERT INTO `vet` VALUES (1,'Kamal','12345','k@gmail.com','Mirpur','v1','123','Amphibian','Reptile'),(3,'Kasob','234','k@gmail.com','Raipur','v2','123','Bird','Reptile'),(4,'Ratan','2434','adf','Luxmipur','v3','123','Fish','Householdpet'),(5,'Bimol','234','b@gmail.com','Dhaka','v4','123','Bird','Fish'),(6,'sharkar','2445','SA@gamal.com','Savar','v5','123','Amphibian','Fish'),(7,'Kadar','245','k@gmail.com','Rajshshi','v6','123','Householdpet','Reptile');
/*!40000 ALTER TABLE `vet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-24 16:05:20
