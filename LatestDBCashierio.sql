-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cashieriosys
-- ------------------------------------------------------
-- Server version	8.0.37-commercial

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
-- Table structure for table `cashiering table`
--

DROP TABLE IF EXISTS `cashiering table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashiering table` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ITEM NAME` varchar(100) NOT NULL,
  `PRICE` float NOT NULL,
  `STOCK` int unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashiering table`
--

LOCK TABLES `cashiering table` WRITE;
/*!40000 ALTER TABLE `cashiering table` DISABLE KEYS */;
/*!40000 ALTER TABLE `cashiering table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinventory`
--

DROP TABLE IF EXISTS `tblinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblinventory` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `ITEMNAME` varchar(100) NOT NULL,
  `STOCK` int unsigned NOT NULL,
  `COST` double NOT NULL,
  `PRICE` double NOT NULL,
  `LASTUPDATED` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinventory`
--

LOCK TABLES `tblinventory` WRITE;
/*!40000 ALTER TABLE `tblinventory` DISABLE KEYS */;
INSERT INTO `tblinventory` VALUES (4,'Mouse',9,150,300,'10-04-2023 03:05:55'),(7,'RS 150',2,99000,110000,'10-04-2023 11:05:01'),(8,'Coke 1L',20,75,90,'23-04-2023 01:09:40'),(9,'Century Tuna',10,33,41,'19-04-2023 02:33:26'),(10,'Headlight',3,300,399,'21-05-2023 05:19:41'),(11,'Rice',1,1500,1700,'20-04-2023 04:00:05'),(13,'Mirror',2,500,800,'20-04-2023 04:01:50'),(14,'Plastic ruber',1,70,100,'20-04-2023 04:02:23'),(15,'Oil',2,80,120,'20-04-2023 04:02:45'),(16,'Steering ',2,760,1000,'20-04-2023 04:06:54'),(17,'Gear lever',6,400,550,'20-04-2023 04:07:33'),(18,'Gas pedal',1,150,200,'20-04-2023 04:08:21'),(19,'Bearing',47,50,70,'20-04-2023 04:09:59'),(20,'Fuel tank',6,160,200,'20-04-2023 04:10:44'),(21,'sample',3,300,400,'20-04-2023 04:26:23');
/*!40000 ALTER TABLE `tblinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsalesrecords`
--

DROP TABLE IF EXISTS `tblsalesrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsalesrecords` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(45) NOT NULL,
  `qty` int unsigned NOT NULL,
  `price` double NOT NULL,
  `timenow` varchar(45) NOT NULL,
  `datenow` varchar(45) NOT NULL,
  `transactuser` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsalesrecords`
--

LOCK TABLES `tblsalesrecords` WRITE;
/*!40000 ALTER TABLE `tblsalesrecords` DISABLE KEYS */;
INSERT INTO `tblsalesrecords` VALUES (1,'Rice',1,1700,'01:39:38','04/21/2023','System.Windows.Forms.TextBox, Text: Baguio, Jess Mark A. '),(2,'Gear lever',1,550,'01:39:39','04/21/2023','System.Windows.Forms.TextBox, Text: Baguio, Jess Mark A. '),(3,'Steering ',1,1000,'01:41:20','04/21/2023','Baguio, Jess Mark A. '),(4,'Bearing',1,70,'01:41:21','04/21/2023','Baguio, Jess Mark A. '),(5,'Rice',1,1700,'01:46:22','04/21/2023','Baguio, Jess Mark A. '),(6,'Gear lever',1,550,'01:46:23','04/21/2023','Baguio, Jess Mark A. '),(7,'Century Tuna',1,41,'01:46:25','04/21/2023','Baguio, Jess Mark A. '),(8,'Mirror',4,3200,'01:46:28','04/21/2023','Baguio, Jess Mark A. '),(9,'Gear lever',3,1650,'01:46:29','04/21/2023','Baguio, Jess Mark A. '),(10,'Mirror',1,800,'01:48:16','04/21/2023','Baguio, Jess Mark A. '),(11,'Gear lever',2,1100,'01:48:18','04/21/2023','Baguio, Jess Mark A. '),(12,'Fuel tank',3,600,'01:48:20','04/21/2023','Baguio, Jess Mark A. '),(13,'Gas pedal',3,600,'01:48:34','04/21/2023','Baguio, Jess Mark A. '),(14,'Rice',4,6800,'01:48:36','04/21/2023','Baguio, Jess Mark A. '),(15,'Oil',1,120,'01:48:38','04/21/2023','Baguio, Jess Mark A. '),(16,'Fuel tank',6,1200,'01:48:40','04/21/2023','Baguio, Jess Mark A. '),(17,'Coke 1L',4,360,'00:23:37','04/23/2023',''),(18,'Century Tuna',4,164,'00:23:40','04/23/2023',''),(19,'Oil',1,120,'00:49:22','04/23/2023',''),(20,'Century Tuna',2,82,'00:49:37','04/23/2023',''),(21,'Century Tuna',5,205,'00:51:05','04/23/2023',''),(22,'Century Tuna',2,82,'01:12:19','04/23/2023',''),(23,'Coke 1L',4,360,'01:26:23','04/23/2023',''),(24,'Coke 1L',4,360,'01:33:30','04/23/2023',''),(25,'Mirror',1,800,'01:37:06','04/23/2023',''),(26,'Steering ',1,1000,'01:37:09','04/23/2023',''),(27,'Oil',1,120,'01:39:15','04/23/2023',''),(28,'Gear lever',1,550,'01:39:16','04/23/2023',''),(29,'Fuel tank',1,200,'01:39:17','04/23/2023',''),(30,'Coke 1L',4,360,'01:39:48','04/23/2023',''),(31,'Gear lever',3,1650,'01:45:46','04/23/2023',''),(32,'Century Tuna',2,82,'01:46:15','04/23/2023',''),(33,'Coke 1L',4,360,'01:47:34','04/23/2023',''),(34,'Coke 1L',2,180,'01:48:26','04/23/2023',''),(35,'Plastic ruber',1,100,'02:54:57','04/23/2023',''),(36,'Century Tuna',2,82,'02:55:00','04/23/2023',''),(37,'Century Tuna',2,82,'02:55:24','04/23/2023',''),(38,'Bearing',50,3500,'02:55:51','04/23/2023',''),(39,'Bearing',99,6930,'02:55:57','04/23/2023',''),(40,'Coke 1L',5,450,'16:12:54','04/23/2023',''),(41,'Bearing',3,210,'16:12:56','04/23/2023',''),(42,'Headlight',1,399,'18:55:59','05/21/2023','Baguio, Jess Mark A. '),(43,'Coke 1L',1,90,'18:56:00','05/21/2023','Baguio, Jess Mark A. '),(44,'Gear lever',1,550,'18:56:02','05/21/2023','Baguio, Jess Mark A. '),(45,'Coke 1L',1,90,'01:48:48','05/29/2024','Doncic, Kezia L. '),(46,'Century Tuna',1,41,'01:48:51','05/29/2024','Doncic, Kezia L. ');
/*!40000 ALTER TABLE `tblsalesrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluserlogs`
--

DROP TABLE IF EXISTS `tbluserlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluserlogs` (
  `id` int NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `fullname` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `date&time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluserlogs`
--

LOCK TABLES `tbluserlogs` WRITE;
/*!40000 ALTER TABLE `tbluserlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluserlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusers` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Userposition` varchar(45) NOT NULL,
  `Lastname` varchar(45) NOT NULL,
  `Firstname` varchar(45) NOT NULL,
  `Middlename` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Emailadd` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `Username` varchar(500) NOT NULL,
  `UserPassword` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusers`
--

LOCK TABLES `tblusers` WRITE;
/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
INSERT INTO `tblusers` VALUES (16,'Admin','Bitte','Romart','Valorant','Male','Mawab','romartvalorant@gmail.com','09123123132','admin','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9'),(17,'Employee','Doncic','Kezia','Luca Luca','Male','Panabo World','lucaluca@gmail.com','42424242424242','user','e606e38b0d8c19b24cf0ee3808183162ea7cd63ff7912dbb22b5e803286b4446');
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cashieriosys'
--
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(p_userposition varchar(45), p_username varchar(45),p_userpassword varchar(45))
BEGIN
 select concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname from tblusers where userposition=p_userposition and username=p_username and userpassword=p_userpassword;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procDeleteItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDeleteItem`(p_id integer)
BEGIN
  delete from tblinventory where id=p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procDeleteUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDeleteUser`(p_id integer)
BEGIN
  delete from tblusers where id=p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procDisplayAllUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDisplayAllUsers`()
BEGIN
   select id,
       userposition,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       username,
       userpassword
from tblusers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procDisplayDailySale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDisplayDailySale`(p_currentDate varchar(40))
BEGIN
        SELECT SUM(price) as dailysale FROM tblsalesrecords WHERE datenow = p_currentDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procDisplayInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDisplayInventory`()
BEGIN
   select id,
       itemname,
       stock,
       cost,
       price,
       lastupdated
from tblinventory;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procDisplayItemsInCashier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDisplayItemsInCashier`()
BEGIN
   select id,
       itemname,
       price,
       stock
from tblinventory;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procDisplaySalesRecords` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDisplaySalesRecords`()
BEGIN
   select id,
       itemname,
       qty,
       price,
       timenow,
       datenow,
       transactuser
from tblsalesrecords;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procInsertSalesRecords` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procInsertSalesRecords`(p_itemname varchar(100),
                                                                p_qty int,
                                                                p_price double,
                                                                p_timenow varchar(50),
                                                                p_datenow varchar(50),
                                                                p_transactuser varchar(100)
                                                                )
BEGIN
      insert into tblSalesRecords(itemname,
                                  qty,
                                  price,
                                  timenow,
                                  datenow,
                                  transactuser)
                  values( p_itemname,
                          p_qty,
                          p_price,
                          p_timenow,
                          p_datenow,
                          p_transactuser);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procInsertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procInsertUser`(p_userposition varchar(45),
                                                        p_lastname varchar(45),
                                                        p_firstname varchar(45),
                                                        p_middlename varchar(45),
                                                        p_gender varchar(6),
                                                        p_address varchar(100),
                                                        p_emailadd varchar(45),
                                                        p_mobileno varchar(11),
                                                        p_username varchar(45),
                                                        p_userpassword varchar(45))
BEGIN
      insert into tblUsers(userposition,
                              lastname,
                              firstname,
                              middlename,
                              gender,
                              address,
                              emailadd,
                              mobileno,
                              username,
                              userpassword)

                  values( p_userposition,
                         p_lastname,
                         p_firstname,
                         p_middlename,
                         p_gender,
                         p_address,
                         p_emailadd,
                         p_mobileno,
                         p_username,
                         p_userpassword);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSaveUpdateItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSaveUpdateItem`(p_id int,
                                                        p_itemname varchar(45),
                                                        p_stock int,
                                                        p_cost double,
                                                        p_price double,
                                                        p_itemDT varchar(45))
BEGIN
      update tblinventory set itemname = p_itemname,
                              stock = p_stock,
                              cost = p_cost,
                              price = p_price,
                              lastupdated = p_itemDT
                              where id=p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSearchAcc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSearchAcc`(p_searchtype varchar(45),p_value varchar(100))
BEGIN
if (p_searchtype='Lastname') then
   select id,
       userposition,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       username,
       lastname
from tblusers where lastname like concat(p_value,'%');
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSearchInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSearchInventory`(p_searchtype varchar(45),p_value varchar(100))
BEGIN
if (p_searchtype='itemname') then
  select id,
          itemname,
          stock,
          cost,
          price,
          lastupdated
from tblinventory where itemname like concat(p_value,'%');
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSearchRecordsByDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSearchRecordsByDate`(p_itemname varchar(50),
                                                                      p_fromdate varchar(50),
                                                                      p_todate varchar(50))
BEGIN
   if p_itemname='' then
   select * from tblsalesrecords where (datenow between p_fromdate AND p_todate);
   else
   select * from tblsalesrecords where (datenow between p_fromdate AND p_todate AND p_itemname=itemname);
   end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSearchSales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSearchSales`(p_searchtype varchar(45),p_value varchar(100))
BEGIN
if (p_searchtype='itemname') then
   select id,
          itemname,
          qty,
          price,
          timenow,
          datenow,
          transactuser
from tblsalesrecords where itemname like concat(p_value,'%');
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSearchSelectItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSearchSelectItem`(p_searchtype varchar(45),p_value varchar(100))
BEGIN
if (p_searchtype='itemname') then
  select id,
          itemname,
          price,
          stock
from tblinventory where itemname like concat(p_value,'%');
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSearchUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSearchUser`(p_userposition varchar(45), p_username varchar(45),p_userpassword varchar(500))
BEGIN
 select concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname from tblusers where userposition=p_userposition and username=p_username and userpassword=p_userpassword;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procSelectItemToBuy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSelectItemToBuy`(p_id integer)
BEGIN
 select * from tblinventory where id=p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procUpdateItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procUpdateItem`(p_id integer)
BEGIN
 select * from tblinventory where id=p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procUpdateStock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procUpdateStock`(p_stock int,
                                                              p_itemname varchar(100))
BEGIN
      UPDATE tblinventory SET stock = stock - p_stock WHERE itemname = p_itemname;
END ;;
DELIMITER ;
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

-- Dump completed on 2024-05-29  2:41:36
