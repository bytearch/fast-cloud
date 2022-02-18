-- MySQL dump 10.13  Distrib 8.0.26, for macos11.3 (x86_64)
--
-- Host: 172.30.1.22    Database: order_db_2
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order_064`
--

DROP TABLE IF EXISTS `order_064`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_064` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_064`
--

LOCK TABLES `order_064` WRITE;
/*!40000 ALTER TABLE `order_064` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_064` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_065`
--

DROP TABLE IF EXISTS `order_065`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_065` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_065`
--

LOCK TABLES `order_065` WRITE;
/*!40000 ALTER TABLE `order_065` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_065` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_066`
--

DROP TABLE IF EXISTS `order_066`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_066` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_066`
--

LOCK TABLES `order_066` WRITE;
/*!40000 ALTER TABLE `order_066` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_066` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_067`
--

DROP TABLE IF EXISTS `order_067`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_067` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_067`
--

LOCK TABLES `order_067` WRITE;
/*!40000 ALTER TABLE `order_067` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_067` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_068`
--

DROP TABLE IF EXISTS `order_068`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_068` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_068`
--

LOCK TABLES `order_068` WRITE;
/*!40000 ALTER TABLE `order_068` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_068` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_069`
--

DROP TABLE IF EXISTS `order_069`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_069` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_069`
--

LOCK TABLES `order_069` WRITE;
/*!40000 ALTER TABLE `order_069` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_069` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_070`
--

DROP TABLE IF EXISTS `order_070`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_070` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_070`
--

LOCK TABLES `order_070` WRITE;
/*!40000 ALTER TABLE `order_070` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_070` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_071`
--

DROP TABLE IF EXISTS `order_071`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_071` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_071`
--

LOCK TABLES `order_071` WRITE;
/*!40000 ALTER TABLE `order_071` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_071` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_072`
--

DROP TABLE IF EXISTS `order_072`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_072` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_072`
--

LOCK TABLES `order_072` WRITE;
/*!40000 ALTER TABLE `order_072` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_072` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_073`
--

DROP TABLE IF EXISTS `order_073`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_073` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_073`
--

LOCK TABLES `order_073` WRITE;
/*!40000 ALTER TABLE `order_073` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_073` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_074`
--

DROP TABLE IF EXISTS `order_074`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_074` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_074`
--

LOCK TABLES `order_074` WRITE;
/*!40000 ALTER TABLE `order_074` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_074` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_075`
--

DROP TABLE IF EXISTS `order_075`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_075` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_075`
--

LOCK TABLES `order_075` WRITE;
/*!40000 ALTER TABLE `order_075` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_075` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_076`
--

DROP TABLE IF EXISTS `order_076`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_076` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_076`
--

LOCK TABLES `order_076` WRITE;
/*!40000 ALTER TABLE `order_076` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_076` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_077`
--

DROP TABLE IF EXISTS `order_077`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_077` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_077`
--

LOCK TABLES `order_077` WRITE;
/*!40000 ALTER TABLE `order_077` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_077` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_078`
--

DROP TABLE IF EXISTS `order_078`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_078` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_078`
--

LOCK TABLES `order_078` WRITE;
/*!40000 ALTER TABLE `order_078` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_078` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_079`
--

DROP TABLE IF EXISTS `order_079`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_079` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_079`
--

LOCK TABLES `order_079` WRITE;
/*!40000 ALTER TABLE `order_079` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_079` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_080`
--

DROP TABLE IF EXISTS `order_080`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_080` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_080`
--

LOCK TABLES `order_080` WRITE;
/*!40000 ALTER TABLE `order_080` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_080` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_081`
--

DROP TABLE IF EXISTS `order_081`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_081` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_081`
--

LOCK TABLES `order_081` WRITE;
/*!40000 ALTER TABLE `order_081` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_081` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_082`
--

DROP TABLE IF EXISTS `order_082`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_082` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_082`
--

LOCK TABLES `order_082` WRITE;
/*!40000 ALTER TABLE `order_082` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_082` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_083`
--

DROP TABLE IF EXISTS `order_083`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_083` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_083`
--

LOCK TABLES `order_083` WRITE;
/*!40000 ALTER TABLE `order_083` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_083` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_084`
--

DROP TABLE IF EXISTS `order_084`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_084` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_084`
--

LOCK TABLES `order_084` WRITE;
/*!40000 ALTER TABLE `order_084` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_084` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_085`
--

DROP TABLE IF EXISTS `order_085`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_085` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_085`
--

LOCK TABLES `order_085` WRITE;
/*!40000 ALTER TABLE `order_085` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_085` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_086`
--

DROP TABLE IF EXISTS `order_086`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_086` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_086`
--

LOCK TABLES `order_086` WRITE;
/*!40000 ALTER TABLE `order_086` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_086` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_087`
--

DROP TABLE IF EXISTS `order_087`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_087` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_087`
--

LOCK TABLES `order_087` WRITE;
/*!40000 ALTER TABLE `order_087` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_087` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_088`
--

DROP TABLE IF EXISTS `order_088`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_088` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_088`
--

LOCK TABLES `order_088` WRITE;
/*!40000 ALTER TABLE `order_088` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_088` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_089`
--

DROP TABLE IF EXISTS `order_089`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_089` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_089`
--

LOCK TABLES `order_089` WRITE;
/*!40000 ALTER TABLE `order_089` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_089` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_090`
--

DROP TABLE IF EXISTS `order_090`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_090` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_090`
--

LOCK TABLES `order_090` WRITE;
/*!40000 ALTER TABLE `order_090` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_090` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_091`
--

DROP TABLE IF EXISTS `order_091`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_091` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_091`
--

LOCK TABLES `order_091` WRITE;
/*!40000 ALTER TABLE `order_091` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_091` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_092`
--

DROP TABLE IF EXISTS `order_092`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_092` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_092`
--

LOCK TABLES `order_092` WRITE;
/*!40000 ALTER TABLE `order_092` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_092` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_093`
--

DROP TABLE IF EXISTS `order_093`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_093` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_093`
--

LOCK TABLES `order_093` WRITE;
/*!40000 ALTER TABLE `order_093` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_093` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_094`
--

DROP TABLE IF EXISTS `order_094`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_094` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_094`
--

LOCK TABLES `order_094` WRITE;
/*!40000 ALTER TABLE `order_094` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_094` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_095`
--

DROP TABLE IF EXISTS `order_095`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_095` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_095`
--

LOCK TABLES `order_095` WRITE;
/*!40000 ALTER TABLE `order_095` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_095` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_096`
--

DROP TABLE IF EXISTS `order_096`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_096` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_096`
--

LOCK TABLES `order_096` WRITE;
/*!40000 ALTER TABLE `order_096` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_096` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_097`
--

DROP TABLE IF EXISTS `order_097`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_097` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_097`
--

LOCK TABLES `order_097` WRITE;
/*!40000 ALTER TABLE `order_097` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_097` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_098`
--

DROP TABLE IF EXISTS `order_098`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_098` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_098`
--

LOCK TABLES `order_098` WRITE;
/*!40000 ALTER TABLE `order_098` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_098` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_099`
--

DROP TABLE IF EXISTS `order_099`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_099` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_099`
--

LOCK TABLES `order_099` WRITE;
/*!40000 ALTER TABLE `order_099` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_099` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_100`
--

DROP TABLE IF EXISTS `order_100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_100` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_100`
--

LOCK TABLES `order_100` WRITE;
/*!40000 ALTER TABLE `order_100` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_100` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_101`
--

DROP TABLE IF EXISTS `order_101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_101` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_101`
--

LOCK TABLES `order_101` WRITE;
/*!40000 ALTER TABLE `order_101` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_102`
--

DROP TABLE IF EXISTS `order_102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_102` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_102`
--

LOCK TABLES `order_102` WRITE;
/*!40000 ALTER TABLE `order_102` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_103`
--

DROP TABLE IF EXISTS `order_103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_103` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_103`
--

LOCK TABLES `order_103` WRITE;
/*!40000 ALTER TABLE `order_103` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_104`
--

DROP TABLE IF EXISTS `order_104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_104` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_104`
--

LOCK TABLES `order_104` WRITE;
/*!40000 ALTER TABLE `order_104` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_104` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_105`
--

DROP TABLE IF EXISTS `order_105`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_105` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_105`
--

LOCK TABLES `order_105` WRITE;
/*!40000 ALTER TABLE `order_105` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_105` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_106`
--

DROP TABLE IF EXISTS `order_106`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_106` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_106`
--

LOCK TABLES `order_106` WRITE;
/*!40000 ALTER TABLE `order_106` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_106` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_107`
--

DROP TABLE IF EXISTS `order_107`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_107` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_107`
--

LOCK TABLES `order_107` WRITE;
/*!40000 ALTER TABLE `order_107` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_107` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_108`
--

DROP TABLE IF EXISTS `order_108`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_108` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_108`
--

LOCK TABLES `order_108` WRITE;
/*!40000 ALTER TABLE `order_108` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_108` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_109`
--

DROP TABLE IF EXISTS `order_109`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_109` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_109`
--

LOCK TABLES `order_109` WRITE;
/*!40000 ALTER TABLE `order_109` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_109` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_110`
--

DROP TABLE IF EXISTS `order_110`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_110` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_110`
--

LOCK TABLES `order_110` WRITE;
/*!40000 ALTER TABLE `order_110` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_110` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_111`
--

DROP TABLE IF EXISTS `order_111`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_111` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_111`
--

LOCK TABLES `order_111` WRITE;
/*!40000 ALTER TABLE `order_111` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_111` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_112`
--

DROP TABLE IF EXISTS `order_112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_112` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_112`
--

LOCK TABLES `order_112` WRITE;
/*!40000 ALTER TABLE `order_112` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_112` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_113`
--

DROP TABLE IF EXISTS `order_113`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_113` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_113`
--

LOCK TABLES `order_113` WRITE;
/*!40000 ALTER TABLE `order_113` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_113` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_114`
--

DROP TABLE IF EXISTS `order_114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_114` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_114`
--

LOCK TABLES `order_114` WRITE;
/*!40000 ALTER TABLE `order_114` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_114` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_115`
--

DROP TABLE IF EXISTS `order_115`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_115` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_115`
--

LOCK TABLES `order_115` WRITE;
/*!40000 ALTER TABLE `order_115` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_115` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_116`
--

DROP TABLE IF EXISTS `order_116`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_116` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_116`
--

LOCK TABLES `order_116` WRITE;
/*!40000 ALTER TABLE `order_116` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_116` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_117`
--

DROP TABLE IF EXISTS `order_117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_117` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_117`
--

LOCK TABLES `order_117` WRITE;
/*!40000 ALTER TABLE `order_117` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_117` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_118`
--

DROP TABLE IF EXISTS `order_118`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_118` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_118`
--

LOCK TABLES `order_118` WRITE;
/*!40000 ALTER TABLE `order_118` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_118` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_119`
--

DROP TABLE IF EXISTS `order_119`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_119` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_119`
--

LOCK TABLES `order_119` WRITE;
/*!40000 ALTER TABLE `order_119` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_119` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_120`
--

DROP TABLE IF EXISTS `order_120`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_120` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_120`
--

LOCK TABLES `order_120` WRITE;
/*!40000 ALTER TABLE `order_120` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_120` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_121`
--

DROP TABLE IF EXISTS `order_121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_121` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_121`
--

LOCK TABLES `order_121` WRITE;
/*!40000 ALTER TABLE `order_121` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_121` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_122`
--

DROP TABLE IF EXISTS `order_122`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_122` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_122`
--

LOCK TABLES `order_122` WRITE;
/*!40000 ALTER TABLE `order_122` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_122` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_123`
--

DROP TABLE IF EXISTS `order_123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_123` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_123`
--

LOCK TABLES `order_123` WRITE;
/*!40000 ALTER TABLE `order_123` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_123` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_124`
--

DROP TABLE IF EXISTS `order_124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_124` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_124`
--

LOCK TABLES `order_124` WRITE;
/*!40000 ALTER TABLE `order_124` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_124` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_125`
--

DROP TABLE IF EXISTS `order_125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_125` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_125`
--

LOCK TABLES `order_125` WRITE;
/*!40000 ALTER TABLE `order_125` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_125` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_126`
--

DROP TABLE IF EXISTS `order_126`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_126` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_126`
--

LOCK TABLES `order_126` WRITE;
/*!40000 ALTER TABLE `order_126` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_126` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_127`
--

DROP TABLE IF EXISTS `order_127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_127` (
  `order_id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT '0' COMMENT '订单id',
  `status` int(11) DEFAULT '0' COMMENT '订单状态',
  `booking_date` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_bdate` (`booking_date`),
  KEY `idx_ctime` (`create_time`),
  KEY `idx_utime` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_127`
--

LOCK TABLES `order_127` WRITE;
/*!40000 ALTER TABLE `order_127` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_127` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-05 22:51:50
