-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: homedb
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB-1:10.8.3+maria~jammy

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `last_modified_date` datetime(6) DEFAULT NULL,
  `account_fee` double NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `business_number` varchar(12) NOT NULL,
  `depositor_name` varchar(255) DEFAULT NULL,
  `is_enable` bit(1) DEFAULT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `random_key` varchar(255) DEFAULT NULL,
  `sms_message` bit(1) DEFAULT NULL,
  `taxbill` bit(1) DEFAULT NULL,
  `account_credit_amount` decimal(19,2) NOT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `UK_3pix1xt70k1xnp5d74yvvjqq6` (`business_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES
(1,'2022-08-18 23:48:56.190000','2022-08-18 23:49:46.533000',0.6,'케이에스이씨','주소','725-81-01389','김현기','','01033882721','DvRxgPbml2g3','','',0.00),
(2,'2022-08-18 23:48:56.190000','2022-08-18 23:49:46.533000',0.6,'케이에스','주소','725-81-01386','김현기','','01033882721','DvRxgPbml2g3','','',0.00),
(3,'2022-08-18 23:48:56.190000','2022-08-18 23:49:46.533000',0.6,'에스','주소','725-81-01385','김현기','','01033882721','DvRxgPbml2g3','','',0.00),
(4,'2022-08-19 00:49:49.012000','2022-08-19 00:49:49.012000',0.6,'타타타','투타ㅜ','725-81-01381','기마ㅓ',NULL,'01033882721','oNe4u3KJGAkY','\0','\0',0.00),
(5,'2022-08-19 00:52:41.319000','2022-08-19 00:52:41.319000',0.1,'브브브','주소아아ㅏ아','725-81-01387','주소주소','','01038382721','FloVy9rhk3vB','\0','\0',0.00);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-23 16:19:57
