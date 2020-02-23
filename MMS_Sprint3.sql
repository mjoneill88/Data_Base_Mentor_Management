CREATE DATABASE  IF NOT EXISTS `MMS_Sprint3` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `MMS_Sprint3`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: fall2019dbgunti.cvx4h0yw9trj.us-east-2.rds.amazonaws.com    Database: MMS_Sprint3
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Temporary view structure for view `ADMIN_INFO`
--

DROP TABLE IF EXISTS `ADMIN_INFO`;
/*!50001 DROP VIEW IF EXISTS `ADMIN_INFO`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ADMIN_INFO` AS SELECT 
 1 AS `employee_id`,
 1 AS `Admin_FullName`,
 1 AS `username`,
 1 AS `last_login_time`,
 1 AS `last_logout_time`,
 1 AS `Account_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ALL_HOMEWORKS`
--

DROP TABLE IF EXISTS `ALL_HOMEWORKS`;
/*!50001 DROP VIEW IF EXISTS `ALL_HOMEWORKS`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ALL_HOMEWORKS` AS SELECT 
 1 AS `Announcement_time`,
 1 AS `mentor_id`,
 1 AS `mentor_name`,
 1 AS `apprentice_id`,
 1 AS `apprentice_name`,
 1 AS `resources`,
 1 AS `status`,
 1 AS `student_completion_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `APPRENTICE_INFO`
--

DROP TABLE IF EXISTS `APPRENTICE_INFO`;
/*!50001 DROP VIEW IF EXISTS `APPRENTICE_INFO`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `APPRENTICE_INFO` AS SELECT 
 1 AS `employee_id`,
 1 AS `Apprentice_FullName`,
 1 AS `username`,
 1 AS `last_login_time`,
 1 AS `last_logout_time`,
 1 AS `Account_status`,
 1 AS `Pref_ProgrammingLang`,
 1 AS `Pref_BackendFramework`,
 1 AS `Pref_FrontendFramework`,
 1 AS `Pref_DatabaseSystem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `APPRENTICE_MENTOR_MEETINGS`
--

DROP TABLE IF EXISTS `APPRENTICE_MENTOR_MEETINGS`;
/*!50001 DROP VIEW IF EXISTS `APPRENTICE_MENTOR_MEETINGS`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `APPRENTICE_MENTOR_MEETINGS` AS SELECT 
 1 AS `Apprentice_Name`,
 1 AS `apprentice_id`,
 1 AS `mentor_id`,
 1 AS `Mentor_Name`,
 1 AS `start_time`,
 1 AS `end_time`,
 1 AS `status`,
 1 AS `Attended`,
 1 AS `pre_meeting_notes`,
 1 AS `post_meeting_notes`,
 1 AS `Location`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Address` (
  `employee_id` int(11) NOT NULL,
  `address_line1` varchar(100) NOT NULL,
  `address_line2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  PRIMARY KEY (`employee_id`,`address_line1`,`address_line2`,`city`,`state`,`zip_code`),
  KEY `Address_empid_index` (`employee_id`),
  CONSTRAINT `Address_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (1,'20 11th Street','Apart e','Charlotte','North Carolina','28262'),(1,'220 1st Street','Apart A','Charlotte','North Carolina','28213'),(2,'220 1st Street','Apart B','Charlotte','North Carolina','28213'),(3,'220 1st Street','Apart C','Charlotte','North Carolina','28213'),(4,'220 1st Street','Apart D','Charlotte','North Carolina','28213'),(5,'221 1st Street','Apart A','Charlotte','North Carolina','28213'),(6,'221 1st Street','Apart B','Charlotte','North Carolina','28213'),(7,'221 1st Street','Apart C','Charlotte','North Carolina','28213'),(8,'221 1st Street','Apart D','Charlotte','North Carolina','28213'),(9,'222 1st Street','Apart A','Charlotte','North Carolina','28213'),(10,'222 1st Street','Apart B','Charlotte','North Carolina','28213');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Administrator`
--

DROP TABLE IF EXISTS `Administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Administrator` (
  `admin_id` int(11) NOT NULL,
  `last_login_time` datetime NOT NULL,
  `last_logout_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admin_id`),
  KEY `Admin_id_index` (`admin_id`),
  CONSTRAINT `Administrator_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrator`
--

LOCK TABLES `Administrator` WRITE;
/*!40000 ALTER TABLE `Administrator` DISABLE KEYS */;
INSERT INTO `Administrator` VALUES (10,'2019-11-07 12:00:00','2019-11-07 12:30:00',1),(11,'2018-06-12 10:34:09','2018-06-13 10:34:09',0),(12,'2007-11-19 10:34:09','2007-11-19 10:44:09',0);
/*!40000 ALTER TABLE `Administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Appointment` (
  `appointment_id` varchar(255) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `apprentice_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `building_name` varchar(50) NOT NULL,
  `floor_no` varchar(5) NOT NULL,
  `room_no` varchar(5) NOT NULL,
  `pre_meeting_notes` text,
  `post_meeting_notes` text,
  `status` varchar(15) DEFAULT NULL,
  `attended` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `mentor_id` (`mentor_id`),
  KEY `apprentice_id` (`apprentice_id`),
  KEY `Appointment_id_index` (`mentor_id`,`apprentice_id`),
  CONSTRAINT `Appointment_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`mentor_id`),
  CONSTRAINT `Appointment_ibfk_2` FOREIGN KEY (`apprentice_id`) REFERENCES `Apprentice` (`apprentice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
INSERT INTO `Appointment` VALUES ('1',1,4,'2019-11-04 09:23:00','2019-11-04 10:26:00','Cone','3','302','early discussion','discussed on comapny ethics','Done',1),('2',2,5,'2016-01-10 09:00:00','2016-01-10 10:30:00','Meeting Room','3','111A','OO Cocepts',NULL,'Incomplete',0),('3',3,6,'2019-11-08 14:30:00','2019-11-08 17:15:00','Cone','2','210','doubts clearing',NULL,'Scheduled',0),('4',1,5,'2010-03-12 09:30:00','2010-03-12 12:15:00','Cone','3','302','early discussion',NULL,'Cancelled',0);
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rgunti1`@`%`*/ /*!50003 TRIGGER `MMS_Sprint3`.`Appointment_BEFORE_INSERT` BEFORE INSERT ON `Appointment` FOR EACH ROW
BEGIN

IF new.status <> 'Scheduled' or new.attended <> false THEN
	INSERT INTO Appointment(mentor_id, apprentice_id, start_time, end_time, building_name, floor_no, room_no, pre_meeting_notes, post_meeting_notes, status, attened)
		VALUES(new.mentor_id, new.apprentice_id, new.start_time, new.end_time, new.building_name, new.floor_no, new.room_no, new.pre_meeting_notes, new.post_meeting_notes, 'Scheduled', 0);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rgunti1`@`%`*/ /*!50003 TRIGGER `MMS_Sprint3`.`Appointment_BEFORE_UPDATE` BEFORE UPDATE ON `Appointment` FOR EACH ROW
BEGIN

IF new.status <> old.status and new.status='Done' THEN
	SET New.attended = 1;
END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Apprentice`
--

DROP TABLE IF EXISTS `Apprentice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Apprentice` (
  `apprentice_id` int(11) NOT NULL,
  `Pref_ProgrammingLang` varchar(100) DEFAULT NULL,
  `Pref_BackendFramework` varchar(100) DEFAULT NULL,
  `Pref_FrontendFramework` varchar(100) DEFAULT NULL,
  `Pref_DatabaseSystem` varchar(100) DEFAULT NULL,
  `mentor_id` int(11) DEFAULT NULL,
  `last_login_time` datetime NOT NULL,
  `last_logout_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`apprentice_id`),
  KEY `mentor_id` (`mentor_id`),
  KEY `Apprentice_Mentor_id_index` (`mentor_id`,`apprentice_id`),
  KEY `Apprentice_id_index` (`apprentice_id`),
  CONSTRAINT `Apprentice_ibfk_1` FOREIGN KEY (`apprentice_id`) REFERENCES `Employee` (`employee_id`),
  CONSTRAINT `Apprentice_ibfk_2` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`mentor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Apprentice`
--

LOCK TABLES `Apprentice` WRITE;
/*!40000 ALTER TABLE `Apprentice` DISABLE KEYS */;
INSERT INTO `Apprentice` VALUES (4,'#C','.Net','Node.Js','Oracle',1,'2019-11-07 08:23:34','2019-11-07 18:14:17',1),(5,'Python','Django','Node.Js','MySQL',1,'2018-11-07 08:23:34','2018-11-07 18:14:17',0),(6,'#C','.Net','Node.Js','Oracle',1,'2019-11-02 09:23:34','2019-11-02 17:14:17',1),(7,'Python','Django','Node.Js','Oracle',2,'2019-01-02 08:23:34','2019-01-02 17:14:17',0),(8,'Java','.Net','JSP','Oracle',2,'2019-10-03 09:23:01','2019-10-03 19:16:20',1),(9,'#C','.Net','Node.Js','Oracle',3,'2019-11-04 10:23:01','2019-11-04 19:26:12',1);
/*!40000 ALTER TABLE `Apprentice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Choices`
--

DROP TABLE IF EXISTS `Choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Choices` (
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `is_right` tinyint(1) NOT NULL,
  `choice` mediumtext NOT NULL,
  PRIMARY KEY (`question_id`,`quiz_id`,`is_right`,`choice`(200)),
  KEY `quiz_id` (`quiz_id`),
  KEY `choices_question_quiz_id_index` (`quiz_id`,`question_id`),
  CONSTRAINT `Choices_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `Question` (`question_id`),
  CONSTRAINT `Choices_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `Quiz` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Choices`
--

LOCK TABLES `Choices` WRITE;
/*!40000 ALTER TABLE `Choices` DISABLE KEYS */;
INSERT INTO `Choices` VALUES (1,1,0,'#'),(1,1,0,'$'),(1,1,0,'*'),(1,1,1,'&'),(2,1,0,'#'),(2,1,0,'^'),(2,1,1,'*'),(3,1,0,'False'),(3,1,1,'True');
/*!40000 ALTER TABLE `Choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `EMPLOYEE_INFO`
--

DROP TABLE IF EXISTS `EMPLOYEE_INFO`;
/*!50001 DROP VIEW IF EXISTS `EMPLOYEE_INFO`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `EMPLOYEE_INFO` AS SELECT 
 1 AS `Employee ID`,
 1 AS `Username`,
 1 AS `Employee Full name`,
 1 AS `Job Title`,
 1 AS `Hire Date`,
 1 AS `Address_line1`,
 1 AS `Address_line2`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Zip Code`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `join_date` date NOT NULL,
  `personal_mobile_Num` bigint(20) DEFAULT NULL,
  `work_mobile_Num` bigint(20) DEFAULT NULL,
  `personal_email` varchar(100) DEFAULT NULL,
  `work_email` varchar(100) NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `employee_id_index` (`employee_id`),
  KEY `employee_username_index` (`username`),
  KEY `employee_name_index` (`first_name`,`last_name`),
  KEY `employee_title_date_index` (`job_title`,`join_date`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Qwerty0','0å/Ó>Îé\"9tþ’[=','Rob','Strongman','Senior Dev','1996-02-04','2016-01-01',9000453302,2420431225,NULL,''),(2,'Qwerty1','0å/Ó>Îé\"9tþ’[=','Rob1','Strongman','Senior Dev','1996-02-03','2016-01-01',9000453311,2420431226,NULL,''),(3,'Qwerty2','0å/Ó>Îé\"9tþ’[=','Rob2','Strongman','Senior Dev','1996-02-02','2016-01-01',9000453310,2420431227,NULL,''),(4,'Qwerty3','0å/Ó>Îé\"9tþ’[=','Rob3','Strongman','Jr Dev','1996-02-01','2018-01-01',9000453309,2420431228,NULL,''),(5,'Qwerty4','0å/Ó>Îé\"9tþ’[=','Rob4','Strongman','Jr Dev','1996-02-01','2018-01-01',9000453308,2420431229,NULL,''),(6,'Qwerty5','0å/Ó>Îé\"9tþ’[=','Rob5','Strongman','Jr Dev','1994-08-22','2018-01-01',9000453307,2420431230,NULL,''),(7,'Qwerty6','0å/Ó>Îé\"9tþ’[=','Rob6','Strongman','Jr Dev','1994-02-04','2018-01-01',9000453306,2420431231,NULL,''),(8,'Qwerty7','0å/Ó>Îé\"9tþ’[=','Rob7','Strongman','Jr Dev','1993-02-04','2018-01-01',9000453305,2420431232,NULL,''),(9,'Qwerty8','0å/Ó>Îé\"9tþ’[=','Rob8','Strongman','Jr Dev','1992-02-04','2018-01-01',9000453304,2420431233,NULL,''),(10,'Qwerty9','0å/Ó>Îé\"9tþ’[=','Rob9','Strongman','Admin','1991-02-04','2018-01-01',9000453303,2420431233,NULL,''),(11,'Qwerty10','0å/Ó>Îé\"9tþ’[=','Rob10','Strongman','Admin','1991-02-02','2018-01-02',9000453304,2420431234,NULL,''),(12,'Qwerty11','0å/Ó>Îé\"9tþ’[=','Rob11','Strongman','Admin','1991-02-03','2018-01-04',9000453305,2420431235,NULL,'');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `HOMEWORK_INFO`
--

DROP TABLE IF EXISTS `HOMEWORK_INFO`;
/*!50001 DROP VIEW IF EXISTS `HOMEWORK_INFO`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `HOMEWORK_INFO` AS SELECT 
 1 AS `Announcement_time`,
 1 AS `mentor_id`,
 1 AS `mentor_name`,
 1 AS `apprentice_id`,
 1 AS `apprentice_name`,
 1 AS `resources`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Homework`
--

DROP TABLE IF EXISTS `Homework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Homework` (
  `homework_id` int(30) NOT NULL AUTO_INCREMENT,
  `Announcement_time` datetime NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `apprentice_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`homework_id`),
  KEY `mentor_id` (`mentor_id`),
  KEY `homework_emp_id_index` (`apprentice_id`,`mentor_id`),
  CONSTRAINT `Homework_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`mentor_id`),
  CONSTRAINT `Homework_ibfk_2` FOREIGN KEY (`apprentice_id`) REFERENCES `Apprentice` (`apprentice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Homework`
--

LOCK TABLES `Homework` WRITE;
/*!40000 ALTER TABLE `Homework` DISABLE KEYS */;
INSERT INTO `Homework` VALUES (1,'2019-11-05 14:29:26',1,4,1,0),(2,'2019-11-15 11:11:16',1,5,1,0);
/*!40000 ALTER TABLE `Homework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `MENTOR_INFO`
--

DROP TABLE IF EXISTS `MENTOR_INFO`;
/*!50001 DROP VIEW IF EXISTS `MENTOR_INFO`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MENTOR_INFO` AS SELECT 
 1 AS `employee_id`,
 1 AS `Mentor_FullName`,
 1 AS `username`,
 1 AS `last_login_time`,
 1 AS `last_logout_time`,
 1 AS `Account_status`,
 1 AS `Pref_ProgrammingLang`,
 1 AS `Pref_BackendFramework`,
 1 AS `Pref_FrontendFramework`,
 1 AS `Pref_DatabaseSystem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MENTOR_PUPILS`
--

DROP TABLE IF EXISTS `MENTOR_PUPILS`;
/*!50001 DROP VIEW IF EXISTS `MENTOR_PUPILS`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MENTOR_PUPILS` AS SELECT 
 1 AS `apprentice_eid`,
 1 AS `apprentice_name`,
 1 AS `mentor_eid`,
 1 AS `mentor_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Mentor`
--

DROP TABLE IF EXISTS `Mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mentor` (
  `mentor_id` int(11) NOT NULL,
  `Pref_ProgrammingLang` varchar(100) DEFAULT NULL,
  `Pref_BackendFramework` varchar(100) DEFAULT NULL,
  `Pref_FrontendFramework` varchar(100) DEFAULT NULL,
  `Pref_DatabaseSystem` varchar(100) DEFAULT NULL,
  `last_login_time` datetime NOT NULL,
  `last_logout_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mentor_id`),
  KEY `mentor_id_index` (`mentor_id`),
  CONSTRAINT `Mentor_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor`
--

LOCK TABLES `Mentor` WRITE;
/*!40000 ALTER TABLE `Mentor` DISABLE KEYS */;
INSERT INTO `Mentor` VALUES (1,'#C','.Net','Node.Js','Oracle','2019-11-21 20:35:48',NULL,1),(2,'Python','Django','Node.Js','Oracle','2019-01-12 08:23:34','2019-01-12 18:10:02',0),(3,'Java','.Net','JSP','Oracle','2019-11-07 08:23:34','2019-11-07 18:14:17',1);
/*!40000 ALTER TABLE `Mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Message`
--

DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Message` (
  `msg_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `receiver_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `msg_time` datetime NOT NULL,
  `msg_text` varchar(8000) NOT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  KEY `message_id_index` (`sender_id`,`receiver_id`),
  CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `Employee` (`employee_id`),
  CONSTRAINT `Message_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `Employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
INSERT INTO `Message` VALUES (1,1,4,'2019-10-08 15:45:58','Hello Rob'),(2,1,4,'2019-10-08 15:48:01','Hello Rob'),(3,4,1,'2019-10-09 15:48:48','Hello Rob4!!');
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Question`
--

DROP TABLE IF EXISTS `Question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` mediumtext NOT NULL,
  `quiz_id` int(11) NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `quiz_id` (`quiz_id`),
  KEY `question_quiz_id_index` (`quiz_id`,`question_id`),
  CONSTRAINT `Question_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `Quiz` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Question`
--

LOCK TABLES `Question` WRITE;
/*!40000 ALTER TABLE `Question` DISABLE KEYS */;
INSERT INTO `Question` VALUES (1,'What is the correct symbol for the address of operator?',1),(2,'What is symbol to designate something as a pointer?',1),(3,'Can you cast to change a pointer\'s type in C?',1),(4,'Can you cast to change a pointer\'s type in C?',2),(5,'What is the correct symbol for the address of operator?',2),(6,'What is symbol to designate something as a pointer?',2),(7,'Can you cast to change a pointer\'s type in C?',3),(8,'Can you cast to change a pointer\'s type in C?',4);
/*!40000 ALTER TABLE `Question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quiz`
--

DROP TABLE IF EXISTS `Quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quiz` (
  `quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_name` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `author` int(11) NOT NULL,
  `quiz_postedon` datetime NOT NULL,
  PRIMARY KEY (`quiz_id`),
  KEY `author` (`author`),
  KEY `quiz_id_index` (`quiz_id`),
  KEY `quiz_name_index` (`quiz_name`),
  KEY `quiz_eid_index` (`author`,`quiz_id`),
  CONSTRAINT `Quiz_ibfk_1` FOREIGN KEY (`author`) REFERENCES `Mentor` (`mentor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quiz`
--

LOCK TABLES `Quiz` WRITE;
/*!40000 ALTER TABLE `Quiz` DISABLE KEYS */;
INSERT INTO `Quiz` VALUES (1,'C Pointer Refresher',1,3,'2019-11-05 16:59:37'),(2,'Sprint 2 Check-In',1,2,'2019-11-11 16:59:37'),(3,'MySQL Review',1,1,'2019-11-14 16:59:37'),(4,'C Pointer Refresher',1,3,'2019-11-14 16:59:37'),(5,'Sprint 2 Check-In',1,2,'2019-11-16 16:59:38'),(6,'MySQL Review',1,1,'2019-11-19 16:59:38');
/*!40000 ALTER TABLE `Quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resources`
--

DROP TABLE IF EXISTS `Resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Resources` (
  `resource_id` int(30) NOT NULL AUTO_INCREMENT,
  `homework_id` int(30) NOT NULL,
  `resource_text` longtext NOT NULL,
  PRIMARY KEY (`resource_id`),
  KEY `resources_hwid_index` (`homework_id`),
  CONSTRAINT `Resources_ibfk_1` FOREIGN KEY (`homework_id`) REFERENCES `Homework` (`homework_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resources`
--

LOCK TABLES `Resources` WRITE;
/*!40000 ALTER TABLE `Resources` DISABLE KEYS */;
INSERT INTO `Resources` VALUES (1,1,'The Art or Programming in C: An Intermediate Guide to C by Arthur Miller\nThe Expert Guide to C Pointers by Michael Pointclaire\nW3 Schools Pointer Tutorial'),(2,1,'The Expert Guide to C Pointers by Michael Pointclaire'),(3,1,'W3 Schools Pointer Tutorial'),(4,2,'Databases for Dummies by Rick Roll'),(5,2,'Databases in the Wild by Rolf Potts'),(6,2,'Database Trigger Warnings: A Complete Guide to Common Errors in Event management by John Stockton');
/*!40000 ALTER TABLE `Resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Response`
--

DROP TABLE IF EXISTS `Response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Response` (
  `response_id` int(11) NOT NULL AUTO_INCREMENT,
  `attempt_no` int(5) NOT NULL,
  `res_time` datetime DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `responder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`response_id`),
  KEY `quiz_id` (`quiz_id`),
  KEY `responder_id` (`responder_id`),
  KEY `response_id_index` (`responder_id`,`quiz_id`),
  CONSTRAINT `Response_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `Quiz` (`quiz_id`),
  CONSTRAINT `Response_ibfk_2` FOREIGN KEY (`responder_id`) REFERENCES `Apprentice` (`apprentice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Response`
--

LOCK TABLES `Response` WRITE;
/*!40000 ALTER TABLE `Response` DISABLE KEYS */;
INSERT INTO `Response` VALUES (1,0,'2015-11-05 14:29:36',1,4),(2,0,'2015-11-05 14:29:26',1,5);
/*!40000 ALTER TABLE `Response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Response_Answer`
--

DROP TABLE IF EXISTS `Response_Answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Response_Answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `response_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `is_right` tinyint(1) DEFAULT NULL,
  `answer` mediumtext NOT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `question_id` (`question_id`),
  KEY `response_id` (`response_id`),
  KEY `res_ans_id_index` (`response_id`,`question_id`),
  CONSTRAINT `Response_Answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `Question` (`question_id`),
  CONSTRAINT `Response_Answer_ibfk_2` FOREIGN KEY (`response_id`) REFERENCES `Response` (`response_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Response_Answer`
--

LOCK TABLES `Response_Answer` WRITE;
/*!40000 ALTER TABLE `Response_Answer` DISABLE KEYS */;
INSERT INTO `Response_Answer` VALUES (1,1,1,1,'&'),(2,1,2,0,'#'),(3,1,3,1,'True'),(4,2,1,1,'&'),(5,2,2,1,'*'),(6,2,3,1,'True');
/*!40000 ALTER TABLE `Response_Answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Weekly_Report`
--

DROP TABLE IF EXISTS `Weekly_Report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Weekly_Report` (
  `report_id` int(30) NOT NULL AUTO_INCREMENT,
  `report_time` datetime NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `apprentice_id` int(11) NOT NULL,
  `score` int(1) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`report_id`),
  KEY `apprentice_id` (`apprentice_id`),
  KEY `week_report_id_index` (`mentor_id`,`apprentice_id`),
  CONSTRAINT `Weekly_Report_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `Mentor` (`mentor_id`),
  CONSTRAINT `Weekly_Report_ibfk_2` FOREIGN KEY (`apprentice_id`) REFERENCES `Apprentice` (`apprentice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Weekly_Report`
--

LOCK TABLES `Weekly_Report` WRITE;
/*!40000 ALTER TABLE `Weekly_Report` DISABLE KEYS */;
INSERT INTO `Weekly_Report` VALUES (1,'2019-11-06 16:46:26',1,4,4,'Need to work on OOPS concepts'),(2,'2019-11-14 16:46:26',1,4,5,'Able to explain OOPS concepts in comprehensive way, Need to understand in which situations concepts can be used'),(3,'2019-11-13 16:46:26',1,5,5,'Awesome comprehension and communication skills while explaining database concepts'),(4,'2019-11-14 16:46:26',3,9,5,'Very good coding skills but add comments in code so that while going through it others know about what you were thinking');
/*!40000 ALTER TABLE `Weekly_Report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'MMS_Sprint3'
--

--
-- Dumping routines for database 'MMS_Sprint3'
--
/*!50003 DROP FUNCTION IF EXISTS `SCORE_CALCULATION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`rgunti1`@`%` FUNCTION `SCORE_CALCULATION`(QUIZ_ID INT(11), RESPONDER_ID INT(11), ATTEMPT_NO INT(5)) RETURNS decimal(5,3)
BEGIN
	DECLARE SCORE DECIMAL(5,3) DEFAULT 00.000;
    SELECT SUM(RA.is_right)/COUNT(*) INTO SCORE FROM Quiz as Q, Response as R, Question as Qs, Response_Answer as RA  WHERE R.quiz_id = Q.quiz_id and Q.quiz_id = Qs.quiz_id and RA.response_id = R.response_id and Qs.question_id = RA.question_id and R.quiz_id=QUIZ_ID and R.attempt_no = ATTEMPT_NO and R.responder_id=RESPONDER_ID;
	RETURN SCORE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GET_QUIZ` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`rgunti1`@`%` PROCEDURE `GET_QUIZ`(IN QUIZ_ID INT(11),IN IS_ACTIVE BOOLEAN)
BEGIN
	SELECT Q.quiz_id, Q.quiz_name, Qs.question_id, Qs.question_text, GROUP_CONCAT(concat_ws(' - ',C.choice, C.is_right)) `Answer_Choices` from Quiz as Q, Question as Qs, Choices as C  WHERE Q.quiz_id = Qs.quiz_id AND Qs.Question_id = C.Question_id AND C.quiz_id = Q.quiz_id and Q.is_active = IS_ACTIVE and Q.quiz_id=QUIZ_ID GROUP BY Q.quiz_id, Q.quiz_name, Q.is_active, Qs.question_id, Qs.question_text;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LOGIN_TIME_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`rgunti1`@`%` PROCEDURE `LOGIN_TIME_UPDATE`(IN ID INT(11), IN TAB_NAME VARCHAR(2))
BEGIN
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SELECT 'Error, while updating login time for id:'+ID;
    START TRANSACTION;
	CASE
		WHEN TAB_NAME = 'A' THEN UPDATE Apprentice SET last_login_time=now(), last_logout_time=null WHERE apprentice_id = ID; COMMIT; SELECT apprentice_id, last_login_time, last_logout_time from Apprentice WHERE apprentice_id = ID;
		WHEN TAB_NAME = 'M' THEN UPDATE Mentor SET last_login_time=now(), last_logout_time=null WHERE mentor_id = ID; COMMIT; SELECT mentor_id, last_login_time, last_logout_time from Mentor WHERE mentor_id = ID;
        WHEN TAB_NAME = 'AD' THEN UPDATE Administrator SET last_login_time=now(), last_logout_time=null WHERE admin_id = ID; COMMIT; SELECT admin_id, last_login_time, last_logout_time from Administrator WHERE admin_id = ID;
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LOGOUT_TIME_UPDATE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`rgunti1`@`%` PROCEDURE `LOGOUT_TIME_UPDATE`(IN ID INT(11), IN TAB_NAME VARCHAR(2))
BEGIN
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SELECT 'Error, while updating logout time for '+ID;
    START TRANSACTION;
	CASE
		WHEN TAB_NAME = 'A' THEN UPDATE Apprentice SET last_logout_time=now() WHERE apprentice_id = ID; COMMIT; SELECT apprentice_id, last_login_time, last_logout_time from Apprentice WHERE apprentice_id = ID;
		WHEN TAB_NAME = 'M' THEN UPDATE Mentor SET last_logout_time=now() WHERE mentor_id = ID; COMMIT; SELECT mentor_id, last_login_time, last_logout_time from Mentor WHERE mentor_id = ID;
        WHEN TAB_NAME = 'AD' THEN UPDATE Administrator SET last_logout_time=now() WHERE admin_id = ID; COMMIT; SELECT admin_id, last_login_time, last_logout_time from Administrator WHERE admin_id = ID;
	END CASE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MAKING_LOGINS_INACTIVE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`rgunti1`@`%` PROCEDURE `MAKING_LOGINS_INACTIVE`()
BEGIN

DECLARE ID INT(11);
DECLARE LOGOUT DATETIME;
DECLARE done INTEGER DEFAULT 0;
DECLARE A CURSOR FOR SELECT apprentice_id, last_logout_time FROM Apprentice WHERE last_logout_time <= (now()- interval 90 DAY);
DECLARE M CURSOR FOR SELECT mentor_id, last_logout_time FROM Mentor WHERE last_logout_time <= (now()- interval 90 DAY);
DECLARE AD CURSOR FOR SELECT admin_id, last_logout_time FROM Administrator WHERE last_logout_time <= (now()- interval 90 DAY);

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
DECLARE EXIT HANDLER FOR SQLWARNING ROLLBACK;
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
SET done = 0;
OPEN A;
app: LOOP
	FETCH A INTO ID, LOGOUT;
    IF done = 1 THEN CLOSE A; LEAVE app; END IF;
	UPDATE Apprentice SET is_active= false WHERE apprentice_id = ID;
END LOOP app;

SET done = 0;
OPEN M;
men: LOOP
	FETCH M INTO ID, LOGOUT;
    IF done = 1 THEN CLOSE M; LEAVE men; END IF;
	UPDATE Mentor SET is_active= false  WHERE mentor_id = ID;
END LOOP men;

SET done = 0;
OPEN AD;
adm: LOOP
	FETCH AD INTO ID, LOGOUT;
    IF done = 1 THEN CLOSE AD; LEAVE adm; END IF;
	UPDATE Administrator SET is_active= false  WHERE admin_id = ID;
END LOOP adm;
COMMIT;

SELECT A.apprentice_id  as `employee_id`, A.last_login_time, A.last_logout_time FROM Apprentice AS A WHERE A.is_active = 0
UNION ALL
SELECT M.mentor_id  as `employee_id`, M.last_login_time, M.last_logout_time FROM Mentor AS M WHERE M.is_active = 0
UNION ALL
SELECT AD.admin_id  as `employee_id`, AD.last_login_time, AD.last_logout_time FROM Administrator AS AD WHERE AD.is_active = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `ADMIN_INFO`
--

/*!50001 DROP VIEW IF EXISTS `ADMIN_INFO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rgunti1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ADMIN_INFO` AS select `E`.`employee_id` AS `employee_id`,concat_ws(' ',`E`.`first_name`,`E`.`last_name`) AS `Admin_FullName`,`E`.`username` AS `username`,`A`.`last_login_time` AS `last_login_time`,`A`.`last_logout_time` AS `last_logout_time`,if(`A`.`is_active`,'Active','Inactive') AS `Account_status` from (`Employee` `E` join `Administrator` `A` on((`E`.`employee_id` = `A`.`admin_id`))) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ALL_HOMEWORKS`
--

/*!50001 DROP VIEW IF EXISTS `ALL_HOMEWORKS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rgunti1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ALL_HOMEWORKS` AS select `H`.`Announcement_time` AS `Announcement_time`,`H`.`mentor_id` AS `mentor_id`,concat_ws(' ',`M`.`first_name`,`M`.`last_name`) AS `mentor_name`,`H`.`apprentice_id` AS `apprentice_id`,concat_ws(' ',`A`.`first_name`,`A`.`last_name`) AS `apprentice_name`,group_concat(`R`.`resource_text` separator ',') AS `resources`,if(`H`.`is_active`,'Published','Yet to Publish / Closed for Evaluation') AS `status`,if(`H`.`is_completed`,'Completed','Waiting for Completion') AS `student_completion_status` from (((`Homework` `H` join `Resources` `R` on((`H`.`homework_id` = `R`.`homework_id`))) join `Employee` `M` on((`H`.`mentor_id` = `M`.`employee_id`))) join `Employee` `A` on((`H`.`apprentice_id` = `A`.`employee_id`))) group by `H`.`Announcement_time`,`H`.`mentor_id`,`mentor_name`,`H`.`apprentice_id`,`apprentice_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `APPRENTICE_INFO`
--

/*!50001 DROP VIEW IF EXISTS `APPRENTICE_INFO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rgunti1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `APPRENTICE_INFO` AS select `E`.`employee_id` AS `employee_id`,concat_ws(' ',`E`.`first_name`,`E`.`last_name`) AS `Apprentice_FullName`,`E`.`username` AS `username`,`A`.`last_login_time` AS `last_login_time`,`A`.`last_logout_time` AS `last_logout_time`,if(`A`.`is_active`,'Active','Inactive') AS `Account_status`,`A`.`Pref_ProgrammingLang` AS `Pref_ProgrammingLang`,`A`.`Pref_BackendFramework` AS `Pref_BackendFramework`,`A`.`Pref_FrontendFramework` AS `Pref_FrontendFramework`,`A`.`Pref_DatabaseSystem` AS `Pref_DatabaseSystem` from (`Employee` `E` join `Apprentice` `A` on((`E`.`employee_id` = `A`.`apprentice_id`))) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `APPRENTICE_MENTOR_MEETINGS`
--

/*!50001 DROP VIEW IF EXISTS `APPRENTICE_MENTOR_MEETINGS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rgunti1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `APPRENTICE_MENTOR_MEETINGS` AS select concat_ws(' ',`E1`.`first_name`,`E1`.`last_name`) AS `Apprentice_Name`,`J`.`apprentice_id` AS `apprentice_id`,`J`.`mentor_id` AS `mentor_id`,`J`.`Mentor_Name` AS `Mentor_Name`,`J`.`start_time` AS `start_time`,`J`.`end_time` AS `end_time`,`J`.`status` AS `status`,`J`.`Attended` AS `Attended`,`J`.`pre_meeting_notes` AS `pre_meeting_notes`,`J`.`post_meeting_notes` AS `post_meeting_notes`,`J`.`Location` AS `Location` from (((select `A`.`apprentice_id` AS `apprentice_id`,`A`.`mentor_id` AS `mentor_id`,concat_ws(' ',`E`.`first_name`,`E`.`last_name`) AS `Mentor_Name`,`A`.`start_time` AS `start_time`,`A`.`end_time` AS `end_time`,`A`.`status` AS `status`,if(`A`.`attended`,'Yes','No') AS `Attended`,`A`.`pre_meeting_notes` AS `pre_meeting_notes`,ifnull(`A`.`post_meeting_notes`,'Nothing provided by Mentor') AS `post_meeting_notes`,concat_ws(', ',concat('Room No: ',`A`.`room_no`),concat('Floor No: ',`A`.`floor_no`),concat('Building: ',`A`.`building_name`)) AS `Location` from (`MMS_Sprint3`.`Appointment` `A` join `MMS_Sprint3`.`Employee` `E` on((`E`.`employee_id` = `A`.`mentor_id`))))) `J` join `MMS_Sprint3`.`Employee` `E1` on((`E1`.`employee_id` = `J`.`apprentice_id`))) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `EMPLOYEE_INFO`
--

/*!50001 DROP VIEW IF EXISTS `EMPLOYEE_INFO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rgunti1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `EMPLOYEE_INFO` AS select `E`.`employee_id` AS `Employee ID`,`E`.`username` AS `Username`,concat_ws(`E`.`first_name`,' ',`E`.`last_name`) AS `Employee Full name`,`E`.`job_title` AS `Job Title`,`E`.`join_date` AS `Hire Date`,`AD`.`address_line1` AS `Address_line1`,`AD`.`address_line2` AS `Address_line2`,`AD`.`city` AS `City`,`AD`.`state` AS `State`,`AD`.`zip_code` AS `Zip Code` from (`Employee` `E` join `Address` `AD`) where (`E`.`employee_id` = `AD`.`employee_id`) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `HOMEWORK_INFO`
--

/*!50001 DROP VIEW IF EXISTS `HOMEWORK_INFO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rgunti1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `HOMEWORK_INFO` AS select `H`.`Announcement_time` AS `Announcement_time`,`H`.`mentor_id` AS `mentor_id`,concat_ws(' ',`M`.`first_name`,`M`.`last_name`) AS `mentor_name`,`H`.`apprentice_id` AS `apprentice_id`,concat_ws(' ',`A`.`first_name`,`A`.`last_name`) AS `apprentice_name`,group_concat(`R`.`resource_text` separator ',') AS `resources` from (((`Homework` `H` join `Resources` `R` on((`H`.`homework_id` = `R`.`homework_id`))) join `Employee` `M` on((`H`.`mentor_id` = `M`.`employee_id`))) join `Employee` `A` on((`H`.`apprentice_id` = `A`.`employee_id`))) group by `H`.`Announcement_time`,`H`.`mentor_id`,`mentor_name`,`H`.`apprentice_id`,`apprentice_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MENTOR_INFO`
--

/*!50001 DROP VIEW IF EXISTS `MENTOR_INFO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rgunti1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MENTOR_INFO` AS select `E`.`employee_id` AS `employee_id`,concat_ws(' ',`E`.`first_name`,`E`.`last_name`) AS `Mentor_FullName`,`E`.`username` AS `username`,`M`.`last_login_time` AS `last_login_time`,`M`.`last_logout_time` AS `last_logout_time`,if(`M`.`is_active`,'Active','Inactive') AS `Account_status`,`M`.`Pref_ProgrammingLang` AS `Pref_ProgrammingLang`,`M`.`Pref_BackendFramework` AS `Pref_BackendFramework`,`M`.`Pref_FrontendFramework` AS `Pref_FrontendFramework`,`M`.`Pref_DatabaseSystem` AS `Pref_DatabaseSystem` from (`Employee` `E` join `Mentor` `M` on((`E`.`employee_id` = `M`.`mentor_id`))) */
/*!50002 WITH CASCADED CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MENTOR_PUPILS`
--

/*!50001 DROP VIEW IF EXISTS `MENTOR_PUPILS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rgunti1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MENTOR_PUPILS` AS select `A`.`apprentice_id` AS `apprentice_eid`,concat(`E`.`first_name`,' ',`E`.`last_name`) AS `apprentice_name`,`A`.`mentor_id` AS `mentor_eid`,`A`.`mentor_name` AS `mentor_name` from (`MMS_Sprint3`.`Employee` `E` join (select `A`.`apprentice_id` AS `apprentice_id`,`A`.`mentor_id` AS `mentor_id`,concat(`E`.`first_name`,' ',`E`.`last_name`) AS `mentor_name` from (`MMS_Sprint3`.`Apprentice` `A` join `MMS_Sprint3`.`Employee` `E`) where (`A`.`mentor_id` = `E`.`employee_id`)) `A`) where (`A`.`apprentice_id` = `E`.`employee_id`) */
/*!50002 WITH CASCADED CHECK OPTION */;
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

-- Dump completed on 2019-11-21 23:38:43
