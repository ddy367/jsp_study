-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: testdb
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
-- Table structure for table `t_board`
--

DROP TABLE IF EXISTS `t_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_board` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `contents` text,
  `creator_id` varchar(45) NOT NULL,
  `created_date` datetime NOT NULL,
  `update_id` varchar(45) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `hit_cnt` int DEFAULT '0',
  `passwd` varchar(45) NOT NULL DEFAULT 'bitc1234',
  `deleted_yn` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_board`
--

LOCK TABLES `t_board` WRITE;
/*!40000 ALTER TABLE `t_board` DISABLE KEYS */;
INSERT INTO `t_board` VALUES (14,'1111','11111','tester01','2021-12-01 23:02:11','tester01','2021-12-02 15:22:30',1,'bitc1234','N'),(15,'재목 3','컨탠츠 3','tester03','2021-12-01 23:03:29',NULL,NULL,0,'bitc1234','Y'),(16,'재목 4','컨탠츠 4','tester04','2021-12-01 23:03:29',NULL,NULL,0,'bitc1234','N'),(17,'재목 5','컨탠츠 5','tester05','2021-12-01 23:03:29',NULL,NULL,0,'bitc1234','N'),(18,'제목 7','컨텐츠 7','tester02','2021-12-02 09:36:57',NULL,NULL,0,'bitc1234','N'),(19,'123123','zxczxc','qweqwe','2021-12-02 10:37:56',NULL,NULL,0,'asdasd','Y'),(20,'제목 2','컨텐츠2','tester01','2021-12-01 14:58:46',NULL,NULL,0,'bitc1234','N'),(21,'제목 2','컨텐츠2','tester01','2021-12-01 14:58:46',NULL,NULL,0,'bitc1234','N');
/*!40000 ALTER TABLE `t_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'testdb'
--

--
-- Dumping routines for database 'testdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-02 21:38:29
