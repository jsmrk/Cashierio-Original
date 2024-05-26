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
  CONSTRAINT `FK_tblreservatiaon_1` FOREIGN KEY (`cid`) REFERENCES `tblcustomer` (`id`),
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
  `datetimenow` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsalesrecords`
--

/*!40000 ALTER TABLE `tblsalesrecords` DISABLE KEYS */;
INSERT INTO `tblsalesrecords` (`id`,`qty`,`orders`,`price`,`datetimenow`) VALUES 
 (26,1,'Paa BBQ',145,'10/14/2022 9:58:28 AM'),
 (27,1,'Lechon Manok',220,'10/14/2022 9:58:28 AM'),
 (28,1,'Paa BBQ',145,'10/14/2022 9:58:28 AM'),
 (29,1,'Lechon Manok',220,'10/14/2022 9:58:28 AM'),
 (30,1,'Lechon Manok',220,'10/14/2022 9:58:29 AM'),
 (31,1,'Paa BBQ',145,'10/14/2022 9:58:29 AM'),
 (32,1,'Lechon Manok',220,'10/14/2022 9:58:30 AM'),
 (33,1,'Paa BBQ',145,'10/14/2022 9:58:30 AM'),
 (34,1,'Lechon Manok',220,'10/14/2022 9:58:30 AM'),
 (35,1,'Paa BBQ',145,'10/14/2022 10:29:43 AM'),
 (36,1,'Lechon Manok',220,'10/14/2022 10:29:43 AM'),
 (37,1,'Paa BBQ',145,'10/14/2022 10:29:44 AM'),
 (38,1,'Lechon Manok',220,'10/14/2022 10:29:44 AM'),
 (39,1,'Paa BBQ',145,'10/14/2022 10:29:44 AM'),
 (40,1,'Lechon Manok',220,'10/14/2022 10:29:45 AM'),
 (41,1,'Lechon Manok',220,'10/14/2022 11:01:06 AM'),
 (42,1,'Paa BBQ',145,'10/14/2022 11:01:07 AM'),
 (43,1,'Lechon Manok',220,'10/14/2022 11:01:07 AM'),
 (44,1,'Paa BBQ',145,'10/14/2022 11:01:07 AM'),
 (45,1,'Paa BBQ',145,'10/14/2022 11:02:30 AM'),
 (46,1,'Lechon Manok',220,'10/14/2022 11:02:30 AM'),
 (47,1,'Paa BBQ',145,'10/14/2022 11:02:31 AM'),
 (48,1,'Lechon Manok',220,'10/14/2022 11:02:31 AM'),
 (49,1,'Paa BBQ',145,'10/14/2022 11:02:31 AM'),
 (50,1,'Paa BBQ',145,'10/14/2022 11:21:36 AM'),
 (51,1,'Beef Steak',175,'10/14/2022 11:21:38 AM'),
 (52,1,'Grilled Bangus',135,'10/14/2022 11:21:39 AM'),
 (53,1,'Fried Chicken',135,'10/14/2022 11:21:40 AM'),
 (54,1,'Halo-Halo',110,'10/14/2022 11:21:41 AM'),
 (55,1,'Choco Cake',135,'10/14/2022 11:21:41 AM'),
 (56,1,'Leche Flan',115,'10/14/2022 11:21:42 AM'),
 (57,1,'Ice Tea',35,'10/14/2022 11:21:45 AM'),
 (58,1,'Coke',30,'10/14/2022 11:21:46 AM'),
 (59,1,'Buko Juice',30,'10/14/2022 11:21:47 AM'),
 (60,1,'Sprite',30,'10/14/2022 11:21:47 AM'),
 (61,1,'Chicken Sisig',145,'10/14/2022 11:24:31 AM'),
 (62,1,'Tuna Sisig',145,'10/14/2022 11:24:32 AM'),
 (63,1,'Beef Steak',175,'10/14/2022 11:24:33 AM'),
 (64,1,'Halo-Halo',110,'10/14/2022 11:24:35 AM'),
 (65,1,'Choco Cake',135,'10/14/2022 11:24:36 AM'),
 (66,1,'Buko Shake',89,'10/14/2022 11:24:38 AM'),
 (67,1,'Leche Flan',115,'10/14/2022 11:24:40 AM'),
 (68,1,'Lechon Manok',220,'10/14/2022 11:24:42 AM'),
 (69,1,'Paa BBQ',145,'10/14/2022 11:24:43 AM'),
 (70,1,'Fried Chicken',135,'10/14/2022 11:24:44 AM'),
 (71,1,'Grilled Bangus',135,'10/14/2022 11:24:46 AM'),
 (72,1,'Ice Tea',35,'10/14/2022 11:24:48 AM'),
 (73,1,'Coke',30,'10/14/2022 11:24:48 AM'),
 (74,1,'Sprite',30,'10/14/2022 11:24:49 AM'),
 (75,1,'Buko Juice',30,'10/14/2022 11:24:49 AM'),
 (76,1,'Paa BBQ',145,'10/14/2022 11:27:28 AM'),
 (77,1,'Lechon Manok',220,'10/14/2022 11:27:31 AM'),
 (78,1,'Fried Chicken',135,'10/14/2022 11:27:34 AM'),
 (79,1,'Grilled Bangus',135,'10/14/2022 11:27:37 AM'),
 (80,1,'Chicken Sisig',145,'10/14/2022 11:27:38 AM'),
 (81,1,'Halo-Halo',110,'10/14/2022 11:27:43 AM'),
 (82,1,'Halo-Halo',110,'10/14/2022 11:27:44 AM'),
 (83,1,'Leche Flan',115,'10/14/2022 11:27:46 AM'),
 (84,1,'Ice Tea',35,'10/14/2022 11:27:50 AM'),
 (85,1,'Ice Tea',35,'10/14/2022 11:27:51 AM'),
 (86,1,'Ice Tea',35,'10/14/2022 11:27:51 AM'),
 (87,1,'Ice Tea',35,'10/14/2022 11:27:51 AM'),
 (88,1,'Ice Tea',35,'10/14/2022 11:27:52 AM');
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
-- Definition of procedure `prcDeleteCustomer`
--

DROP PROCEDURE IF EXISTS `prcDeleteCustomer`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDeleteCustomer`(p_id integer)
BEGIN
  delete from tblcustomer where id=p_id;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `prcDisplayAllCustomer`
--

DROP PROCEDURE IF EXISTS `prcDisplayAllCustomer`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcDisplayAllCustomer`()
BEGIN
   select id,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
from tblcustomer;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

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
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
    from tblcustomer where lastname like concat(p_value,'%');
  else
    select id,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
from tblcustomer where firstname like concat(p_value,'%');
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
 select * from tblcustomer where id=p_id;
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
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
from tblcustomer ORDER BY firstname;
elseif (p_searchType='LASTNAME') then
    select id,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
    from tblcustomer where lastname=p_value;
 else
    select id,
       concat(lastname,', ',firstname,' ',left(middlename,1),'. ') as fullname,
       gender,
       address,
       emailadd,
       mobileno,
       custpic
from tblcustomer where firstname=p_value;
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
-- Definition of procedure `prcSearchUser`
--

DROP PROCEDURE IF EXISTS `prcSearchUser`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `prcSearchUser`(p_user_name varchar(45),p_user_password varchar(45))
BEGIN
      select * from tbluser where user_name=p_user_name and user_password=p_user_password;
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
                                                           p_custpic varchar(300))
BEGIN
      update tblcustomer set lastname=p_lastname,
                             firstname=p_firstname,
                             middlename=p_middlename,
                             gender=p_gender,
                             address=p_address,
                             emailadd=p_emailadd,
                             mobileno=p_mobileno,
                             custpic=p_custpic
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
-- Definition of procedure `procInsertCustomer`
--

DROP PROCEDURE IF EXISTS `procInsertCustomer`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `procInsertCustomer`(p_lastname varchar(45),
                                                        p_firstname varchar(45),
                                                        p_middlename varchar(45),
                                                        p_gender varchar(6),
                                                        p_address varchar(100),
                                                        p_emailadd varchar(45),
                                                        p_mobileno varchar(11),
                                                        p_custpic varchar(300))
BEGIN
      insert into tblcustomer(lastname,
                              firstname,
                              middlename,
                              gender,
                              address,
                              emailadd,
                              mobileno,
                              custpic)
                  values(p_lastname,
                         p_firstname,
                         p_middlename,
                         p_gender,
                         p_address,
                         p_emailadd,
                         p_mobileno,
                         p_custpic);
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
                                                                p_datetimenow varchar(100)
                                                                )
BEGIN
      insert into tblSalesRecords(qty,
                                  orders,
                                  price,
                                  datetimenow)
                  values(p_qty,
                          p_orders,
                          p_price,
                          p_datetimenow);
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
