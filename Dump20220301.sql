CREATE DATABASE  IF NOT EXISTS `tdp_model` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tdp_model`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tdp_model
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `class_session`
--

DROP TABLE IF EXISTS `class_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_session` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `date_session` date NOT NULL,
  `course_id` int NOT NULL,
  `start_time` varchar(45) NOT NULL,
  `end_time` varchar(45) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `course_idx` (`course_id`),
  CONSTRAINT `course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_session`
--

LOCK TABLES `class_session` WRITE;
/*!40000 ALTER TABLE `class_session` DISABLE KEYS */;
INSERT INTO `class_session` VALUES (151,'2022-05-04',9,'2:31 PM','11:39 AM','Zebadiah Boss'),(152,'2022-05-24',15,'3:00 PM','1:02 PM','Maury McLanaghan'),(153,'2022-09-23',5,'7:34 PM','2:01 PM','Sapphire Stansbie'),(154,'2023-01-20',20,'5:43 PM','5:16 PM','Lynne Flippelli'),(155,'2022-02-04',28,'4:22 PM','11:54 AM','Basia Targett'),(156,'2022-06-30',26,'4:10 PM','11:40 AM','Madelon Jacox'),(157,'2022-07-18',11,'12:38 PM','2:38 PM','Ailsun Devey'),(158,'2022-05-25',17,'3:33 PM','12:50 PM','Nollie Bruni'),(159,'2022-10-11',18,'7:35 PM','4:48 PM','Zarah Deakan'),(160,'2022-07-22',4,'10:10 AM','4:14 PM','Dona Rawlin'),(161,'2022-08-18',9,'12:39 PM','3:08 PM','Nathalia McKeaney'),(162,'2022-05-13',12,'8:43 PM','11:16 AM','Christean Strickler'),(163,'2022-08-22',17,'9:55 AM','5:20 PM','Leonardo Joan'),(164,'2022-07-25',23,'11:39 AM','6:35 PM','Ludwig Draayer'),(165,'2022-01-29',1,'6:46 PM','7:05 PM','Gloriane Piatek'),(166,'2022-12-14',21,'6:43 PM','8:00 PM','Walton Ind'),(167,'2022-12-25',6,'7:13 PM','5:31 PM','Janela Basindale'),(168,'2022-04-17',18,'11:19 AM','9:18 PM','Maris Enever'),(169,'2022-05-27',9,'3:12 PM','6:28 PM','Charil Coldman'),(170,'2022-09-25',10,'3:10 PM','1:19 PM','Chickie Von Brook'),(171,'2022-10-03',28,'2:11 PM','1:35 PM','Rodge Doelle'),(172,'2022-01-02',28,'1:37 PM','9:20 PM','Tonnie Carrane'),(173,'2022-08-14',16,'4:01 PM','6:17 PM','Gardie Paling'),(174,'2022-03-19',7,'9:34 AM','12:55 PM','Maison Dict'),(175,'2022-02-16',7,'6:00 PM','2:32 PM','Clio Bracken'),(176,'2023-01-11',20,'9:14 AM','3:05 PM','Cthrine Castagneri'),(177,'2023-01-03',24,'5:46 PM','2:44 PM','Vaughan Castiglione'),(178,'2022-10-07',23,'8:44 PM','1:09 PM','Cathleen Wormleighton'),(179,'2022-01-20',13,'11:50 AM','3:49 PM','Ardene Rees'),(180,'2022-07-19',15,'3:11 PM','11:41 AM','Henrie Wissby'),(181,'2022-07-01',24,'8:19 PM','3:56 PM','Auberta Ezzy'),(182,'2022-10-23',3,'10:45 AM','12:48 PM','Inez Blesdill'),(183,'2022-02-14',20,'7:23 PM','7:25 PM','Flory Ianelli'),(184,'2022-01-21',4,'3:36 PM','7:37 PM','Ellie Wrightham'),(185,'2022-06-02',26,'11:33 AM','5:01 PM','Valaria Nayer'),(186,'2022-11-22',17,'12:10 PM','4:54 PM','Tommie Frarey'),(187,'2022-07-17',10,'6:51 PM','1:06 PM','Klemens Church'),(188,'2022-08-10',6,'4:09 PM','4:33 PM','Marcelline Phalp'),(189,'2022-03-06',23,'5:47 PM','1:52 PM','Trish Guidera'),(190,'2022-09-13',22,'10:13 AM','11:59 AM','Corissa Damrel'),(206,'2023-01-26',89,'4:23 PM','5:52 PM','Prissie Edleston'),(207,'2022-04-29',90,'4:56 PM','7:37 PM','Bobbie McInally'),(208,'2022-04-03',91,'1:26 PM','3:01 PM','Athena Oriel'),(209,'2022-05-16',92,'1:39 PM','7:38 PM','Jennee Saintsbury'),(210,'2022-05-17',93,'10:44 AM','11:59 AM','Noell MacLucais'),(211,'2022-07-15',94,'1:03 PM','11:03 AM','Agnese Hodgin'),(212,'2022-10-09',95,'2:41 PM','1:24 PM','Beale Sturr'),(213,'2022-02-28',96,'9:12 AM','1:40 PM','Kare Spittles'),(214,'2022-11-13',91,'3:15 PM','11:47 AM','Thedrick Kneeland'),(215,'2022-03-05',97,'9:00 AM','6:52 PM','Terri-jo Gummer'),(216,'2022-05-25',92,'12:54 PM','4:08 PM','Hesther Litt'),(217,'2022-09-27',98,'10:55 AM','3:01 PM','Chloe Deeth'),(218,'2022-11-22',92,'5:26 PM','2:19 PM','Guillemette Gallally'),(219,'2022-01-25',99,'9:39 AM','11:40 AM','Renaldo Oldershaw'),(220,'2022-10-02',100,'1:50 PM','2:17 PM','Sheba Cromb'),(221,'2022-12-03',101,'4:14 PM','1:12 PM','Brittney Riddle'),(222,'2022-06-12',102,'2:43 PM','11:16 AM','Dieter Kasher'),(223,'2022-12-10',103,'2:51 PM','3:47 PM','Filippa Chater'),(224,'2022-11-30',104,'6:34 PM','12:36 PM','Thaddeus Streader'),(225,'2022-03-30',104,'4:02 PM','8:51 PM','Elnar Ruggier'),(226,'2022-08-27',91,'10:51 AM','9:22 PM','Louisette Gaskal'),(227,'2022-04-05',89,'4:25 PM','3:45 PM','Heddie Hinstridge'),(228,'2022-07-18',92,'2:47 PM','3:27 PM','Araldo Garralts'),(229,'2022-02-25',105,'5:42 PM','11:40 AM','Cobbie Colthard'),(230,'2023-01-23',104,'12:24 PM','1:07 PM','Shina Iiannoni'),(231,'2022-09-10',106,'1:45 PM','2:01 PM','Ermina Phette'),(232,'2022-12-16',91,'1:18 PM','3:27 PM','Aurelea Helsdon'),(233,'2022-03-04',107,'2:46 PM','7:08 PM','Quincy Westfalen'),(234,'2022-10-19',106,'5:23 PM','5:03 PM','Conway Beaten'),(235,'2022-01-17',89,'1:31 PM','6:03 PM','Edy Frisby'),(236,'2022-08-24',90,'1:39 PM','11:01 AM','Karlan Dwane'),(237,'2023-01-17',91,'11:44 AM','12:46 PM','Wally Capeling'),(238,'2022-08-10',92,'9:25 AM','11:50 AM','Jerrie Scain'),(239,'2022-06-30',93,'7:57 PM','12:58 PM','Rebekah Meldon'),(240,'2022-07-04',94,'9:38 AM','7:55 PM','Marnie Learmouth'),(241,'2022-09-04',95,'12:46 PM','1:13 PM','Samson Toombes'),(242,'2022-07-07',96,'7:56 PM','1:33 PM','Bev Birkinshaw'),(243,'2022-08-08',91,'9:56 AM','8:09 PM','Carroll Edis'),(244,'2022-09-11',97,'6:49 PM','12:45 PM','Retha Stroton'),(245,'2022-03-15',92,'8:23 PM','4:41 PM','Kathryne Kibble'),(246,'2023-01-20',98,'9:02 AM','4:49 PM','Fonzie Goodyer'),(247,'2022-01-05',92,'3:10 PM','8:53 PM','Filippa Leasor'),(248,'2022-04-08',99,'3:39 PM','12:18 PM','Binni Adamoli'),(249,'2023-01-23',100,'7:40 PM','5:46 PM','Ingeberg Van Giffen'),(250,'2022-12-05',108,'4:29 PM','2:06 PM','Mariquilla Kock'),(251,'2022-04-17',101,'8:53 PM','3:49 PM','Vail Van Castele'),(252,'2022-08-13',102,'1:09 PM','11:43 AM','Fulton Campkin'),(253,'2022-03-27',103,'6:10 PM','11:20 AM','Joannes Weitzel'),(254,'2023-01-13',104,'12:21 PM','8:14 PM','Bambi O\'Murtagh'),(255,'2022-07-07',104,'4:30 PM','1:47 PM','Irwinn Rennicks'),(256,'2022-08-09',91,'2:33 PM','5:26 PM','Sallyann Buckles'),(257,'2022-02-26',89,'11:46 AM','11:45 AM','Aldon Brettor'),(258,'2022-01-15',92,'4:47 PM','1:25 PM','Davidde Sanpher'),(259,'2022-12-08',105,'3:32 PM','2:53 PM','Bobbi Dockrey'),(260,'2022-06-02',104,'10:30 AM','12:57 PM','Carolina Chape'),(261,'2022-05-18',106,'1:47 PM','9:10 PM','Cinderella Dummigan'),(262,'2022-05-20',91,'8:03 PM','6:54 PM','Eben Albertson'),(263,'2022-06-14',107,'4:45 PM','7:33 PM','Jeni Di Domenico'),(264,'2022-04-24',106,'2:44 PM','3:43 PM','Beale Gelsthorpe'),(265,'2022-05-19',103,'12:00 PM','12:06 PM','Brit Yatman'),(266,'2022-10-07',104,'6:36 PM','12:04 PM','Theresa Harcourt'),(267,'2022-07-01',104,'10:03 AM','3:12 PM','Jarrett Sayers'),(268,'2022-09-10',91,'8:24 PM','5:14 PM','Zilvia Turton'),(269,'2022-05-02',89,'1:49 PM','5:13 PM','Gianina Kruger'),(270,'2023-01-28',92,'5:45 PM','2:26 PM','Kissie Bunce'),(271,'2022-10-04',105,'11:50 AM','6:26 PM','Leslie Francie'),(272,'2022-08-31',104,'1:12 PM','1:07 PM','Tye Brendel'),(273,'2022-08-06',106,'5:27 PM','12:35 PM','Clio Singh'),(274,'2022-09-16',91,'3:51 PM','11:40 AM','Nerissa Coalbran'),(275,'2022-05-22',89,'11:52 AM','6:29 PM','Arie Sorrel'),(276,'2022-05-08',90,'5:30 PM','11:39 AM','Jethro Baguley'),(277,'2022-12-07',91,'8:20 PM','7:39 PM','Jo ann Giovanetti'),(278,'2023-01-25',92,'3:40 PM','6:03 PM','Jeremiah Feld'),(279,'2022-02-03',93,'2:00 PM','1:08 PM','Ashley Skinner'),(280,'2022-06-12',94,'2:24 PM','12:08 PM','Wren Mc Ilory'),(281,'2022-12-04',95,'3:30 PM','4:20 PM','Letta Skipworth'),(282,'2022-07-16',96,'6:20 PM','11:00 AM','Tyson Privett'),(283,'2022-06-26',91,'2:40 PM','3:05 PM','Conrade Fagence'),(284,'2022-09-12',97,'8:43 PM','11:52 AM','Lindon Rodolico'),(285,'2022-06-22',92,'9:52 AM','9:13 PM','Winny Coggin'),(286,'2022-08-18',98,'2:34 PM','3:28 PM','Elke Blaksland'),(287,'2022-09-09',92,'7:10 PM','9:56 PM','Lyndel Caneo'),(288,'2023-01-18',99,'10:03 AM','9:24 PM','Jayson Blackesland'),(289,'2022-11-24',100,'9:47 AM','1:28 PM','Ginelle Wallbanks'),(290,'2022-04-28',108,'11:35 AM','4:00 PM','Llywellyn Wormstone'),(291,'2022-03-13',101,'6:16 PM','12:17 PM','Hart Lewer'),(292,'2022-12-23',102,'8:56 PM','6:26 PM','Brenn Streader'),(293,'2022-05-17',103,'3:44 PM','1:11 PM','Adolphe Haacker'),(294,'2022-07-11',104,'1:15 PM','1:31 PM','Gothart Gebhardt'),(295,'2022-12-31',104,'8:00 PM','3:03 PM','Lilah Dankersley'),(296,'2022-06-13',91,'12:39 PM','6:56 PM','Towney McDaid'),(297,'2023-01-03',89,'1:36 PM','1:35 PM','Meaghan Demange'),(298,'2023-01-22',92,'10:04 AM','7:55 PM','Anni Roan'),(299,'2022-01-03',105,'10:31 AM','6:43 PM','Luz Walklot'),(300,'2022-08-08',104,'12:50 PM','3:09 PM','Brynn Bundy'),(301,'2022-11-24',106,'1:49 PM','7:21 PM','Corrianne Point'),(302,'2022-11-12',91,'11:11 AM','2:27 PM','Peri Pankhurst.'),(303,'2022-06-16',107,'11:13 AM','8:49 PM','Cesare Judgkins'),(304,'2023-01-04',106,'9:00 AM','9:09 PM','Derry Jerzak'),(305,'2022-10-19',88,'2:52 PM','7:41 PM','Rikki Harewood'),(306,'2022-05-27',89,'4:10 PM','6:35 PM','Josie Pleming'),(307,'2022-07-29',1,'2:44 PM','9:37 PM','Prentiss Welton'),(308,'2022-11-25',2,'6:07 PM','4:37 PM','Sheelah Bellison');
/*!40000 ALTER TABLE `class_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Battle of Los Angeles'),(2,'Legend of Lobo, The'),(3,'City of Angels'),(4,'Shanghai Dreams (Qing hong)'),(5,'Meetin\' WA'),(6,'8MM'),(7,'Miss Firecracker'),(8,'Snow on Tha Bluff'),(9,'Out of the Clear Blue Sky'),(10,'Bloodlust: Subspecies III'),(11,'Great Passage, The (Fune wo amu)'),(12,'Pauline & Paulette (Pauline en Paulette)'),(13,'Muppets, The'),(14,'Painting Sellers, The (Taulukauppiaat)'),(15,'Turn of Faith'),(16,'Orphan'),(17,'100 Rifles'),(18,'Style Wars'),(19,'Requiem for a Vampire (Vierges et vampires)'),(20,'Vacancy 2: The First Cut'),(21,'Woman Who Wasn\'t There, The'),(22,'Alex and Emma'),(23,'Place in the Sun, A (En plats i solen)'),(24,'Patent Leather Kid, The'),(25,'Martha'),(26,'Crows Zero II (KurÃ´zu Zero II)'),(27,'Tao of Steve, The'),(28,'Before Midnight'),(88,'testing_subject'),(89,'Overhead Doors'),(90,'Temp Fencing, Decorative Fencing and Gates'),(91,'Drywall & Acoustical (FED)'),(92,'Roofing (Asphalt)'),(93,'Drilled Shafts'),(94,'Exterior Signage'),(95,'Masonry & Precast'),(96,'Framing (Wood)'),(97,'Granite Surfaces'),(98,'Ornamental Railings'),(99,'EIFS'),(100,'Retaining Wall and Brick Pavers'),(101,'Termite Control'),(102,'RF Shielding'),(103,'Doors, Frames & Hardware'),(104,'Site Furnishings'),(105,'Hard Tile & Stone'),(106,'Epoxy Flooring'),(107,'Drywall & Acoustical (MOB)'),(108,'Soft Flooring and Base');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_record`
--

DROP TABLE IF EXISTS `session_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_record` (
  `sessionid` int NOT NULL,
  `usersid` int NOT NULL,
  PRIMARY KEY (`sessionid`,`usersid`),
  KEY `userid_idx` (`usersid`),
  CONSTRAINT `sessionid` FOREIGN KEY (`sessionid`) REFERENCES `class_session` (`session_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userid` FOREIGN KEY (`usersid`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='students who join session will be recorded here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_record`
--

LOCK TABLES `session_record` WRITE;
/*!40000 ALTER TABLE `session_record` DISABLE KEYS */;
INSERT INTO `session_record` VALUES (151,5),(155,5),(174,5),(158,8),(162,8),(182,8);
/*!40000 ALTER TABLE `session_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `PwdHash` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`,`UserName`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'Test Subject pwd-test123','subject','Snohimtam','test123@gmail.com','6969:7001f32f25efd631d30df8dad7411d66:80874923e44da75b6a3c43e0c8c7c8713d3b71fb5474db4a6c90c49b386ffc590e3fcd78c174d73b4e5d79bed4a8293d136e2a8cb993df0951cdc3edf92118c2'),(6,'admin','admin','admin','admin@admin.com','6969:28e853fa532f6596414ddadd864f3c89:e8a4c207e408f6b84d242743f05d8c638a07df5e4570b3fa8f1dafbc4a4536c61d9b5ec57cc2b25be4bd1637a35137f036b5f66b300695894acdcfc2b44f7c0c'),(7,'123','vnbfg','jgjgfjfgj','fgdfg@sdf','6969:af91b7dedfbd910ef19799d079d7f4aa:c9c30e45240e4ef25b527ea6550c0222dc373f0c7c10bf11f691e6ba02d0ff89b349ffbc1a53a689135ed6603f641a508859eff9c350ad9ebf38fc3054f1f551'),(8,'jason','Jason','Wong ','jiasoon.wong21@digitalway.net','6969:2a98f0a981372e434353ccff70e59303:dc7a421f646079559ce7c2056f2278f9e87e91fdef703a0041c8b0207dd106b062b82dead3de6c6d6b9ccb439a29f3efeea469cca7afad75160552e63773b501'),(9,'yougrey','yougrey','bambbi','yougrey@gmail.com','6969:cd97155c2f744ec8468b8e9da6db87bd:a2f9a6af542b9b0386bbb1d8c0abc08beb9fb78d54d1b306c091ec4906c56f208f5ecd03a1e4f77f718f84026f76c5299f55a1cf7a36cb4ed260d115a33b20d9');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tdp_model'
--

--
-- Dumping routines for database 'tdp_model'
--
/*!50003 DROP PROCEDURE IF EXISTS `check_else_insert_course` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_else_insert_course`(coursename varchar(45))
BEGIN
   INSERT INTO course(course_name)
   SELECT coursename
   WHERE NOT EXISTS( SELECT * FROM course WHERE course_name = coursename);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_user_record` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_user_record`(iduser int)
BEGIN
SELECT sessionid, date_session, course.course_id, start_time, end_time, teacher, course_name FROM tdp_model.session_record 
JOIN users ON users.UserID = session_record.usersid
JOIN class_session ON class_session.session_id = session_record.sessionid
JOIN course ON course.course_id = class_session.course_id
WHERE usersid = iduser ORDER BY date(class_session.date_session);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_class_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_class_session`(start_time varchar(20), end_time varchar(20), teacher_name varchar(45), date_session date, coursename varchar(45))
BEGIN
INSERT INTO class_session (course_id, start_time, end_time, teacher, date_session)
SELECT course_id, start_time, end_time, teacher_name, date_session  FROM course WHERE course_name = coursename;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `this_year_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `this_year_session`(subject_course varchar(30), user_acc_id int)
BEGIN
SELECT * FROM tdp_model.class_session
JOIN course ON class_session.course_id = course.course_id
WHERE date(date_session) > now() AND class_session.course_id = subject_course AND 
class_session.session_id NOT IN ( SELECT sessionid FROM session_record WHERE usersid = user_acc_id)
ORDER BY class_session.date_session;


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

-- Dump completed on 2022-03-01 12:07:32
