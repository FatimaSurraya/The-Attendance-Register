-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ar_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `attendancerecord`
--

DROP TABLE IF EXISTS `attendancerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendancerecord` (
  `AttendanceID` int NOT NULL AUTO_INCREMENT,
  `LessonID` int DEFAULT NULL,
  `PupilID` int DEFAULT NULL,
  `attendanceStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AttendanceID`),
  KEY `LessonID` (`LessonID`),
  KEY `PupilID` (`PupilID`),
  CONSTRAINT `attendancerecord_ibfk_1` FOREIGN KEY (`LessonID`) REFERENCES `lessons` (`LessonID`),
  CONSTRAINT `attendancerecord_ibfk_2` FOREIGN KEY (`PupilID`) REFERENCES `pupils` (`PupilID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendancerecord`
--

LOCK TABLES `attendancerecord` WRITE;
/*!40000 ALTER TABLE `attendancerecord` DISABLE KEYS */;
INSERT INTO `attendancerecord` VALUES (1,31,1,'Present'),(2,32,2,'Authorised Absence'),(3,33,3,'Unauthorised Absence'),(4,34,4,'Present'),(5,35,5,'Present'),(6,36,6,'Authorised Absence'),(7,37,7,'Unauthorised Absence'),(8,38,8,'Present'),(9,39,9,'Present'),(10,40,10,'Authorised Absence'),(11,41,11,'Unauthorised Absence'),(12,42,12,'Present'),(13,43,13,'Present'),(14,44,14,'Authorised Absence'),(15,45,16,'Unauthorised Absence'),(17,47,17,'Present'),(18,48,18,'Present'),(19,49,19,'Authorised Absence'),(20,50,20,'Unauthorised Absence'),(21,51,21,'Present'),(22,52,22,'Present'),(23,53,23,'Authorised Absence'),(24,54,24,'Unauthorised Absence'),(25,55,25,'Present'),(26,56,26,'Present'),(27,57,27,'Present'),(28,58,28,'Authorised Absence'),(29,59,29,'Unauthorised Absence'),(30,60,30,'Present');
/*!40000 ALTER TABLE `attendancerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `LessonID` int NOT NULL AUTO_INCREMENT,
  `LessonDate` date DEFAULT NULL,
  `LessonTime` enum('Morning','Afternoon') DEFAULT NULL,
  `StaffID` int DEFAULT NULL,
  `PupilID` int DEFAULT NULL,
  `AttendanceStatus` enum('Present','Authorised Absence','Unauthorised Absence') DEFAULT NULL,
  PRIMARY KEY (`LessonID`),
  KEY `StaffID` (`StaffID`),
  KEY `PupilID` (`PupilID`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `teachers` (`StaffID`),
  CONSTRAINT `lessons_ibfk_2` FOREIGN KEY (`PupilID`) REFERENCES `pupils` (`PupilID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (31,'2023-01-01','Morning',1,1,'Present'),(32,'2023-01-01','Morning',2,2,'Present'),(33,'2023-01-01','Morning',3,3,'Authorised Absence'),(34,'2023-01-01','Morning',4,4,'Present'),(35,'2023-01-01','Morning',5,5,'Unauthorised Absence'),(36,'2023-01-02','Afternoon',6,1,'Present'),(37,'2023-01-02','Afternoon',7,2,'Authorised Absence'),(38,'2023-01-02','Afternoon',8,3,'Present'),(39,'2023-01-02','Afternoon',9,4,'Present'),(40,'2023-01-02','Afternoon',10,5,'Unauthorised Absence'),(41,'2023-02-03','Morning',1,11,'Present'),(42,'2023-01-04','Morning',2,12,'Unauthorised Absence'),(43,'2023-04-03','Morning',3,13,'Present'),(44,'2023-07-01','Morning',4,14,'Present'),(45,'2023-04-01','Morning',5,15,'Present'),(46,'2023-06-01','Morning',6,16,'Authorised Absence'),(47,'2023-05-01','Morning',7,17,'Present'),(48,'2023-03-08','Morning',8,18,'Unauthorised Absence'),(49,'2023-02-02','Afternoon',9,19,'Present'),(50,'2023-01-08','Afternoon',10,20,'Authorised Absence'),(51,'2023-02-01','Morning',1,21,'Present'),(52,'2023-03-01','Morning',2,22,'Present'),(53,'2023-04-09','Morning',3,23,'Authorised Absence'),(54,'2023-05-01','Morning',4,24,'Present'),(55,'2023-06-07','Morning',5,25,'Unauthorised Absence'),(56,'2023-07-04','Afternoon',6,26,'Present'),(57,'2023-08-07','Afternoon',7,27,'Authorised Absence'),(58,'2023-06-05','Morning',8,28,'Present'),(59,'2023-05-06','Morning',9,29,'Present'),(60,'2023-01-17','Morning',10,30,'Authorised Absence');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pupils`
--

DROP TABLE IF EXISTS `pupils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupils` (
  `PupilID` int NOT NULL AUTO_INCREMENT,
  `Forename` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `NextOfKinTelephone` varchar(255) DEFAULT NULL,
  `StartAcademicYear` int DEFAULT NULL,
  `EndAcademicYear` int DEFAULT NULL,
  PRIMARY KEY (`PupilID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupils`
--

LOCK TABLES `pupils` WRITE;
/*!40000 ALTER TABLE `pupils` DISABLE KEYS */;
INSERT INTO `pupils` VALUES (1,'John','Doe','2009-05-12','1234567890',2021,2023),(2,'Jane','Smith','2010-08-27','9876543210',2021,2023),(3,'Michael','Johnson','2011-03-18','5551234567',2021,2023),(4,'Emily','Brown','2012-11-05','7779876543',2021,2023),(5,'Daniel','Wilson','2010-06-30','4448889999',2021,2023),(6,'Sophia','Taylor','2009-12-15','2223334444',2018,2024),(7,'Matthew','Anderson','2011-08-02','6665554444',2021,2023),(8,'Olivia','Thomas','2013-04-20','9998887777',2018,2024),(9,'Christopher','Martinez','2012-01-10','1112223333',2021,2023),(10,'Ava','Harris','2010-09-18','5554443333',2021,2023),(11,'Ethan','Jones','2009-07-19','3334445555',2021,2023),(12,'Mia','Miller','2010-04-06','6667778888',2021,2023),(13,'Alexander','Davis','2011-01-24','2223334444',2021,2023),(14,'Abigail','Wilson','2009-09-11','5556667777',2021,2023),(15,'William','Taylor','2010-05-30','8889990000',2021,2023),(16,'Samantha','Anderson','2011-02-17','2223334444',2021,2023),(17,'James','Thomas','2009-10-05','5556667777',2021,2023),(18,'Lily','Martinez','2010-06-22','8889990000',2018,2024),(19,'Benjamin','Brown','2011-03-12','2223334444',2018,2024),(20,'Avery','Johnson','2009-11-29','5556667777',2021,2023),(21,'Oliver','Lee','2009-12-16','1112223333',2021,2023),(22,'Emily','Gonzalez','2010-08-02','4445556666',2021,2023),(23,'Daniel','Clark','2011-05-21','9998887777',2021,2023),(24,'Madison','Walker','2009-01-07','3334445555',2018,2024),(25,'Aiden','Hall','2010-09-25','6667778888',2021,2023),(26,'Scarlett','Lopez','2011-07-13','2223334444',2021,2023),(27,'Matthew','Green','2009-02-28','5556667777',2021,2023),(28,'Chloe','Adams','2010-10-16','8889990000',2021,2023),(29,'Lucas','Harris','2011-08-04','2223334444',2018,2024),(30,'Aubrey','King','2009-04-21','5556667777',2018,2024);
/*!40000 ALTER TABLE `pupils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `StaffID` int NOT NULL AUTO_INCREMENT,
  `Forename` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'John','Doe','Mathematics'),(2,'Jane','Smith','English'),(3,'Michael','Johnson','Science'),(4,'Emily','Brown','History'),(5,'David','Wilson','Physics'),(6,'Sarah','Taylor','Art'),(7,'Robert','Anderson','Music'),(8,'Laura','Thomas','Geography'),(9,'Daniel','Clark','Computer Science'),(10,'Emma','Roberts','French');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03 20:47:16
