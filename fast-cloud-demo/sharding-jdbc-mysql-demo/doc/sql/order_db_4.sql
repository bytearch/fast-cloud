-- MySQL dump 10.13  Distrib 8.0.26, for macos11.3 (x86_64)
--
-- Host: 172.30.1.24    Database: order_db_4
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES gb2312 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order_192`
--

DROP TABLE IF EXISTS `order_192`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_192` (
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
-- Dumping data for table `order_192`
--

LOCK TABLES `order_192` WRITE;
/*!40000 ALTER TABLE `order_192` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_192` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_193`
--

DROP TABLE IF EXISTS `order_193`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_193` (
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
-- Dumping data for table `order_193`
--

LOCK TABLES `order_193` WRITE;
/*!40000 ALTER TABLE `order_193` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_193` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_194`
--

DROP TABLE IF EXISTS `order_194`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_194` (
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
-- Dumping data for table `order_194`
--

LOCK TABLES `order_194` WRITE;
/*!40000 ALTER TABLE `order_194` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_194` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_195`
--

DROP TABLE IF EXISTS `order_195`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_195` (
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
-- Dumping data for table `order_195`
--

LOCK TABLES `order_195` WRITE;
/*!40000 ALTER TABLE `order_195` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_195` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_196`
--

DROP TABLE IF EXISTS `order_196`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_196` (
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
-- Dumping data for table `order_196`
--

LOCK TABLES `order_196` WRITE;
/*!40000 ALTER TABLE `order_196` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_196` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_197`
--

DROP TABLE IF EXISTS `order_197`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_197` (
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
-- Dumping data for table `order_197`
--

LOCK TABLES `order_197` WRITE;
/*!40000 ALTER TABLE `order_197` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_197` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_198`
--

DROP TABLE IF EXISTS `order_198`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_198` (
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
-- Dumping data for table `order_198`
--

LOCK TABLES `order_198` WRITE;
/*!40000 ALTER TABLE `order_198` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_198` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_199`
--

DROP TABLE IF EXISTS `order_199`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_199` (
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
-- Dumping data for table `order_199`
--

LOCK TABLES `order_199` WRITE;
/*!40000 ALTER TABLE `order_199` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_199` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_200`
--

DROP TABLE IF EXISTS `order_200`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_200` (
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
-- Dumping data for table `order_200`
--

LOCK TABLES `order_200` WRITE;
/*!40000 ALTER TABLE `order_200` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_200` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_201`
--

DROP TABLE IF EXISTS `order_201`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_201` (
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
-- Dumping data for table `order_201`
--

LOCK TABLES `order_201` WRITE;
/*!40000 ALTER TABLE `order_201` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_201` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_202`
--

DROP TABLE IF EXISTS `order_202`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_202` (
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
-- Dumping data for table `order_202`
--

LOCK TABLES `order_202` WRITE;
/*!40000 ALTER TABLE `order_202` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_202` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_203`
--

DROP TABLE IF EXISTS `order_203`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_203` (
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
-- Dumping data for table `order_203`
--

LOCK TABLES `order_203` WRITE;
/*!40000 ALTER TABLE `order_203` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_203` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_204`
--

DROP TABLE IF EXISTS `order_204`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_204` (
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
-- Dumping data for table `order_204`
--

LOCK TABLES `order_204` WRITE;
/*!40000 ALTER TABLE `order_204` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_204` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_205`
--

DROP TABLE IF EXISTS `order_205`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_205` (
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
-- Dumping data for table `order_205`
--

LOCK TABLES `order_205` WRITE;
/*!40000 ALTER TABLE `order_205` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_205` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_206`
--

DROP TABLE IF EXISTS `order_206`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_206` (
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
-- Dumping data for table `order_206`
--

LOCK TABLES `order_206` WRITE;
/*!40000 ALTER TABLE `order_206` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_206` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_207`
--

DROP TABLE IF EXISTS `order_207`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_207` (
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
-- Dumping data for table `order_207`
--

LOCK TABLES `order_207` WRITE;
/*!40000 ALTER TABLE `order_207` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_207` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_208`
--

DROP TABLE IF EXISTS `order_208`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_208` (
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
-- Dumping data for table `order_208`
--

LOCK TABLES `order_208` WRITE;
/*!40000 ALTER TABLE `order_208` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_208` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_209`
--

DROP TABLE IF EXISTS `order_209`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_209` (
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
-- Dumping data for table `order_209`
--

LOCK TABLES `order_209` WRITE;
/*!40000 ALTER TABLE `order_209` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_209` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_210`
--

DROP TABLE IF EXISTS `order_210`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_210` (
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
-- Dumping data for table `order_210`
--

LOCK TABLES `order_210` WRITE;
/*!40000 ALTER TABLE `order_210` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_210` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_211`
--

DROP TABLE IF EXISTS `order_211`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_211` (
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
-- Dumping data for table `order_211`
--

LOCK TABLES `order_211` WRITE;
/*!40000 ALTER TABLE `order_211` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_211` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_212`
--

DROP TABLE IF EXISTS `order_212`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_212` (
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
-- Dumping data for table `order_212`
--

LOCK TABLES `order_212` WRITE;
/*!40000 ALTER TABLE `order_212` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_212` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_213`
--

DROP TABLE IF EXISTS `order_213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_213` (
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
-- Dumping data for table `order_213`
--

LOCK TABLES `order_213` WRITE;
/*!40000 ALTER TABLE `order_213` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_213` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_214`
--

DROP TABLE IF EXISTS `order_214`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_214` (
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
-- Dumping data for table `order_214`
--

LOCK TABLES `order_214` WRITE;
/*!40000 ALTER TABLE `order_214` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_214` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_215`
--

DROP TABLE IF EXISTS `order_215`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_215` (
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
-- Dumping data for table `order_215`
--

LOCK TABLES `order_215` WRITE;
/*!40000 ALTER TABLE `order_215` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_215` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_216`
--

DROP TABLE IF EXISTS `order_216`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_216` (
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
-- Dumping data for table `order_216`
--

LOCK TABLES `order_216` WRITE;
/*!40000 ALTER TABLE `order_216` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_216` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_217`
--

DROP TABLE IF EXISTS `order_217`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_217` (
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
-- Dumping data for table `order_217`
--

LOCK TABLES `order_217` WRITE;
/*!40000 ALTER TABLE `order_217` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_217` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_218`
--

DROP TABLE IF EXISTS `order_218`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_218` (
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
-- Dumping data for table `order_218`
--

LOCK TABLES `order_218` WRITE;
/*!40000 ALTER TABLE `order_218` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_218` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_219`
--

DROP TABLE IF EXISTS `order_219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_219` (
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
-- Dumping data for table `order_219`
--

LOCK TABLES `order_219` WRITE;
/*!40000 ALTER TABLE `order_219` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_219` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_220`
--

DROP TABLE IF EXISTS `order_220`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_220` (
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
-- Dumping data for table `order_220`
--

LOCK TABLES `order_220` WRITE;
/*!40000 ALTER TABLE `order_220` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_220` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_221`
--

DROP TABLE IF EXISTS `order_221`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_221` (
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
-- Dumping data for table `order_221`
--

LOCK TABLES `order_221` WRITE;
/*!40000 ALTER TABLE `order_221` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_221` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_222`
--

DROP TABLE IF EXISTS `order_222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_222` (
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
-- Dumping data for table `order_222`
--

LOCK TABLES `order_222` WRITE;
/*!40000 ALTER TABLE `order_222` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_222` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_223`
--

DROP TABLE IF EXISTS `order_223`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_223` (
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
-- Dumping data for table `order_223`
--

LOCK TABLES `order_223` WRITE;
/*!40000 ALTER TABLE `order_223` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_223` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_224`
--

DROP TABLE IF EXISTS `order_224`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_224` (
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
-- Dumping data for table `order_224`
--

LOCK TABLES `order_224` WRITE;
/*!40000 ALTER TABLE `order_224` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_224` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_225`
--

DROP TABLE IF EXISTS `order_225`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_225` (
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
-- Dumping data for table `order_225`
--

LOCK TABLES `order_225` WRITE;
/*!40000 ALTER TABLE `order_225` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_225` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_226`
--

DROP TABLE IF EXISTS `order_226`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_226` (
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
-- Dumping data for table `order_226`
--

LOCK TABLES `order_226` WRITE;
/*!40000 ALTER TABLE `order_226` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_226` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_227`
--

DROP TABLE IF EXISTS `order_227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_227` (
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
-- Dumping data for table `order_227`
--

LOCK TABLES `order_227` WRITE;
/*!40000 ALTER TABLE `order_227` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_227` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_228`
--

DROP TABLE IF EXISTS `order_228`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_228` (
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
-- Dumping data for table `order_228`
--

LOCK TABLES `order_228` WRITE;
/*!40000 ALTER TABLE `order_228` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_228` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_229`
--

DROP TABLE IF EXISTS `order_229`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_229` (
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
-- Dumping data for table `order_229`
--

LOCK TABLES `order_229` WRITE;
/*!40000 ALTER TABLE `order_229` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_229` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_230`
--

DROP TABLE IF EXISTS `order_230`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_230` (
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
-- Dumping data for table `order_230`
--

LOCK TABLES `order_230` WRITE;
/*!40000 ALTER TABLE `order_230` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_230` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_231`
--

DROP TABLE IF EXISTS `order_231`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_231` (
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
-- Dumping data for table `order_231`
--

LOCK TABLES `order_231` WRITE;
/*!40000 ALTER TABLE `order_231` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_231` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_232`
--

DROP TABLE IF EXISTS `order_232`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_232` (
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
-- Dumping data for table `order_232`
--

LOCK TABLES `order_232` WRITE;
/*!40000 ALTER TABLE `order_232` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_232` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_233`
--

DROP TABLE IF EXISTS `order_233`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_233` (
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
-- Dumping data for table `order_233`
--

LOCK TABLES `order_233` WRITE;
/*!40000 ALTER TABLE `order_233` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_233` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_234`
--

DROP TABLE IF EXISTS `order_234`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_234` (
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
-- Dumping data for table `order_234`
--

LOCK TABLES `order_234` WRITE;
/*!40000 ALTER TABLE `order_234` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_234` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_235`
--

DROP TABLE IF EXISTS `order_235`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_235` (
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
-- Dumping data for table `order_235`
--

LOCK TABLES `order_235` WRITE;
/*!40000 ALTER TABLE `order_235` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_235` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_236`
--

DROP TABLE IF EXISTS `order_236`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_236` (
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
-- Dumping data for table `order_236`
--

LOCK TABLES `order_236` WRITE;
/*!40000 ALTER TABLE `order_236` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_236` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_237`
--

DROP TABLE IF EXISTS `order_237`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_237` (
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
-- Dumping data for table `order_237`
--

LOCK TABLES `order_237` WRITE;
/*!40000 ALTER TABLE `order_237` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_237` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_238`
--

DROP TABLE IF EXISTS `order_238`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_238` (
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
-- Dumping data for table `order_238`
--

LOCK TABLES `order_238` WRITE;
/*!40000 ALTER TABLE `order_238` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_238` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_239`
--

DROP TABLE IF EXISTS `order_239`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_239` (
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
-- Dumping data for table `order_239`
--

LOCK TABLES `order_239` WRITE;
/*!40000 ALTER TABLE `order_239` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_239` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_240`
--

DROP TABLE IF EXISTS `order_240`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_240` (
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
-- Dumping data for table `order_240`
--

LOCK TABLES `order_240` WRITE;
/*!40000 ALTER TABLE `order_240` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_240` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_241`
--

DROP TABLE IF EXISTS `order_241`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_241` (
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
-- Dumping data for table `order_241`
--

LOCK TABLES `order_241` WRITE;
/*!40000 ALTER TABLE `order_241` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_241` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_242`
--

DROP TABLE IF EXISTS `order_242`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_242` (
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
-- Dumping data for table `order_242`
--

LOCK TABLES `order_242` WRITE;
/*!40000 ALTER TABLE `order_242` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_242` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_243`
--

DROP TABLE IF EXISTS `order_243`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_243` (
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
-- Dumping data for table `order_243`
--

LOCK TABLES `order_243` WRITE;
/*!40000 ALTER TABLE `order_243` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_243` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_244`
--

DROP TABLE IF EXISTS `order_244`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_244` (
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
-- Dumping data for table `order_244`
--

LOCK TABLES `order_244` WRITE;
/*!40000 ALTER TABLE `order_244` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_244` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_245`
--

DROP TABLE IF EXISTS `order_245`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_245` (
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
-- Dumping data for table `order_245`
--

LOCK TABLES `order_245` WRITE;
/*!40000 ALTER TABLE `order_245` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_245` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_246`
--

DROP TABLE IF EXISTS `order_246`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_246` (
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
-- Dumping data for table `order_246`
--

LOCK TABLES `order_246` WRITE;
/*!40000 ALTER TABLE `order_246` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_246` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_247`
--

DROP TABLE IF EXISTS `order_247`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_247` (
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
-- Dumping data for table `order_247`
--

LOCK TABLES `order_247` WRITE;
/*!40000 ALTER TABLE `order_247` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_247` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_248`
--

DROP TABLE IF EXISTS `order_248`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_248` (
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
-- Dumping data for table `order_248`
--

LOCK TABLES `order_248` WRITE;
/*!40000 ALTER TABLE `order_248` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_248` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_249`
--

DROP TABLE IF EXISTS `order_249`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_249` (
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
-- Dumping data for table `order_249`
--

LOCK TABLES `order_249` WRITE;
/*!40000 ALTER TABLE `order_249` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_249` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_250`
--

DROP TABLE IF EXISTS `order_250`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_250` (
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
-- Dumping data for table `order_250`
--

LOCK TABLES `order_250` WRITE;
/*!40000 ALTER TABLE `order_250` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_250` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_251`
--

DROP TABLE IF EXISTS `order_251`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_251` (
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
-- Dumping data for table `order_251`
--

LOCK TABLES `order_251` WRITE;
/*!40000 ALTER TABLE `order_251` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_251` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_252`
--

DROP TABLE IF EXISTS `order_252`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_252` (
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
-- Dumping data for table `order_252`
--

LOCK TABLES `order_252` WRITE;
/*!40000 ALTER TABLE `order_252` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_252` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_253`
--

DROP TABLE IF EXISTS `order_253`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_253` (
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
-- Dumping data for table `order_253`
--

LOCK TABLES `order_253` WRITE;
/*!40000 ALTER TABLE `order_253` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_253` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_254`
--

DROP TABLE IF EXISTS `order_254`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_254` (
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
-- Dumping data for table `order_254`
--

LOCK TABLES `order_254` WRITE;
/*!40000 ALTER TABLE `order_254` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_254` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_255`
--

DROP TABLE IF EXISTS `order_255`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_255` (
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
-- Dumping data for table `order_255`
--

LOCK TABLES `order_255` WRITE;
/*!40000 ALTER TABLE `order_255` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_255` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-05 23:02:20
