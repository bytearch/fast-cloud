-- MySQL dump 10.13  Distrib 8.0.26, for macos11.3 (x86_64)
--
-- Host: 172.30.1.21    Database: order_db_1
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
-- Table structure for table `order_000`
--

DROP TABLE IF EXISTS `order_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_000` (
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
-- Dumping data for table `order_000`
--

LOCK TABLES `order_000` WRITE;
/*!40000 ALTER TABLE `order_000` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_000` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_001`
--

DROP TABLE IF EXISTS `order_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_001` (
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
-- Dumping data for table `order_001`
--

LOCK TABLES `order_001` WRITE;
/*!40000 ALTER TABLE `order_001` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_001` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_002`
--

DROP TABLE IF EXISTS `order_002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_002` (
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
-- Dumping data for table `order_002`
--

LOCK TABLES `order_002` WRITE;
/*!40000 ALTER TABLE `order_002` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_002` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_003`
--

DROP TABLE IF EXISTS `order_003`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_003` (
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
-- Dumping data for table `order_003`
--

LOCK TABLES `order_003` WRITE;
/*!40000 ALTER TABLE `order_003` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_003` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_004`
--

DROP TABLE IF EXISTS `order_004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_004` (
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
-- Dumping data for table `order_004`
--

LOCK TABLES `order_004` WRITE;
/*!40000 ALTER TABLE `order_004` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_004` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_005`
--

DROP TABLE IF EXISTS `order_005`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_005` (
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
-- Dumping data for table `order_005`
--

LOCK TABLES `order_005` WRITE;
/*!40000 ALTER TABLE `order_005` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_005` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_006`
--

DROP TABLE IF EXISTS `order_006`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_006` (
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
-- Dumping data for table `order_006`
--

LOCK TABLES `order_006` WRITE;
/*!40000 ALTER TABLE `order_006` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_006` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_007`
--

DROP TABLE IF EXISTS `order_007`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_007` (
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
-- Dumping data for table `order_007`
--

LOCK TABLES `order_007` WRITE;
/*!40000 ALTER TABLE `order_007` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_007` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_008`
--

DROP TABLE IF EXISTS `order_008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_008` (
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
-- Dumping data for table `order_008`
--

LOCK TABLES `order_008` WRITE;
/*!40000 ALTER TABLE `order_008` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_008` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_009`
--

DROP TABLE IF EXISTS `order_009`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_009` (
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
-- Dumping data for table `order_009`
--

LOCK TABLES `order_009` WRITE;
/*!40000 ALTER TABLE `order_009` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_009` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_010`
--

DROP TABLE IF EXISTS `order_010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_010` (
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
-- Dumping data for table `order_010`
--

LOCK TABLES `order_010` WRITE;
/*!40000 ALTER TABLE `order_010` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_010` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_011`
--

DROP TABLE IF EXISTS `order_011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_011` (
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
-- Dumping data for table `order_011`
--

LOCK TABLES `order_011` WRITE;
/*!40000 ALTER TABLE `order_011` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_011` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_012`
--

DROP TABLE IF EXISTS `order_012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_012` (
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
-- Dumping data for table `order_012`
--

LOCK TABLES `order_012` WRITE;
/*!40000 ALTER TABLE `order_012` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_012` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_013`
--

DROP TABLE IF EXISTS `order_013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_013` (
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
-- Dumping data for table `order_013`
--

LOCK TABLES `order_013` WRITE;
/*!40000 ALTER TABLE `order_013` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_013` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_014`
--

DROP TABLE IF EXISTS `order_014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_014` (
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
-- Dumping data for table `order_014`
--

LOCK TABLES `order_014` WRITE;
/*!40000 ALTER TABLE `order_014` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_015`
--

DROP TABLE IF EXISTS `order_015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_015` (
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
-- Dumping data for table `order_015`
--

LOCK TABLES `order_015` WRITE;
/*!40000 ALTER TABLE `order_015` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_016`
--

DROP TABLE IF EXISTS `order_016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_016` (
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
-- Dumping data for table `order_016`
--

LOCK TABLES `order_016` WRITE;
/*!40000 ALTER TABLE `order_016` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_017`
--

DROP TABLE IF EXISTS `order_017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_017` (
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
-- Dumping data for table `order_017`
--

LOCK TABLES `order_017` WRITE;
/*!40000 ALTER TABLE `order_017` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_017` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_018`
--

DROP TABLE IF EXISTS `order_018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_018` (
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
-- Dumping data for table `order_018`
--

LOCK TABLES `order_018` WRITE;
/*!40000 ALTER TABLE `order_018` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_018` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_019`
--

DROP TABLE IF EXISTS `order_019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_019` (
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
-- Dumping data for table `order_019`
--

LOCK TABLES `order_019` WRITE;
/*!40000 ALTER TABLE `order_019` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_019` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_020`
--

DROP TABLE IF EXISTS `order_020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_020` (
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
-- Dumping data for table `order_020`
--

LOCK TABLES `order_020` WRITE;
/*!40000 ALTER TABLE `order_020` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_020` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_021`
--

DROP TABLE IF EXISTS `order_021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_021` (
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
-- Dumping data for table `order_021`
--

LOCK TABLES `order_021` WRITE;
/*!40000 ALTER TABLE `order_021` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_021` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_022`
--

DROP TABLE IF EXISTS `order_022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_022` (
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
-- Dumping data for table `order_022`
--

LOCK TABLES `order_022` WRITE;
/*!40000 ALTER TABLE `order_022` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_022` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_023`
--

DROP TABLE IF EXISTS `order_023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_023` (
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
-- Dumping data for table `order_023`
--

LOCK TABLES `order_023` WRITE;
/*!40000 ALTER TABLE `order_023` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_023` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_024`
--

DROP TABLE IF EXISTS `order_024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_024` (
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
-- Dumping data for table `order_024`
--

LOCK TABLES `order_024` WRITE;
/*!40000 ALTER TABLE `order_024` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_024` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_025`
--

DROP TABLE IF EXISTS `order_025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_025` (
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
-- Dumping data for table `order_025`
--

LOCK TABLES `order_025` WRITE;
/*!40000 ALTER TABLE `order_025` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_025` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_026`
--

DROP TABLE IF EXISTS `order_026`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_026` (
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
-- Dumping data for table `order_026`
--

LOCK TABLES `order_026` WRITE;
/*!40000 ALTER TABLE `order_026` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_026` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_027`
--

DROP TABLE IF EXISTS `order_027`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_027` (
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
-- Dumping data for table `order_027`
--

LOCK TABLES `order_027` WRITE;
/*!40000 ALTER TABLE `order_027` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_027` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_028`
--

DROP TABLE IF EXISTS `order_028`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_028` (
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
-- Dumping data for table `order_028`
--

LOCK TABLES `order_028` WRITE;
/*!40000 ALTER TABLE `order_028` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_028` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_029`
--

DROP TABLE IF EXISTS `order_029`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_029` (
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
-- Dumping data for table `order_029`
--

LOCK TABLES `order_029` WRITE;
/*!40000 ALTER TABLE `order_029` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_029` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_030`
--

DROP TABLE IF EXISTS `order_030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_030` (
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
-- Dumping data for table `order_030`
--

LOCK TABLES `order_030` WRITE;
/*!40000 ALTER TABLE `order_030` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_030` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_031`
--

DROP TABLE IF EXISTS `order_031`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_031` (
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
-- Dumping data for table `order_031`
--

LOCK TABLES `order_031` WRITE;
/*!40000 ALTER TABLE `order_031` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_031` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_032`
--

DROP TABLE IF EXISTS `order_032`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_032` (
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
-- Dumping data for table `order_032`
--

LOCK TABLES `order_032` WRITE;
/*!40000 ALTER TABLE `order_032` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_032` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_033`
--

DROP TABLE IF EXISTS `order_033`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_033` (
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
-- Dumping data for table `order_033`
--

LOCK TABLES `order_033` WRITE;
/*!40000 ALTER TABLE `order_033` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_033` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_034`
--

DROP TABLE IF EXISTS `order_034`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_034` (
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
-- Dumping data for table `order_034`
--

LOCK TABLES `order_034` WRITE;
/*!40000 ALTER TABLE `order_034` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_034` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_035`
--

DROP TABLE IF EXISTS `order_035`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_035` (
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
-- Dumping data for table `order_035`
--

LOCK TABLES `order_035` WRITE;
/*!40000 ALTER TABLE `order_035` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_035` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_036`
--

DROP TABLE IF EXISTS `order_036`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_036` (
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
-- Dumping data for table `order_036`
--

LOCK TABLES `order_036` WRITE;
/*!40000 ALTER TABLE `order_036` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_036` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_037`
--

DROP TABLE IF EXISTS `order_037`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_037` (
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
-- Dumping data for table `order_037`
--

LOCK TABLES `order_037` WRITE;
/*!40000 ALTER TABLE `order_037` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_037` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_038`
--

DROP TABLE IF EXISTS `order_038`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_038` (
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
-- Dumping data for table `order_038`
--

LOCK TABLES `order_038` WRITE;
/*!40000 ALTER TABLE `order_038` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_038` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_039`
--

DROP TABLE IF EXISTS `order_039`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_039` (
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
-- Dumping data for table `order_039`
--

LOCK TABLES `order_039` WRITE;
/*!40000 ALTER TABLE `order_039` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_039` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_040`
--

DROP TABLE IF EXISTS `order_040`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_040` (
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
-- Dumping data for table `order_040`
--

LOCK TABLES `order_040` WRITE;
/*!40000 ALTER TABLE `order_040` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_040` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_041`
--

DROP TABLE IF EXISTS `order_041`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_041` (
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
-- Dumping data for table `order_041`
--

LOCK TABLES `order_041` WRITE;
/*!40000 ALTER TABLE `order_041` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_041` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_042`
--

DROP TABLE IF EXISTS `order_042`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_042` (
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
-- Dumping data for table `order_042`
--

LOCK TABLES `order_042` WRITE;
/*!40000 ALTER TABLE `order_042` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_042` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_043`
--

DROP TABLE IF EXISTS `order_043`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_043` (
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
-- Dumping data for table `order_043`
--

LOCK TABLES `order_043` WRITE;
/*!40000 ALTER TABLE `order_043` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_043` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_044`
--

DROP TABLE IF EXISTS `order_044`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_044` (
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
-- Dumping data for table `order_044`
--

LOCK TABLES `order_044` WRITE;
/*!40000 ALTER TABLE `order_044` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_044` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_045`
--

DROP TABLE IF EXISTS `order_045`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_045` (
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
-- Dumping data for table `order_045`
--

LOCK TABLES `order_045` WRITE;
/*!40000 ALTER TABLE `order_045` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_045` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_046`
--

DROP TABLE IF EXISTS `order_046`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_046` (
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
-- Dumping data for table `order_046`
--

LOCK TABLES `order_046` WRITE;
/*!40000 ALTER TABLE `order_046` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_046` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_047`
--

DROP TABLE IF EXISTS `order_047`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_047` (
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
-- Dumping data for table `order_047`
--

LOCK TABLES `order_047` WRITE;
/*!40000 ALTER TABLE `order_047` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_047` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_048`
--

DROP TABLE IF EXISTS `order_048`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_048` (
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
-- Dumping data for table `order_048`
--

LOCK TABLES `order_048` WRITE;
/*!40000 ALTER TABLE `order_048` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_048` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_049`
--

DROP TABLE IF EXISTS `order_049`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_049` (
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
-- Dumping data for table `order_049`
--

LOCK TABLES `order_049` WRITE;
/*!40000 ALTER TABLE `order_049` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_049` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_050`
--

DROP TABLE IF EXISTS `order_050`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_050` (
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
-- Dumping data for table `order_050`
--

LOCK TABLES `order_050` WRITE;
/*!40000 ALTER TABLE `order_050` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_050` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_051`
--

DROP TABLE IF EXISTS `order_051`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_051` (
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
-- Dumping data for table `order_051`
--

LOCK TABLES `order_051` WRITE;
/*!40000 ALTER TABLE `order_051` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_051` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_052`
--

DROP TABLE IF EXISTS `order_052`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_052` (
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
-- Dumping data for table `order_052`
--

LOCK TABLES `order_052` WRITE;
/*!40000 ALTER TABLE `order_052` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_052` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_053`
--

DROP TABLE IF EXISTS `order_053`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_053` (
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
-- Dumping data for table `order_053`
--

LOCK TABLES `order_053` WRITE;
/*!40000 ALTER TABLE `order_053` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_053` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_054`
--

DROP TABLE IF EXISTS `order_054`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_054` (
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
-- Dumping data for table `order_054`
--

LOCK TABLES `order_054` WRITE;
/*!40000 ALTER TABLE `order_054` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_054` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_055`
--

DROP TABLE IF EXISTS `order_055`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_055` (
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
-- Dumping data for table `order_055`
--

LOCK TABLES `order_055` WRITE;
/*!40000 ALTER TABLE `order_055` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_055` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_056`
--

DROP TABLE IF EXISTS `order_056`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_056` (
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
-- Dumping data for table `order_056`
--

LOCK TABLES `order_056` WRITE;
/*!40000 ALTER TABLE `order_056` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_056` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_057`
--

DROP TABLE IF EXISTS `order_057`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_057` (
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
-- Dumping data for table `order_057`
--

LOCK TABLES `order_057` WRITE;
/*!40000 ALTER TABLE `order_057` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_057` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_058`
--

DROP TABLE IF EXISTS `order_058`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_058` (
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
-- Dumping data for table `order_058`
--

LOCK TABLES `order_058` WRITE;
/*!40000 ALTER TABLE `order_058` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_058` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_059`
--

DROP TABLE IF EXISTS `order_059`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_059` (
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
-- Dumping data for table `order_059`
--

LOCK TABLES `order_059` WRITE;
/*!40000 ALTER TABLE `order_059` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_059` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_060`
--

DROP TABLE IF EXISTS `order_060`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_060` (
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
-- Dumping data for table `order_060`
--

LOCK TABLES `order_060` WRITE;
/*!40000 ALTER TABLE `order_060` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_060` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_061`
--

DROP TABLE IF EXISTS `order_061`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_061` (
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
-- Dumping data for table `order_061`
--

LOCK TABLES `order_061` WRITE;
/*!40000 ALTER TABLE `order_061` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_061` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_062`
--

DROP TABLE IF EXISTS `order_062`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_062` (
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
-- Dumping data for table `order_062`
--

LOCK TABLES `order_062` WRITE;
/*!40000 ALTER TABLE `order_062` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_062` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_063`
--

DROP TABLE IF EXISTS `order_063`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_063` (
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
-- Dumping data for table `order_063`
--

LOCK TABLES `order_063` WRITE;
/*!40000 ALTER TABLE `order_063` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_063` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-05 22:51:25
