-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: ssm_crud
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_dep`
--

DROP TABLE IF EXISTS `tbl_dep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_dep` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dep`
--

LOCK TABLES `tbl_dep` WRITE;
/*!40000 ALTER TABLE `tbl_dep` DISABLE KEYS */;
INSERT INTO `tbl_dep` VALUES (1,'测试部'),(2,'开发部');
/*!40000 ALTER TABLE `tbl_dep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_emp`
--

DROP TABLE IF EXISTS `tbl_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_dep_idx` (`d_id`),
  CONSTRAINT `fk_dep` FOREIGN KEY (`d_id`) REFERENCES `tbl_dep` (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_emp`
--

LOCK TABLES `tbl_emp` WRITE;
/*!40000 ALTER TABLE `tbl_emp` DISABLE KEYS */;
INSERT INTO `tbl_emp` VALUES (21,'e39ff17','m','e39ff17@zhang.com',1),(22,'73a7a18','f','73a7a18@zhang.com',2),(23,'34c9919','f','34c9919@zhang.com',1),(24,'85eab20','m','85eab20@zhang.com',1),(25,'d8a8021','m','d8a8021@zhang.com',1),(26,'ad97422','m','ad97422@zhang.com',1),(27,'9d3c723','m','9d3c723@zhang.com',1),(28,'f33a724','m','f33a724@zhang.com',1),(29,'618d625','m','618d625@zhang.com',1),(30,'6ea2726','m','6ea2726@zhang.com',1),(31,'a343427','m','a343427@zhang.com',1),(32,'e93ba28','m','e93ba28@zhang.com',1),(33,'47ae329','m','47ae329@zhang.com',1),(34,'95e3030','m','95e3030@zhang.com',1),(35,'4599931','m','4599931@zhang.com',1),(36,'6cf4d32','m','6cf4d32@zhang.com',1),(37,'1cee133','m','1cee133@zhang.com',1),(38,'b8dbe34','m','b8dbe34@zhang.com',1),(39,'adb6735','m','adb6735@zhang.com',1),(40,'4239c36','m','4239c36@zhang.com',1),(41,'9e1b837','m','9e1b837@zhang.com',1),(42,'e05d738','m','e05d738@zhang.com',1),(43,'5358239','m','5358239@zhang.com',1),(44,'cda2040','m','cda2040@zhang.com',1),(45,'2f70941','m','2f70941@zhang.com',1),(46,'e96d042','m','e96d042@zhang.com',1),(47,'ff5f243','m','ff5f243@zhang.com',1),(48,'1d4bb44','m','1d4bb44@zhang.com',1),(49,'9a41845','m','9a41845@zhang.com',1),(50,'5ad6e46','m','5ad6e46@zhang.com',1),(51,'41b1b47','m','41b1b47@zhang.com',1),(52,'952e048','m','952e048@zhang.com',1),(53,'5004049','m','5004049@zhang.com',1),(54,'f667250','m','f667250@zhang.com',1),(55,'476e451','m','476e451@zhang.com',1),(56,'ea53e52','m','ea53e52@zhang.com',1),(57,'5297e53','m','5297e53@zhang.com',1),(58,'ad6c454','m','ad6c454@zhang.com',1),(59,'dddbb55','m','dddbb55@zhang.com',1),(60,'340c456','m','340c456@zhang.com',1),(61,'1eb2357','m','1eb2357@zhang.com',1),(62,'8848158','m','8848158@zhang.com',1),(63,'805bd59','m','805bd59@zhang.com',1),(64,'e62ea60','m','e62ea60@zhang.com',1),(65,'8518261','m','8518261@zhang.com',1),(66,'7b75862','m','7b75862@zhang.com',1),(67,'664db63','m','664db63@zhang.com',1),(68,'297d364','m','297d364@zhang.com',1),(69,'c667a65','m','c667a65@zhang.com',1),(70,'c6c8466','m','c6c8466@zhang.com',1),(71,'8287867','m','8287867@zhang.com',1),(72,'5308c68','m','5308c68@zhang.com',1),(73,'7361b69','m','7361b69@zhang.com',1),(74,'ec0c970','m','ec0c970@zhang.com',1),(75,'22eb771','m','22eb771@zhang.com',1),(76,'61ac472','m','61ac472@zhang.com',1),(77,'7f0c673','m','7f0c673@zhang.com',1),(78,'9c37474','m','9c37474@zhang.com',1),(79,'a760d75','m','a760d75@zhang.com',1),(80,'5142876','m','5142876@zhang.com',1),(81,'1f25777','m','1f25777@zhang.com',1),(82,'2d3b578','m','2d3b578@zhang.com',1),(83,'ea15279','m','ea15279@zhang.com',1),(84,'2a87080','m','2a87080@zhang.com',1),(85,'b6d6181','m','b6d6181@zhang.com',1),(86,'da60182','m','da60182@zhang.com',1),(87,'5635183','m','5635183@zhang.com',1),(88,'0712b84','m','0712b84@zhang.com',1),(89,'81ba985','m','81ba985@zhang.com',1),(90,'2f03e86','m','2f03e86@zhang.com',1),(91,'c37c487','m','c37c487@zhang.com',1),(92,'56eef88','m','56eef88@zhang.com',1),(93,'47cf789','m','47cf789@zhang.com',1),(94,'baae690','m','baae690@zhang.com',1),(95,'00b1491','m','00b1491@zhang.com',1),(96,'7ff4092','m','7ff4092@zhang.com',1),(97,'10af993','m','10af993@zhang.com',1),(98,'59e8b94','m','59e8b94@zhang.com',1),(99,'bd21395','m','bd21395@zhang.com',1),(100,'ca56996','m','ca56996@zhang.com',1),(101,'87d6f97','m','87d6f97@zhang.com',1),(102,'de45a98','m','de45a98@zhang.com',1),(103,'4355799','m','4355799@zhang.com',1),(104,'4075c0','m','4075c0@zhang.com',1),(105,'87d261','m','87d261@zhang.com',1),(106,'bf90f2','m','bf90f2@zhang.com',1),(107,'72faa3','m','72faa3@zhang.com',1),(108,'e49b64','m','e49b64@zhang.com',1),(109,'acb965','m','acb965@zhang.com',1),(110,'757326','m','757326@zhang.com',1),(111,'8ad727','m','8ad727@zhang.com',1),(112,'4e3268','m','4e3268@zhang.com',1),(113,'e85909','m','e85909@zhang.com',1),(114,'0c9b710','m','0c9b710@zhang.com',1),(115,'ff08311','m','ff08311@zhang.com',1),(116,'d7ce812','m','d7ce812@zhang.com',1),(117,'3de5e13','m','3de5e13@zhang.com',1),(118,'fd52114','m','fd52114@zhang.com',1),(119,'54c8815','m','54c8815@zhang.com',1),(120,'fcad916','m','fcad916@zhang.com',1),(121,'fd8c617','m','fd8c617@zhang.com',1),(122,'472ec18','m','472ec18@zhang.com',1),(123,'7a97519','m','7a97519@zhang.com',1),(124,'73c6120','m','73c6120@zhang.com',1),(125,'707c221','m','707c221@zhang.com',1),(126,'f462622','m','f462622@zhang.com',1),(127,'e642b23','m','e642b23@zhang.com',1),(128,'9c55024','m','9c55024@zhang.com',1),(129,'7191225','m','7191225@zhang.com',1),(130,'863ec26','m','863ec26@zhang.com',1),(131,'3e7da27','m','3e7da27@zhang.com',1),(132,'9807628','m','9807628@zhang.com',1),(133,'604d729','m','604d729@zhang.com',1),(134,'f789830','m','f789830@zhang.com',1),(135,'bd8f031','m','bd8f031@zhang.com',1),(136,'5603f32','m','5603f32@zhang.com',1),(137,'f905933','m','f905933@zhang.com',1),(138,'ad00234','m','ad00234@zhang.com',1),(139,'257f535','m','257f535@zhang.com',1),(140,'3451336','m','3451336@zhang.com',1),(141,'ca4a037','m','ca4a037@zhang.com',1),(142,'469a138','m','469a138@zhang.com',1),(143,'955d539','m','955d539@zhang.com',1),(144,'6a39540','m','6a39540@zhang.com',1),(145,'1c91441','m','1c91441@zhang.com',1),(146,'04d6642','m','04d6642@zhang.com',1),(147,'f003543','m','f003543@zhang.com',1),(148,'82ce144','m','82ce144@zhang.com',1),(149,'8686f45','m','8686f45@zhang.com',1),(150,'7247446','m','7247446@zhang.com',1),(151,'5fbcf47','m','5fbcf47@zhang.com',1),(152,'1d81448','m','1d81448@zhang.com',1),(153,'7cdb749','m','7cdb749@zhang.com',1),(154,'6ac5450','m','6ac5450@zhang.com',1),(155,'1fcac51','m','1fcac51@zhang.com',1),(156,'69e8252','m','69e8252@zhang.com',1),(157,'08d6953','m','08d6953@zhang.com',1),(158,'b666a54','m','b666a54@zhang.com',1),(159,'d1f2755','m','d1f2755@zhang.com',1),(160,'b3d2b56','m','b3d2b56@zhang.com',1),(161,'c722257','m','c722257@zhang.com',1),(162,'c98eb58','m','c98eb58@zhang.com',1),(163,'c64b059','m','c64b059@zhang.com',1),(164,'cd08060','m','cd08060@zhang.com',1),(165,'51a9061','m','51a9061@zhang.com',1),(166,'b3bd862','m','b3bd862@zhang.com',1),(167,'19ca863','m','19ca863@zhang.com',1),(168,'3f5f464','m','3f5f464@zhang.com',1),(169,'3eff965','m','3eff965@zhang.com',1),(170,'2b83e66','m','2b83e66@zhang.com',1),(171,'542f867','m','542f867@zhang.com',1),(172,'1988d68','m','1988d68@zhang.com',1),(175,'7cc7571','m','7cc7571@zhang.com',1);
/*!40000 ALTER TABLE `tbl_emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-29 17:29:16
