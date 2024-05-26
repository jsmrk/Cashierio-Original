-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema restaurantmgtsystem
--

CREATE DATABASE IF NOT EXISTS restaurantmgtsystem;
USE restaurantmgtsystem;

--
-- Temporary table structure for view `view_customer`
--
DROP TABLE IF EXISTS `view_customer`;
DROP VIEW IF EXISTS `view_customer`;
CREATE TABLE `view_customer` (
  `id` int(10) unsigned,
  `fullname` varchar(96),
  `gender` varchar(6),
  `address` varchar(100),
  `emailadd` varchar(45),
  `mobileno` varchar(11),
  `custpic` varchar(300)
);

--
-- Temporary table structure for view `view_room`
--
DROP TABLE IF EXISTS `view_room`;
DROP VIEW IF EXISTS `view_room`;
CREATE TABLE `view_room` (
  `id` int(10) unsigned,
  `room_type` varchar(50),
  `room_no` int(10) unsigned,
  `description` varchar(45),
  `price` double,
  `room_status` varchar(15)
);

--
-- Definition of table `tbladdon`
--

DROP TABLE IF EXISTS `tbladdon`;
CREATE TABLE `tbladdon` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `description` varchar(45) NOT NULL,
  `Amount` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladdon`
--

/*!40000 ALTER TABLE `tbladdon` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbladdon` ENABLE KEYS */;


--
-- Definition of table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
CREATE TABLE `tblcustomer` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `emailadd` varchar(45) NOT NULL,
  `mobileno` varchar(11) NOT NULL COMMENT 'Picture Location',
  `custpic` varchar(300) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
INSERT INTO `tblcustomer` (`id`,`Lastname`,`firstname`,`middlename`,`gender`,`address`,`emailadd`,`mobileno`,`custpic`) VALUES 
 (2,'Catahuran','Alexandra','Aninon','Female','Tagum','catahuran_aninon@gmail.com','09024050505',NULL),
 (3,'Chatto','Jess Mark','Loja','Female','Tagum','chatto_loja@gmail.com','09103040506',NULL),
 (4,'Magkidong','Reobert','Keziah','Female','Tagum','Magkidong_and_Friends@gmail.com','0910304055',NULL);
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;


--
-- Definition of table `tblcustomeraddon`
--

DROP TABLE IF EXISTS `tblcustomeraddon`;
CREATE TABLE `tblcustomeraddon` (
  `id` int(10) unsigned NOT NULL,
  `aid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `Price` double NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomeraddon`
--

/*!40000 ALTER TABLE `tblcustomeraddon` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomeraddon` ENABLE KEYS */;


--
-- Definition of table `tblemployee`
--

DROP TABLE IF EXISTS `tblemployee`;
CREATE TABLE `tblemployee` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `fullname` varchar(150) NOT NULL,
  `birthdate` datetime NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `ContactNo` varchar(11) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

/*!40000 ALTER TABLE `tblemployee` DISABLE KEYS */;
INSERT INTO `tblemployee` (`id`,`fullname`,`birthdate`,`Gender`,`Address`,`ContactNo`,`Designation`) VALUES 
 (1,'JOSE M. CLARO','2000-01-01 00:00:00','Male','Tagum','1209312312','adsfasdfasdf'),
 (2,'Larryjey O. Magkidong','2000-07-01 00:00:00','Male','Tagum','09561455266','admin');
/*!40000 ALTER TABLE `tblemployee` ENABLE KEYS */;


--
-- Definition of table `tblprintdata`
--

DROP TABLE IF EXISTS `tblprintdata`;
CREATE TABLE `tblprintdata` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tempData1` varchar(300) default NULL,
  `tempData2` varchar(300) default NULL,
  `tempData3` varchar(300) default NULL,
  `tempData4` varchar(300) default NULL,
  `tempData5` varchar(300) default NULL,
  `tempData6` varchar(300) default NULL,
  `tempData7` varchar(300) default NULL,
  `tempData8` varchar(300) default NULL,
  `tempData9` varchar(300) default NULL,
  `tempData10` varchar(300) default NULL,
  `tempData11` varchar(300) default NULL,
  `tempData12` varchar(300) default NULL,
  `tempData13` varchar(300) default NULL,
  `tempData14` varchar(300) default NULL,
  `tempData15` varchar(300) default NULL,
  `tempData16` varchar(300) default NULL,
  `tempData17` varchar(300) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1492 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprintdata`
--

/*!40000 ALTER TABLE `tblprintdata` DISABLE KEYS */;
INSERT INTO `tblprintdata` (`id`,`tempData1`,`tempData2`,`tempData3`,`tempData4`,`tempData5`,`tempData6`,`tempData7`,`tempData8`,`tempData9`,`tempData10`,`tempData11`,`tempData12`,`tempData13`,`tempData14`,`tempData15`,`tempData16`,`tempData17`) VALUES 
 (1489,'2','Catahuran, Alexandra A. ','Tagum','catahuran_aninon@gmail.com','09024050505',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (1490,'3','Chatto, Jess Mark L. ','Tagum','chatto_loja@gmail.com','09103040506',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (1491,'4','Magkidong, Reobert K. ','Tagum','Magkidong_and_Friends@gmail.com','0910304055',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblprintdata` ENABLE KEYS */;


--
-- Definition of table `tblreservation`
--

DROP TABLE IF EXISTS `tblreservation`;
CREATE TABLE `tblreservation` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `cid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `Reserved_Date` datetime NOT NULL,
  `Date_in` datetime NOT NULL,
  `Date_out` datetime NOT NULL,
  `Status` varchar(45) NOT NULL default 'Pending',
  `downpayment` double NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_tblreservatiaon_1` (`cid`),
  KEY `FK_tblreservatiaon_2` (`rid`),
  CONSTRAINT `FK_tblreservatiaon_1` FOREIGN KEY (`cid`) REFERENCES `tblusersold` (`id`),
  CONSTRAINT `FK_tblreservatiaon_2` FOREIGN KEY (`rid`) REFERENCES `tblroom` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreservation`
--

/*!40000 ALTER TABLE `tblreservation` DISABLE KEYS */;
INSERT INTO `tblreservation` (`id`,`cid`,`rid`,`Reserved_Date`,`Date_in`,`Date_out`,`Status`,`downpayment`) VALUES 
 (1,2,3,'2022-09-27 00:00:00','2022-09-30 00:00:00','2022-10-01 00:00:00','Pending',0),
 (2,3,5,'2022-09-27 00:00:00','2022-09-30 00:00:00','2022-10-01 00:00:00','Pending',0);
/*!40000 ALTER TABLE `tblreservation` ENABLE KEYS */;


--
-- Definition of table `tblroom`
--

DROP TABLE IF EXISTS `tblroom`;
CREATE TABLE `tblroom` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `room_no` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `Description` varchar(45) NOT NULL,
  `Price` double NOT NULL,
  `room_Status` varchar(15) NOT NULL default 'Vacant',
  PRIMARY KEY  (`id`),
  KEY `FK_tblroom_1` (`rid`),
  CONSTRAINT `FK_tblroom_1` FOREIGN KEY (`rid`) REFERENCES `tblroomtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblroom`
--

/*!40000 ALTER TABLE `tblroom` DISABLE KEYS */;
INSERT INTO `tblroom` (`id`,`room_no`,`rid`,`Description`,`Price`,`room_Status`) VALUES 
 (1,101,1,'Queen Victoria',5000,'Vacant'),
 (2,102,1,'King Charles',5000,'Occupied'),
 (3,103,2,'Pres. Arroyo',3500,'Vacant'),
 (4,104,2,'Pres. Marcos',3500,'Vacant'),
 (5,201,3,'Standard 1',1000,'Reserved'),
 (6,202,3,'Standard 2',1000,'Vacant');
/*!40000 ALTER TABLE `tblroom` ENABLE KEYS */;


--
-- Definition of table `tblroomtype`
--

DROP TABLE IF EXISTS `tblroomtype`;
CREATE TABLE `tblroomtype` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Room_Type` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblroomtype`
--

/*!40000 ALTER TABLE `tblroomtype` DISABLE KEYS */;
INSERT INTO `tblroomtype` (`id`,`Room_Type`) VALUES 
 (1,'Chairman Room'),
 (2,'Presidential Room'),
 (3,'Standard Room');
/*!40000 ALTER TABLE `tblroomtype` ENABLE KEYS */;


--
-- Definition of table `tblsalesrecords`
--

DROP TABLE IF EXISTS `tblsalesrecords`;
CREATE TABLE `tblsalesrecords` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `qty` int(10) unsigned NOT NULL,
  `orders` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `timenow` varchar(45) NOT NULL,
  `datenow` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsalesrecords`
--

/*!40000 ALTER TABLE `tblsalesrecords` DISABLE KEYS */;
INSERT INTO `tblsalesrecords` (`id`,`qty`,`orders`,`price`,`timenow`,`datenow`) VALUES 
 (129,3,'Lechon Manok',660,'04:49:37','10/16/2022'),
 (130,4,'Fried Chicken',540,'04:49:40','10/16/2022'),
 (131,4,'Chicken Sisig',580,'04:49:42','10/16/2022'),
 (132,6,'Beef Steak',1050,'04:49:44','10/16/2022'),
 (133,4,'Buko Shake',356,'04:49:46','10/16/2022'),
 (134,4,'Choco Cake',540,'04:49:47','10/16/2022'),
 (135,5,'Lechon Manok',1100,'04:49:59','10/16/2022'),
 (136,3,'Beef Steak',525,'04:50:01','10/16/2022'),
 (137,4,'Buko Shake',356,'04:50:03','10/16/2022'),
 (138,3,'Sprite',90,'04:50:05','10/16/2022'),
 (139,3,'Halo-Halo',330,'04:50:06','10/16/2022'),
 (140,3,'Lechon Manok',660,'08:52:37','10/17/2022'),
 (141,3,'Beef Steak',525,'08:52:38','10/17/2022'),
 (142,3,'Chicken Sisig',435,'08:52:41','10/17/2022'),
 (143,4,'Tuna Sisig',580,'08:52:49','10/17/2022'),
 (144,2,'Chicken Sisig',290,'08:52:50','10/17/2022'),
 (145,3,'Paa BBQ',435,'08:53:21','10/18/2022'),
 (146,3,'Beef Steak',525,'08:53:23','10/18/2022'),
 (147,4,'Tuna Sisig',580,'08:53:30','10/18/2022'),
 (148,3,'Leche Flan',345,'08:53:31','10/18/2022'),
 (149,4,'Sprite',120,'08:53:34','10/18/2022'),
 (150,7,'Fried Chicken',945,'08:53:45','10/18/2022'),
 (151,1,'Chicken Sisig',145,'08:53:46','10/18/2022'),
 (152,2,'Tuna Sisig',290,'08:53:47','10/18/2022'),
 (153,3,'Lechon Manok',660,'08:53:48','10/18/2022'),
 (154,2,'Leche Flan',230,'08:53:50','10/18/2022'),
 (155,2,'Choco Cake',270,'08:53:51','10/18/2022'),
 (156,3,'Tuna Sisig',435,'11:25:12','10/18/2022'),
 (157,3,'Beef Steak',525,'11:25:13','10/18/2022'),
 (158,2,'Grilled Bangus',270,'11:25:15','10/18/2022'),
 (159,10,'Tuna Sisig',1450,'11:25:32','10/18/2022'),
 (160,2,'Chicken Sisig',290,'11:25:42','10/18/2022'),
 (161,3,'Chicken Sisig',435,'11:27:55','10/18/2022'),
 (162,3,'Grilled Bangus',405,'11:27:58','10/18/2022'),
 (163,3,'Chicken Sisig',435,'17:40:08','10/22/2022'),
 (164,3,'Beef Steak',525,'17:40:10','10/22/2022'),
 (165,1,'Grilled Bangus',135,'17:40:12','10/22/2022'),
 (166,3,'Paa BBQ',435,'17:40:13','10/22/2022'),
 (167,5,'Tuna Sisig',725,'17:40:16','10/22/2022'),
 (168,3,'Beef Steak',525,'21:20:28','10/24/2022'),
 (169,4,'Grilled Bangus',540,'21:20:31','10/24/2022'),
 (170,1,'Fried Chicken',135,'21:20:33','10/24/2022'),
 (171,5,'Paa BBQ',725,'21:20:36','10/24/2022'),
 (172,3,'Lechon Manok',660,'21:20:38','10/24/2022'),
 (173,2,'Choco Cake',270,'21:20:40','10/24/2022'),
 (174,2,'Buko Juice',60,'21:20:44','10/24/2022'),
 (175,2,'Ice Tea',70,'21:20:46','10/24/2022'),
 (176,1,'Coke',30,'21:20:47','10/24/2022'),
 (177,3,'Chicken Sisig',435,'23:14:33','10/24/2022'),
 (178,3,'Beef Steak',525,'23:14:40','10/24/2022'),
 (179,2,'Beef Steak',350,'23:24:29','10/25/2022'),
 (180,4,'Grilled Bangus',540,'23:24:34','10/25/2022'),
 (181,3,'Beef Steak',525,'00:39:43','10/26/2022'),
 (182,3,'Leche Flan',345,'00:39:44','10/26/2022'),
 (183,4,'Choco Cake',540,'00:39:51','10/26/2022'),
 (184,3,'Leche Flan',345,'00:39:53','10/26/2022'),
 (185,4,'Halo-Halo',440,'00:40:00','10/26/2022'),
 (186,1,'Leche Flan',115,'00:40:01','10/26/2022'),
 (187,3,'Beef Steak',525,'00:40:03','10/26/2022'),
 (188,3,'Lechon Manok',660,'00:40:05','10/26/2022');
/*!40000 ALTER TABLE `tblsalesrecords` ENABLE KEYS */;


--
-- Definition of table `tbltransaction`
--

DROP TABLE IF EXISTS `tbltransaction`;
CREATE TABLE `tbltransaction` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `TransactionType` varchar(45) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `Payment` double NOT NULL,
  `Payment_Type` varchar(45) NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `empid` int(10) unsigned NOT NULL,
  `transdate` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransaction`
--

/*!40000 ALTER TABLE `tbltransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltransaction` ENABLE KEYS */;


--
-- Definition of table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE `tbluser` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `empid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_tbluser_1` (`empid`),
  CONSTRAINT `FK_tbluser_1` FOREIGN KEY (`empid`) REFERENCES `tbluser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` (`id`,`user_name`,`user_password`,`empid`) VALUES 
 (1,'claro_j','654321',1),
 (2,'jey','123456',2);
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;


--
-- Definition of table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE `tblusers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `userposition` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `emailadd` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `custpic` varchar(200) default NULL,
  `username` varchar(45) NOT NULL,
  `userpassword` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
INSERT INTO `tblusers` (`id`,`userposition`,`lastname`,`firstname`,`middlename`,`gender`,`address`,`emailadd`,`mobileno`,`custpic`,`username`,`userpassword`) VALUES 
 (3,'admin','Magkidong','Larryjey','Uwu','Male','secret','secret@gmail.com','0912345678',NULL,'jenilar','123'),
 (4,'admin','Baguio','Jess Mark','Alamban','Male','diha ra dapit','basta@gmail.com','09123456789',NULL,'jsmrk','123'),
 (5,'employee','katabang','ako','ay','Female','ambot','ambot@gmail.com','09123456789','','katabang','123');
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;


--
-- Definition of table `tblusersold`
--

DROP TABLE IF EXISTS `tblusersold`;
CREATE TABLE `tblusersold` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `emailadd` varchar(45) NOT NULL,
  `mobileno` varchar(11) NOT NULL COMMENT 'Picture Location',
  `custpic` varchar(300) default NULL,
  `positionn` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusersold`
--

/*!40000 ALTER TABLE `tblusersold` DISABLE KEYS */;
INSERT INTO `tblusersold` (`id`,`Lastname`,`firstname`,`middlename`,`gender`,`address`,`emailadd`,`mobileno`,`custpic`,`positionn`) VALUES 
 (2,'Catahuran','Alexandra','Aninon','Female','Tagum','catahuran_aninon@gmail.com','09024050505',NULL,''),
 (3,'Chatto','Jess Mark','Loja','Female','Tagum','chatto_loja@gmail.com','09103040506',NULL,''),
 (4,'Magkidong','Reobert','Keziah','Female','Tagum','Magkidong_and_Friends@gmail.com','0910304055',NULL,''),
 (6,'magkidong','larryjey','olavides ','Male','tagum ','email@gmail.com','09123456789',NULL,'admin'),
 (9,'Magkidong','Reobert','Keziah','Female','Tagum','Magkidong_and_Friends@gmail.com','0910304055',NULL,''),
 (11,'Baguio','Jess Mark','Alamban','Male','secret','witwiw@gmail.com','0912345678',NULL,'admin');
/*!40000 ALTER TABLE `tblusersold` ENABLE KEYS */;


--
-- Definition of procedure `prcDisplayAllCustomer2`
--

DROP PROCEDURE IF EXISTS `prcDisplayAllCustomer2`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayAllCustomer2`()
BEGIN
     select * from tblcustomer order by lastname;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayAutoRecordyBySearchType`
--

DROP PROCEDURE IF EXISTS `prcDisplayAutoRecordyBySearchType`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayAutoRecordyBySearchType`(p_searchtype varchar(45),p_value varchar(100))
BEGIN
    if (p_searchType='LASTNAME') then
    select id,
       positionn,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
    from tblusers where lastname like concat(p_value,'%');
  else
    select id,
       positionn,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
from tblusers where firstname like concat(p_value,'%');
end if;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayPerRecordByID`
--

DROP PROCEDURE IF EXISTS `prcDisplayPerRecordByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayPerRecordByID`(p_id integer)
BEGIN
 select * from tblusers where id=p_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayRecordBySearchType`
--

DROP PROCEDURE IF EXISTS `prcDisplayRecordBySearchType`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayRecordBySearchType`(p_searchtype varchar(45),p_value varchar(100))
BEGIN
if (p_searchtype='ALL') then
  select id,
       positionn,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
from tblusers ORDER BY firstname;
elseif (p_searchType='LASTNAME') then
    select id,
       positionn,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
    from tblusers where lastname=p_value;
 else
    select id,
       positionn,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
from tblusers where firstname=p_value;
end if;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayRoomByType`
--

DROP PROCEDURE IF EXISTS `prcDisplayRoomByType`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayRoomByType`(p_roomType varchar(45))
BEGIN
    select b.id,a.room_type,b.room_no,b.description,b.price from tblroomtype a, tblroom b where b.rid=a.id and b.room_status='Vacant'and a.room_type=p_roomType;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcInsertReservation`
--

DROP PROCEDURE IF EXISTS `prcInsertReservation`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcInsertReservation`(p_cid integer,
                                                          p_rid integer,
                                                          p_reserved_date datetime,
                                                          p_checkin datetime,
                                                          p_checkout datetime,
                                                          p_downpayment double)
BEGIN
  insert into tblReservation (cid,
                              rid,
                              reserved_date,
                              date_in,
                              date_out,
                              downpayment)
         values(p_cid,
                p_rid,
                p_reserved_date,
                p_checkin,
                p_checkout,
                p_downpayment);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcSelUserLogin`
--

DROP PROCEDURE IF EXISTS `prcSelUserLogin`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSelUserLogin`(p_user_name varchar(45),p_userpassword varchar(45))
BEGIN
select * from tbluser where user_name=p_user_name and user_password=p_userpassword;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateCustomerByID`
--

DROP PROCEDURE IF EXISTS `prcUpdateCustomerByID`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateCustomerByID`(p_id integer,
                                                           p_lastname varchar(45),
                                                           p_firstname varchar(45),
                                                           p_middlename varchar(45),
                                                           p_gender varchar(6),
                                                           p_address varchar(150),
                                                           p_emailadd varchar(45),
                                                           p_mobileno varchar(13),
                                                           p_custpic varchar(300),
                                                           p_positionn varchar(45))
BEGIN
      update tblusers set lastname=p_lastname,
                             firstname=p_firstname,
                             middlename=p_middlename,
                             gender=p_gender,
                             address=p_address,
                             emailadd=p_emailadd,
                             mobileno=p_mobileno,
                             custpic=p_custpic,
                             positionn=p_positionn
                             where id=p_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdatePassword`
--

DROP PROCEDURE IF EXISTS `prcUpdatePassword`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdatePassword`(p_username varchar(45),p_user_password varchar(45))
BEGIN
       update tbluser set user_password=p_user_password where user_name=p_username;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcUpdateRoomStatus`
--

DROP PROCEDURE IF EXISTS `prcUpdateRoomStatus`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcUpdateRoomStatus`(p_status varchar(45), p_rid integer)
BEGIN
    update tblroom set room_status=p_status where id=p_rid;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `procDeleteUser`
--

DROP PROCEDURE IF EXISTS `procDeleteUser`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDeleteUser`(p_id integer)
BEGIN
  delete from tblusers where id=p_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `procDisplayAllSalesRecords`
--

DROP PROCEDURE IF EXISTS `procDisplayAllSalesRecords`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDisplayAllSalesRecords`()
BEGIN
      select id,
           qty,
           orders,
           price,
           timenow,
           datenow
    from tblSalesRecords;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `procDisplayAllUsers`
--

DROP PROCEDURE IF EXISTS `procDisplayAllUsers`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procDisplayAllUsers`()
BEGIN
   select id,
       userposition,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic,
       username,
       userpassword
from tblusers;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `procInsertSalesRecords`
--

DROP PROCEDURE IF EXISTS `procInsertSalesRecords`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procInsertSalesRecords`(p_qty int,
                                                                p_orders varchar(100),
                                                                p_price int,
                                                                p_timenow varchar(50),
                                                                p_datenow varchar(50)
                                                                )
BEGIN
      insert into tblSalesRecords(qty,
                                  orders,
                                  price,
                                  timenow,
                                  datenow)
                  values(p_qty,
                          p_orders,
                          p_price,
                          p_timenow,
                          p_datenow);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `procInsertUser`
--

DROP PROCEDURE IF EXISTS `procInsertUser`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procInsertUser`(p_userposition varchar(45),
                                                        p_lastname varchar(45),
                                                        p_firstname varchar(45),
                                                        p_middlename varchar(45),
                                                        p_gender varchar(6),
                                                        p_address varchar(100),
                                                        p_emailadd varchar(45),
                                                        p_mobileno varchar(11),
                                                        p_custpic varchar(300),
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
                              custpic,
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
                         p_custpic,
                         p_username,
                         p_userpassword);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `procSearchRecordsByDate`
--

DROP PROCEDURE IF EXISTS `procSearchRecordsByDate`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSearchRecordsByDate`(p_searchorder varchar(50),
                                                                      p_fromdate varchar(50),
                                                                      p_todate varchar(50))
BEGIN
   if (p_searchorder='') then
   select * from tblSalesRecords where (datenow between p_fromdate AND p_todate);
   else
   select * from tblSalesRecords where (datenow between p_fromdate AND p_todate AND p_searchorder=orders);
   end if;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `procSearchUser`
--

DROP PROCEDURE IF EXISTS `procSearchUser`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procSearchUser`(p_userposition varchar(45), p_username varchar(45),p_userpassword varchar(45))
BEGIN
      select * from tblusers where userposition=p_userposition and username=p_username and userpassword=p_userpassword;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of view `view_customer`
--

DROP TABLE IF EXISTS `view_customer`;
DROP VIEW IF EXISTS `view_customer`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_customer` AS select `tblcustomer`.`id` AS `id`,concat(`tblcustomer`.`Lastname`,_latin1', ',`tblcustomer`.`firstname`,_latin1' ',left(`tblcustomer`.`middlename`,1),_latin1'. ') AS `fullname`,`tblcustomer`.`gender` AS `gender`,`tblcustomer`.`address` AS `address`,`tblcustomer`.`emailadd` AS `emailadd`,`tblcustomer`.`mobileno` AS `mobileno`,`tblcustomer`.`custpic` AS `custpic` from `tblcustomer`;

--
-- Definition of view `view_room`
--

DROP TABLE IF EXISTS `view_room`;
DROP VIEW IF EXISTS `view_room`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_room` AS select `b`.`id` AS `id`,`a`.`Room_Type` AS `room_type`,`b`.`room_no` AS `room_no`,`b`.`Description` AS `description`,`b`.`Price` AS `price`,`b`.`room_Status` AS `room_status` from (`tblroomtype` `a` join `tblroom` `b`) where (`b`.`rid` = `a`.`id`);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
