DROP SCHEMA IF EXISTS `re`;
CREATE DATABASE  IF NOT EXISTS `re` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `re`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: re
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `accessibility`
--

DROP TABLE IF EXISTS `accessibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessibility` (
  `property_id` int NOT NULL,
  `transportation_id` int NOT NULL,
  `minutes_transportation` int DEFAULT NULL,
  PRIMARY KEY (`property_id`,`transportation_id`),
  KEY `fk_property_has_transportation_transportation1_idx` (`transportation_id`),
  KEY `fk_property_has_transportation_property1_idx` (`property_id`),
  CONSTRAINT `fk_property_has_transportation_property1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `fk_property_has_transportation_transportation1` FOREIGN KEY (`transportation_id`) REFERENCES `transportation` (`transportation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessibility`
--

LOCK TABLES `accessibility` WRITE;
/*!40000 ALTER TABLE `accessibility` DISABLE KEYS */;
INSERT INTO `accessibility` VALUES (1,2,6),(2,1,6),(3,1,5),(4,2,8),(5,2,8),(6,3,5),(7,3,8),(8,4,4),(9,5,8),(10,6,2);
/*!40000 ALTER TABLE `accessibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery`
--

DROP TABLE IF EXISTS `grocery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery` (
  `market_id` int NOT NULL,
  `property_id` int NOT NULL,
  `minutes_market` int DEFAULT NULL,
  PRIMARY KEY (`market_id`,`property_id`),
  KEY `fk_market_has_property_property1_idx` (`property_id`),
  KEY `fk_market_has_property_market1_idx` (`market_id`),
  CONSTRAINT `fk_market_has_property_market1` FOREIGN KEY (`market_id`) REFERENCES `market` (`market_id`),
  CONSTRAINT `fk_market_has_property_property1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery`
--

LOCK TABLES `grocery` WRITE;
/*!40000 ALTER TABLE `grocery` DISABLE KEYS */;
INSERT INTO `grocery` VALUES (1,1,10),(1,4,5),(1,5,8),(2,2,8),(2,3,7),(3,2,9),(3,3,8),(4,9,4),(4,10,5);
/*!40000 ALTER TABLE `grocery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall`
--

DROP TABLE IF EXISTS `mall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mall` (
  `mall_id` int NOT NULL,
  `mall_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mall_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mall_neighbor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`mall_id`),
  UNIQUE KEY `mall_name_UNIQUE` (`mall_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall`
--

LOCK TABLES `mall` WRITE;
/*!40000 ALTER TABLE `mall` DISABLE KEYS */;
INSERT INTO `mall` VALUES (1,'Block 37','indoor mall','Loop'),(2,'The Shops at North Bridge','shopping center','Near North Side'),(3,'Roosevelt Collection Shops','open-air center','South Loop');
/*!40000 ALTER TABLE `mall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market` (
  `market_id` int NOT NULL,
  `market_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `market_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `market_neighbor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`market_id`),
  UNIQUE KEY `market_name_UNIQUE` (`market_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	\n\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (1,'Marianos Lakeshore East ','grocery','Lakeshore East'),(2,'Target Roosevelt','big box ','South Loop'),(3,'Whole Foods','grocery','South Loop'),(4,'West Loop Market','grocery','West Loop');
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meal`
--

DROP TABLE IF EXISTS `meal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meal` (
  `property_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `minutes_restaurant` int DEFAULT NULL,
  PRIMARY KEY (`property_id`,`restaurant_id`),
  KEY `fk_property_has_restaurant_restaurant1_idx` (`restaurant_id`),
  KEY `fk_property_has_restaurant_property1_idx` (`property_id`),
  CONSTRAINT `fk_property_has_restaurant_property1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `fk_property_has_restaurant_restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meal`
--

LOCK TABLES `meal` WRITE;
/*!40000 ALTER TABLE `meal` DISABLE KEYS */;
INSERT INTO `meal` VALUES (1,1,8),(2,4,10),(3,4,8),(4,1,15),(7,5,10),(8,3,6),(8,6,5),(9,2,4),(10,2,6);
/*!40000 ALTER TABLE `meal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `near_park`
--

DROP TABLE IF EXISTS `near_park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `near_park` (
  `property_id` int NOT NULL,
  `park_id` int NOT NULL,
  `minutes_park` int DEFAULT NULL,
  PRIMARY KEY (`property_id`,`park_id`),
  KEY `fk_property_has_park_park1_idx` (`park_id`),
  KEY `fk_property_has_park_property1_idx` (`property_id`),
  CONSTRAINT `fk_property_has_park_park1` FOREIGN KEY (`park_id`) REFERENCES `park` (`park_id`),
  CONSTRAINT `fk_property_has_park_property1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `near_park`
--

LOCK TABLES `near_park` WRITE;
/*!40000 ALTER TABLE `near_park` DISABLE KEYS */;
INSERT INTO `near_park` VALUES (1,1,2),(1,2,5),(2,2,1),(3,2,3),(4,3,1),(5,3,3),(6,5,4),(7,5,6),(8,6,3),(9,4,2),(10,4,3);
/*!40000 ALTER TABLE `near_park` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `park`
--

DROP TABLE IF EXISTS `park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `park` (
  `park_id` int NOT NULL,
  `park_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `park_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `park_neighbor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`park_id`),
  UNIQUE KEY `park_name_UNIQUE` (`park_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `park`
--

LOCK TABLES `park` WRITE;
/*!40000 ALTER TABLE `park` DISABLE KEYS */;
INSERT INTO `park` VALUES (1,'Millennium Park','urban park','Loop'),(2,'Grant Park','urban park ','Loop'),(3,'Lakeshore East Park','neighborhood park','Lakeshore East'),(4,'Mary Bartelme Park','neighborhood park','West Loop'),(5,'Washington Square Park','neighborhood park ','Near North Side'),(6,'Chicago Riverwalk','riverfront promenade','Loop');
/*!40000 ALTER TABLE `park` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `school_id` int NOT NULL,
  `city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `zip_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bedroom` int DEFAULT NULL,
  `bathroom` int DEFAULT NULL,
  `monthly_rent` decimal(15,2) DEFAULT NULL,
  `neighborhood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  UNIQUE KEY `address_UNIQUE` (`address`),
  KEY `fk_property_school_district1_idx` (`school_id`),
  CONSTRAINT `fk_property_school_district1` FOREIGN KEY (`school_id`) REFERENCES `school_district` (`school_district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,1,'Chicago','155 N Michigan Ave','60601',1,1,2700.00,'Loop'),(2,1,'Chicago','1000 S Michigan Ave ','60605',1,1,2900.00,'South Loop'),(3,1,'Chicago','1210 S Indiana Ave','60605',2,2,3800.00,'South Loop'),(4,2,'Chicago','455 E Waterside Dr','60601',1,1,3000.00,'Lakeshore East'),(5,2,'Chicago','345 E Wacker Dr','60601',1,1,2900.00,'Lakeshore East'),(6,2,'Chicago','100 W Chestnut St','60610',1,1,2600.00,'Near North Side'),(7,2,'Chicago','808 N Wells St ','60610',1,1,2800.00,'Near North Side'),(8,3,'Chicago','161 W Kinzie St','60654',1,1,2900.00,'River North'),(9,3,'Chicago','855 W Madison St','60607',2,2,3900.00,'West Loop'),(10,3,'Chicago','1164 W Madison St','60607',1,1,2800.00,'West Loop'),(11,2,'Chicago','225 N Columbus Dr','60601',1,1,3050.00,'Loop'),(12,1,'Chicago','130 N Garland Ct','60602',2,2,4200.00,'Loop'),(13,3,'Chicago','125 S Jefferson St','60661',2,2,3800.00,'West Loop'),(14,3,'Chicago','313 W Wolf Point Plz','60654',1,1,3400.00,'River North'),(15,1,'Chicago','801 S Financial Pl','60605',1,1,2950.00,'South Loop');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL,
  `restaurant_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cuisine_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rest_neighborhood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE KEY `restaurant_name_UNIQUE` (`restaurant_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'The Purple Pig','Miditerranean','Near North'),(2,'Girl & the Goat','New American','West Loop'),(3,'Lou Malnatis River North','Pizza','River North'),(4,'Yolk South Loop','Breakfast/Brunch','South Loop'),(5,'RPM Italian','Italian','River North'),(6,'Beatrix River North','American','River North');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_district`
--

DROP TABLE IF EXISTS `school_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_district` (
  `school_district_id` int NOT NULL,
  `district_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `level` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `school_neighborhood` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`school_district_id`),
  UNIQUE KEY `district_name_UNIQUE` (`district_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_district`
--

LOCK TABLES `school_district` WRITE;
/*!40000 ALTER TABLE `school_district` DISABLE KEYS */;
INSERT INTO `school_district` VALUES (1,'Jones College Prep','high school','South Loop'),(2,'Ogden International School','K-8','Near North Side'),(3,'Wells Community Academy','high school','Near West Side');
/*!40000 ALTER TABLE `school_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping`
--

DROP TABLE IF EXISTS `shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping` (
  `mall_id` int NOT NULL,
  `property_id` int NOT NULL,
  `minutes_mall` int DEFAULT NULL,
  PRIMARY KEY (`mall_id`,`property_id`),
  KEY `fk_mall_has_property1_property1_idx` (`property_id`),
  KEY `fk_mall_has_property1_mall1_idx` (`mall_id`),
  CONSTRAINT `fk_mall_has_property1_mall1` FOREIGN KEY (`mall_id`) REFERENCES `mall` (`mall_id`),
  CONSTRAINT `fk_mall_has_property1_property1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping`
--

LOCK TABLES `shopping` WRITE;
/*!40000 ALTER TABLE `shopping` DISABLE KEYS */;
INSERT INTO `shopping` VALUES (1,1,7),(1,4,10),(1,5,10),(2,6,12),(2,7,12),(2,8,10),(3,2,12),(3,3,10),(3,9,10);
/*!40000 ALTER TABLE `shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportation`
--

DROP TABLE IF EXISTS `transportation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportation` (
  `transportation_id` int NOT NULL,
  `stop_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `transport_neighbor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`transportation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportation`
--

LOCK TABLES `transportation` WRITE;
/*!40000 ALTER TABLE `transportation` DISABLE KEYS */;
INSERT INTO `transportation` VALUES (1,'Roosevelt Station','rail','South Loop'),(2,'Washington/Wabash Station','rail','Loop'),(3,'Chicago-Red Station','rail','Near North Side'),(4,'Merchandise Mart Station','rail','River North'),(5,'Clinton Station','rail','West Loop'),(6,'Madison & Racine Stop','bus','West Loop');
/*!40000 ALTER TABLE `transportation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-12 17:06:43
