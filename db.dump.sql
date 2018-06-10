-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: AaditLife_development
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2018-04-06 10:28:02','2018-04-06 10:28:02');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardio_profiles`
--

DROP TABLE IF EXISTS `cardio_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardio_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fitness_test_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `on_date` date DEFAULT NULL,
  `speed` float DEFAULT NULL,
  `bpm` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cardio_profiles_on_fitness_test_id` (`fitness_test_id`),
  KEY `index_cardio_profiles_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=805 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardio_profiles`
--

LOCK TABLES `cardio_profiles` WRITE;
/*!40000 ALTER TABLE `cardio_profiles` DISABLE KEYS */;
INSERT INTO `cardio_profiles` VALUES (673,138,893,'2018-05-19',4,114,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(674,138,893,'2018-05-19',5,115,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(675,138,893,'2018-05-19',6,116,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(676,138,893,'2018-05-19',7,117,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(677,138,893,'2018-05-19',8,118,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(678,138,893,'2018-05-19',9,119,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(679,138,893,'2018-05-19',10,120,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(680,138,893,'2018-05-19',11,121,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(681,138,893,'2018-05-19',12,122,'2018-05-19 04:12:26','2018-05-19 04:12:26'),(682,138,893,'2018-05-19',13,123,'2018-05-19 04:12:26','2018-05-19 04:12:26'),(683,138,893,'2018-05-19',14,124,'2018-05-19 04:12:26','2018-05-19 04:12:26'),(684,138,893,'2018-05-19',15,125,'2018-05-19 04:12:26','2018-05-19 04:12:26'),(685,139,894,'2018-05-19',4,114,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(686,139,894,'2018-05-19',5,115,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(687,139,894,'2018-05-19',6,116,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(688,139,894,'2018-05-19',7,117,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(689,139,894,'2018-05-19',8,118,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(690,139,894,'2018-05-19',9,119,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(691,139,894,'2018-05-19',10,120,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(692,139,894,'2018-05-19',11,121,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(693,139,894,'2018-05-19',12,122,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(694,139,894,'2018-05-19',13,123,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(695,139,894,'2018-05-19',14,124,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(696,139,894,'2018-05-19',15,125,'2018-05-19 04:12:28','2018-05-19 04:12:28'),(697,140,897,'2018-05-19',4,114,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(698,140,897,'2018-05-19',5,115,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(699,140,897,'2018-05-19',6,116,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(700,140,897,'2018-05-19',7,117,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(701,140,897,'2018-05-19',8,118,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(702,140,897,'2018-05-19',9,119,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(703,140,897,'2018-05-19',10,120,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(704,140,897,'2018-05-19',11,121,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(705,140,897,'2018-05-19',12,122,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(706,140,897,'2018-05-19',13,123,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(707,140,897,'2018-05-19',14,124,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(708,140,897,'2018-05-19',15,125,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(709,141,898,'2018-05-19',4,114,'2018-05-19 04:12:30','2018-05-19 04:12:30'),(710,141,898,'2018-05-19',5,115,'2018-05-19 04:12:30','2018-05-19 04:12:30'),(711,141,898,'2018-05-19',6,116,'2018-05-19 04:12:30','2018-05-19 04:12:30'),(712,141,898,'2018-05-19',7,117,'2018-05-19 04:12:30','2018-05-19 04:12:30'),(713,141,898,'2018-05-19',8,118,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(714,141,898,'2018-05-19',9,119,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(715,141,898,'2018-05-19',10,120,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(716,141,898,'2018-05-19',11,121,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(717,141,898,'2018-05-19',12,122,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(718,141,898,'2018-05-19',13,123,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(719,141,898,'2018-05-19',14,124,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(720,141,898,'2018-05-19',15,125,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(721,142,901,'2018-05-19',4,114,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(722,142,901,'2018-05-19',5,115,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(723,142,901,'2018-05-19',6,116,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(724,142,901,'2018-05-19',7,117,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(725,142,901,'2018-05-19',8,118,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(726,142,901,'2018-05-19',9,119,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(727,142,901,'2018-05-19',10,120,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(728,142,901,'2018-05-19',11,121,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(729,142,901,'2018-05-19',12,122,'2018-05-19 04:12:33','2018-05-19 04:12:33'),(730,142,901,'2018-05-19',13,123,'2018-05-19 04:12:33','2018-05-19 04:12:33'),(731,142,901,'2018-05-19',14,124,'2018-05-19 04:12:33','2018-05-19 04:12:33'),(732,142,901,'2018-05-19',15,125,'2018-05-19 04:12:33','2018-05-19 04:12:33'),(733,143,902,'2018-05-19',4,114,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(734,143,902,'2018-05-19',5,115,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(735,143,902,'2018-05-19',6,116,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(736,143,902,'2018-05-19',7,117,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(737,143,902,'2018-05-19',8,118,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(738,143,902,'2018-05-19',9,119,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(739,143,902,'2018-05-19',10,120,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(740,143,902,'2018-05-19',11,121,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(741,143,902,'2018-05-19',12,122,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(742,143,902,'2018-05-19',13,123,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(743,143,902,'2018-05-19',14,124,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(744,143,902,'2018-05-19',15,125,'2018-05-19 04:12:34','2018-05-19 04:12:34'),(745,144,905,'2018-05-19',4,114,'2018-05-19 04:12:35','2018-05-19 04:12:35'),(746,144,905,'2018-05-19',5,115,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(747,144,905,'2018-05-19',6,116,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(748,144,905,'2018-05-19',7,117,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(749,144,905,'2018-05-19',8,118,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(750,144,905,'2018-05-19',9,119,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(751,144,905,'2018-05-19',10,120,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(752,144,905,'2018-05-19',11,121,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(753,144,905,'2018-05-19',12,122,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(754,144,905,'2018-05-19',13,123,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(755,144,905,'2018-05-19',14,124,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(756,144,905,'2018-05-19',15,125,'2018-05-19 04:12:36','2018-05-19 04:12:36'),(757,145,906,'2018-05-19',4,114,'2018-05-19 04:12:37','2018-05-19 04:12:37'),(758,145,906,'2018-05-19',5,115,'2018-05-19 04:12:37','2018-05-19 04:12:37'),(759,145,906,'2018-05-19',6,116,'2018-05-19 04:12:37','2018-05-19 04:12:37'),(760,145,906,'2018-05-19',7,117,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(761,145,906,'2018-05-19',8,118,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(762,145,906,'2018-05-19',9,119,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(763,145,906,'2018-05-19',10,120,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(764,145,906,'2018-05-19',11,121,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(765,145,906,'2018-05-19',12,122,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(766,145,906,'2018-05-19',13,123,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(767,145,906,'2018-05-19',14,124,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(768,145,906,'2018-05-19',15,125,'2018-05-19 04:12:38','2018-05-19 04:12:38'),(769,146,909,'2018-05-19',4,114,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(770,146,909,'2018-05-19',5,115,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(771,146,909,'2018-05-19',6,116,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(772,146,909,'2018-05-19',7,117,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(773,146,909,'2018-05-19',8,118,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(774,146,909,'2018-05-19',9,119,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(775,146,909,'2018-05-19',10,120,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(776,146,909,'2018-05-19',11,121,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(777,146,909,'2018-05-19',12,122,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(778,146,909,'2018-05-19',13,123,'2018-05-19 04:12:40','2018-05-19 04:12:40'),(779,146,909,'2018-05-19',14,124,'2018-05-19 04:12:41','2018-05-19 04:12:41'),(780,146,909,'2018-05-19',15,125,'2018-05-19 04:12:41','2018-05-19 04:12:41'),(781,147,910,'2018-05-19',4,114,'2018-05-19 04:12:43','2018-05-19 04:12:43'),(782,147,910,'2018-05-19',5,115,'2018-05-19 04:12:43','2018-05-19 04:12:43'),(783,147,910,'2018-05-19',6,116,'2018-05-19 04:12:43','2018-05-19 04:12:43'),(784,147,910,'2018-05-19',7,117,'2018-05-19 04:12:43','2018-05-19 04:12:43'),(785,147,910,'2018-05-19',8,118,'2018-05-19 04:12:43','2018-05-19 04:12:43'),(786,147,910,'2018-05-19',9,119,'2018-05-19 04:12:43','2018-05-19 04:12:43'),(787,147,910,'2018-05-19',10,120,'2018-05-19 04:12:43','2018-05-19 04:12:43'),(788,147,910,'2018-05-19',11,121,'2018-05-19 04:12:44','2018-05-19 04:12:44'),(789,147,910,'2018-05-19',12,122,'2018-05-19 04:12:44','2018-05-19 04:12:44'),(790,147,910,'2018-05-19',13,123,'2018-05-19 04:12:44','2018-05-19 04:12:44'),(791,147,910,'2018-05-19',14,124,'2018-05-19 04:12:44','2018-05-19 04:12:44'),(792,147,910,'2018-05-19',15,125,'2018-05-19 04:12:44','2018-05-19 04:12:44'),(793,148,921,'2018-05-19',4,114,'2018-05-19 04:12:45','2018-05-19 04:12:45'),(794,148,921,'2018-05-19',5,115,'2018-05-19 04:12:46','2018-05-19 04:12:46'),(795,148,921,'2018-05-19',6,116,'2018-05-19 04:12:46','2018-05-19 04:12:46'),(796,148,921,'2018-05-19',7,117,'2018-05-19 04:12:46','2018-05-19 04:12:46'),(797,148,921,'2018-05-19',8,118,'2018-05-19 04:12:46','2018-05-19 04:12:46'),(798,148,921,'2018-05-19',9,119,'2018-05-19 04:12:46','2018-05-19 04:12:46'),(799,148,921,'2018-05-19',10,120,'2018-05-19 04:12:46','2018-05-19 04:12:46'),(800,148,921,'2018-05-19',11,121,'2018-05-19 04:12:46','2018-05-19 04:12:46'),(801,148,921,'2018-05-19',12,122,'2018-05-19 04:12:46','2018-05-19 04:12:46'),(802,148,921,'2018-05-19',13,123,'2018-05-19 04:12:47','2018-05-19 04:12:47'),(803,148,921,'2018-05-19',14,124,'2018-05-19 04:12:47','2018-05-19 04:12:47'),(804,148,921,'2018-05-19',15,125,'2018-05-19 04:12:47','2018-05-19 04:12:47');
/*!40000 ALTER TABLE `cardio_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `allowed_signup_count` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_companies_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (191,'Weissnat and Sons','enable innovative bandwidth',262,'2018-05-19 04:12:12','2018-05-19 04:12:12',NULL),(192,'Hickle and Sons','envisioneer compelling web services',542,'2018-05-19 04:12:12','2018-05-19 04:12:12',NULL),(193,'Emard, Aufderhar and Frami','reinvent real-time relationships',993,'2018-05-19 04:12:12','2018-05-19 04:12:12',NULL),(194,'Jacobi-Schneider','revolutionize dynamic paradigms',623,'2018-05-19 04:12:12','2018-05-19 04:12:12',NULL),(195,'Reynolds and Sons','architect transparent applications',446,'2018-05-19 04:12:12','2018-05-19 04:12:12',NULL);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `handler` text NOT NULL,
  `last_error` text,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `queue` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delayed_jobs_priority` (`priority`,`run_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitness_tests`
--

DROP TABLE IF EXISTS `fitness_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fitness_tests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `test_date` date DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `fat_percentage` float DEFAULT NULL,
  `body_age` int(11) DEFAULT NULL,
  `bmi` float DEFAULT NULL,
  `rm` float DEFAULT NULL,
  `visc_fat` float DEFAULT NULL,
  `sc_fat` float DEFAULT NULL,
  `muscle_percentage` float DEFAULT NULL,
  `fat_kg` float DEFAULT NULL,
  `muscle_kg` float DEFAULT NULL,
  `other_kg` float DEFAULT NULL,
  `fat_loss` float DEFAULT NULL,
  `muscle_gain` float DEFAULT NULL,
  `max_speed` float DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `reason_for_stopping` varchar(255) DEFAULT NULL,
  `test_details` text,
  `user_id` int(11) DEFAULT NULL,
  `coach_id` int(11) DEFAULT NULL,
  `max_heart_rate` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `current` tinyint(1) DEFAULT NULL,
  `height` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_fitness_tests_on_current` (`current`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness_tests`
--

LOCK TABLES `fitness_tests` WRITE;
/*!40000 ALTER TABLE `fitness_tests` DISABLE KEYS */;
INSERT INTO `fitness_tests` VALUES (138,'2018-05-24',81,25,47,118,92,20,11,15,17,12,10,8,4,15,14,'Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!','You, my friend, have crossed the line between man and bum.',893,915,100,'2018-05-19 04:12:25','2018-05-19 04:12:25',1,5.1),(139,'2018-05-19',72,23,22,49,66,16,19,15,18,17,11,8,0,20,29,'Kill my boss? Do I dare live out the American dream?','You know I always wanted to pretend I was an architect',894,919,90,'2018-05-19 04:12:27','2018-05-19 04:12:27',1,5.3),(140,'2018-05-17',115,31,38,118,116,10,18,19,10,20,20,7,1,20,10,'Cheating is the gift man gives himself.','Dolores!',897,919,95,'2018-05-19 04:12:29','2018-05-19 04:12:29',1,5.6),(141,'2018-05-20',78,28,30,67,114,14,18,16,20,16,10,8,0,13,20,'D\'oh!','This woman hates me so much, I’m starting to like her.',898,917,102,'2018-05-19 04:12:30','2018-05-19 04:12:30',1,5.6),(142,'2018-05-16',59,20,35,98,114,13,10,10,17,12,20,10,1,10,22,'Sorry, Mom, the mob has spoken.','You, my friend, have crossed the line between man and bum.',901,911,92,'2018-05-19 04:12:32','2018-05-19 04:12:32',1,6.2),(143,'2018-05-15',81,23,35,58,109,17,17,10,14,11,10,7,2,11,30,'Oh, loneliness and cheeseburgers are a dangerous mix.','Did you know that the original title for War and Peace was War, What Is It Good For?',902,918,113,'2018-05-19 04:12:34','2018-05-19 04:12:34',1,6.1),(144,'2018-05-14',94,28,32,52,84,16,19,10,19,15,11,5,0,17,11,'You tried your best and you failed miserably. The lesson is: Never try.','I lie every second of the day. My whole life is a sham.',905,919,111,'2018-05-19 04:12:35','2018-05-19 04:12:35',1,5.9),(145,'2018-05-13',62,34,43,82,55,18,18,17,19,19,18,8,1,13,16,'If you pray to the wrong god, you might just make the right one madder and madder.','I want to be the one person who doesn\'t die with dignity.',906,912,117,'2018-05-19 04:12:37','2018-05-19 04:12:37',1,5.7),(146,'2018-05-25',89,34,21,81,108,17,16,17,12,11,10,4,7,13,13,'Life is just one crushing defeat after another until you just wish Flanders was dead.','You were necking during Schindler\'s List?',909,912,93,'2018-05-19 04:12:40','2018-05-19 04:12:40',1,6),(147,'2018-05-22',91,25,48,107,88,19,12,14,10,17,12,5,3,17,22,'Kill my boss? Do I dare live out the American dream?','This isn\'t a good time.',910,916,95,'2018-05-19 04:12:43','2018-05-19 04:12:43',1,6.2),(148,'2018-05-14',57,22,37,63,61,16,10,15,15,16,18,8,0,15,11,'Go out on a Tuesday? Who am I, Charlie Sheen?','When you look annoyed all the time, people think that you\'re busy.',921,919,90,'2018-05-19 04:12:45','2018-05-19 04:12:45',1,6);
/*!40000 ALTER TABLE `fitness_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_logs`
--

DROP TABLE IF EXISTS `food_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `meal` varchar(15) DEFAULT NULL,
  `intake_date` datetime DEFAULT NULL,
  `details` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_food_logs_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_logs`
--

LOCK TABLES `food_logs` WRITE;
/*!40000 ALTER TABLE `food_logs` DISABLE KEYS */;
INSERT INTO `food_logs` VALUES (78,893,'Dinner','2018-05-19 04:12:26','I had a very good meal. You tried your best and you failed miserably. The lesson is: Never try.','2018-05-19 04:12:26','2018-05-19 04:12:26'),(79,893,'Snack','2018-05-19 04:12:26','I had a very good meal. Cheating is the gift man gives himself.','2018-05-19 04:12:26','2018-05-19 04:12:26'),(80,893,'Snack','2018-05-19 04:12:27','I had a very good meal. It takes two to lie: one to lie and one to listen.','2018-05-19 04:12:27','2018-05-19 04:12:27'),(81,894,'Breakfast','2018-05-19 04:12:28','I had a very good meal. It takes two to lie: one to lie and one to listen.','2018-05-19 04:12:28','2018-05-19 04:12:28'),(82,894,'Breakfast','2018-05-19 04:12:28','I had a very good meal. Sorry, Mom, the mob has spoken.','2018-05-19 04:12:28','2018-05-19 04:12:28'),(83,894,'Dinner','2018-05-19 04:12:28','I had a very good meal. When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!','2018-05-19 04:12:28','2018-05-19 04:12:28'),(84,897,'Snack','2018-05-19 04:12:30','I had a very good meal. If you pray to the wrong god, you might just make the right one madder and madder.','2018-05-19 04:12:30','2018-05-19 04:12:30'),(85,897,'Snack','2018-05-19 04:12:30','I had a very good meal. I\'m not normally a praying man, but if you\'re up there, please save me, Superman!','2018-05-19 04:12:30','2018-05-19 04:12:30'),(86,897,'Lunch','2018-05-19 04:12:30','I had a very good meal. Go out on a Tuesday? Who am I, Charlie Sheen?','2018-05-19 04:12:30','2018-05-19 04:12:30'),(87,898,'Breakfast','2018-05-19 04:12:31','I had a very good meal. Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!','2018-05-19 04:12:31','2018-05-19 04:12:31'),(88,898,'Breakfast','2018-05-19 04:12:32','I had a very good meal. Son, if you really want something in this life, you have to work for it. Now quiet! They\'re about to announce the lottery numbers.','2018-05-19 04:12:32','2018-05-19 04:12:32'),(89,898,'Snack','2018-05-19 04:12:32','I had a very good meal. If you pray to the wrong god, you might just make the right one madder and madder.','2018-05-19 04:12:32','2018-05-19 04:12:32'),(90,901,'Breakfast','2018-05-19 04:12:33','I had a very good meal. Life is just one crushing defeat after another until you just wish Flanders was dead.','2018-05-19 04:12:33','2018-05-19 04:12:33'),(91,901,'Lunch','2018-05-19 04:12:33','I had a very good meal. If you pray to the wrong god, you might just make the right one madder and madder.','2018-05-19 04:12:33','2018-05-19 04:12:33'),(92,901,'Snack','2018-05-19 04:12:33','I had a very good meal. I\'m not normally a praying man, but if you\'re up there, please save me, Superman!','2018-05-19 04:12:33','2018-05-19 04:12:33'),(93,902,'Snack','2018-05-19 04:12:35','I had a very good meal. To alcohol! The cause of, and solution to, all of life\'s problems.','2018-05-19 04:12:35','2018-05-19 04:12:35'),(94,902,'Dinner','2018-05-19 04:12:35','I had a very good meal. You tried your best and you failed miserably. The lesson is: Never try.','2018-05-19 04:12:35','2018-05-19 04:12:35'),(95,902,'Breakfast','2018-05-19 04:12:35','I had a very good meal. If you pray to the wrong god, you might just make the right one madder and madder.','2018-05-19 04:12:35','2018-05-19 04:12:35'),(96,905,'Snack','2018-05-19 04:12:37','I had a very good meal. Life is just one crushing defeat after another until you just wish Flanders was dead.','2018-05-19 04:12:37','2018-05-19 04:12:37'),(97,905,'Breakfast','2018-05-19 04:12:37','I had a very good meal. Sorry, Mom, the mob has spoken.','2018-05-19 04:12:37','2018-05-19 04:12:37'),(98,905,'Dinner','2018-05-19 04:12:37','I had a very good meal. It takes two to lie: one to lie and one to listen.','2018-05-19 04:12:37','2018-05-19 04:12:37'),(99,906,'Breakfast','2018-05-19 04:12:39','I had a very good meal. Oh, loneliness and cheeseburgers are a dangerous mix.','2018-05-19 04:12:39','2018-05-19 04:12:39'),(100,906,'Lunch','2018-05-19 04:12:39','I had a very good meal. Oh, loneliness and cheeseburgers are a dangerous mix.','2018-05-19 04:12:39','2018-05-19 04:12:39'),(101,906,'Snack','2018-05-19 04:12:39','I had a very good meal. It takes two to lie: one to lie and one to listen.','2018-05-19 04:12:39','2018-05-19 04:12:39'),(102,909,'Dinner','2018-05-19 04:12:42','I had a very good meal. What’s the point of going out? We’re just gonna wind up back home anyway.','2018-05-19 04:12:42','2018-05-19 04:12:42'),(103,909,'Dinner','2018-05-19 04:12:42','I had a very good meal. Kill my boss? Do I dare live out the American dream?','2018-05-19 04:12:42','2018-05-19 04:12:42'),(104,909,'Dinner','2018-05-19 04:12:43','I had a very good meal. If you pray to the wrong god, you might just make the right one madder and madder.','2018-05-19 04:12:43','2018-05-19 04:12:43'),(105,910,'Dinner','2018-05-19 04:12:45','I had a very good meal. D\'oh!','2018-05-19 04:12:45','2018-05-19 04:12:45'),(106,910,'Snack','2018-05-19 04:12:45','I had a very good meal. Cheating is the gift man gives himself.','2018-05-19 04:12:45','2018-05-19 04:12:45'),(107,910,'Snack','2018-05-19 04:12:45','I had a very good meal. I\'m not normally a praying man, but if you\'re up there, please save me, Superman!','2018-05-19 04:12:45','2018-05-19 04:12:45'),(108,921,'Breakfast','2018-05-19 04:12:48','I had a very good meal. Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','2018-05-19 04:12:48','2018-05-19 04:12:48'),(109,921,'Snack','2018-05-19 04:12:48','I had a very good meal. I\'m not normally a praying man, but if you\'re up there, please save me, Superman!','2018-05-19 04:12:48','2018-05-19 04:12:48'),(110,921,'Breakfast','2018-05-19 04:12:48','I had a very good meal. D\'oh!','2018-05-19 04:12:48','2018-05-19 04:12:48');
/*!40000 ALTER TABLE `food_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals`
--

DROP TABLE IF EXISTS `goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `reason` text,
  `delight` text,
  `frequency` text,
  `current_activity` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` VALUES (173,893,'2018-05-19 04:12:25','2018-05-19 04:12:25','Cheating is the gift man gives himself.','Kill my boss? Do I dare live out the American dream?','Not regular - less than once a week.','To alcohol! The cause of, and solution to, all of life\'s problems.'),(174,894,'2018-05-19 04:12:27','2018-05-19 04:12:27','When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!','D\'oh!','Somewhat regular - between one and three times a week.','Marriage is like a coffin and each kid is another nail.'),(175,897,'2018-05-19 04:12:29','2018-05-19 04:12:29','You tried your best and you failed miserably. The lesson is: Never try.','Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','Regular - three or more times a week.','I\'m not normally a praying man, but if you\'re up there, please save me, Superman!'),(176,898,'2018-05-19 04:12:30','2018-05-19 04:12:30','Oh, loneliness and cheeseburgers are a dangerous mix.','Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','Not regular - less than once a week.','To alcohol! The cause of, and solution to, all of life\'s problems.'),(177,901,'2018-05-19 04:12:32','2018-05-19 04:12:32','It takes two to lie: one to lie and one to listen.','What’s the point of going out? We’re just gonna wind up back home anyway.','Regular - three or more times a week.','When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!'),(178,902,'2018-05-19 04:12:33','2018-05-19 04:12:33','Sorry, Mom, the mob has spoken.','Go out on a Tuesday? Who am I, Charlie Sheen?','Not regular - less than once a week.','You tried your best and you failed miserably. The lesson is: Never try.'),(179,905,'2018-05-19 04:12:35','2018-05-19 04:12:35','I\'m not normally a praying man, but if you\'re up there, please save me, Superman!','It takes two to lie: one to lie and one to listen.','Regular - three or more times a week.','Life is just one crushing defeat after another until you just wish Flanders was dead.'),(180,906,'2018-05-19 04:12:37','2018-05-19 04:12:37','If you pray to the wrong god, you might just make the right one madder and madder.','Oh, loneliness and cheeseburgers are a dangerous mix.','Not regular - less than once a week.','To alcohol! The cause of, and solution to, all of life\'s problems.'),(181,909,'2018-05-19 04:12:40','2018-05-19 04:12:40','Sorry, Mom, the mob has spoken.','Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','Somewhat regular - between one and three times a week.','You tried your best and you failed miserably. The lesson is: Never try.'),(182,910,'2018-05-19 04:12:43','2018-05-19 04:12:43','I\'m not normally a praying man, but if you\'re up there, please save me, Superman!','Cheating is the gift man gives himself.','Not regular - less than once a week.','When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!'),(183,921,'2018-05-19 04:12:45','2018-05-19 04:12:45','Cheating is the gift man gives himself.','Son, if you really want something in this life, you have to work for it. Now quiet! They\'re about to announce the lottery numbers.','Somewhat regular - between one and three times a week.','When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!');
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_histories`
--

DROP TABLE IF EXISTS `medical_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_histories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `last_medical_checkup` varchar(255) DEFAULT NULL,
  `q1` tinyint(1) DEFAULT NULL,
  `q2` tinyint(1) DEFAULT NULL,
  `q3` tinyint(1) DEFAULT NULL,
  `q4` tinyint(1) DEFAULT NULL,
  `q5` tinyint(1) DEFAULT NULL,
  `q6` tinyint(1) DEFAULT NULL,
  `q7` tinyint(1) DEFAULT NULL,
  `q8` tinyint(1) DEFAULT NULL,
  `q9` tinyint(1) DEFAULT NULL,
  `q10` tinyint(1) DEFAULT NULL,
  `q11` tinyint(1) DEFAULT NULL,
  `specific_issue` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_histories`
--

LOCK TABLES `medical_histories` WRITE;
/*!40000 ALTER TABLE `medical_histories` DISABLE KEYS */;
INSERT INTO `medical_histories` VALUES (85,893,'2018-05-19 04:12:26','2018-05-19 04:12:26','2018-01-08',1,0,1,1,1,1,0,0,0,1,1,'D\'oh!'),(86,894,'2018-05-19 04:12:28','2018-05-19 04:12:28','2018-03-26',0,0,1,0,1,0,0,1,0,0,1,'I\'m not normally a praying man, but if you\'re up there, please save me, Superman!'),(87,897,'2018-05-19 04:12:29','2018-05-19 04:12:29','2018-03-10',0,1,0,1,1,0,0,1,0,0,1,'To alcohol! The cause of, and solution to, all of life\'s problems.'),(88,898,'2018-05-19 04:12:31','2018-05-19 04:12:31','2018-03-28',0,1,0,1,1,1,1,1,0,0,1,'I\'m not normally a praying man, but if you\'re up there, please save me, Superman!'),(89,901,'2018-05-19 04:12:33','2018-05-19 04:12:33','2018-04-22',0,0,1,0,1,1,0,0,0,0,0,'When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!'),(90,902,'2018-05-19 04:12:34','2018-05-19 04:12:34','2018-01-15',1,0,0,1,0,0,1,0,0,0,0,'Sorry, Mom, the mob has spoken.'),(91,905,'2018-05-19 04:12:36','2018-05-19 04:12:36','2018-02-11',1,1,1,1,0,0,0,0,0,1,1,'Go out on a Tuesday? Who am I, Charlie Sheen?'),(92,906,'2018-05-19 04:12:38','2018-05-19 04:12:38','2017-12-28',0,1,0,1,0,1,0,0,1,0,1,'It takes two to lie: one to lie and one to listen.'),(93,909,'2018-05-19 04:12:41','2018-05-19 04:12:41','2018-04-06',1,1,1,1,0,1,1,0,0,1,0,'Marriage is like a coffin and each kid is another nail.'),(94,910,'2018-05-19 04:12:44','2018-05-19 04:12:44','2018-04-03',1,1,1,1,0,0,0,0,1,0,1,'It takes two to lie: one to lie and one to listen.'),(95,921,'2018-05-19 04:12:47','2018-05-19 04:12:47','2018-03-31',1,1,0,1,0,0,0,1,0,1,1,'To alcohol! The cause of, and solution to, all of life\'s problems.');
/*!40000 ALTER TABLE `medical_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `scheduled_date` date DEFAULT NULL,
  `completion_percentage` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comments` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `workout_type` varchar(255) DEFAULT NULL,
  `fitness_test_id` int(11) DEFAULT NULL,
  `exercise_type` varchar(15) DEFAULT NULL,
  `exercise_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_schedules_on_user_id` (`user_id`),
  KEY `index_schedules_on_scheduled_date` (`scheduled_date`),
  KEY `index_schedules_on_fitness_test_id` (`fitness_test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1099 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1036,893,'2018-05-14',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Strength',138,'StrengthWorkout',24),(1037,893,'2018-05-15',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Interval',138,'Workout',534),(1038,893,'2018-05-16',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Strength',138,'StrengthWorkout',24),(1039,893,'2018-05-17',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Tempo',138,'Workout',533),(1040,893,'2018-05-18',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Strength',138,'StrengthWorkout',24),(1041,893,'2018-05-19',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Long',138,'Workout',535),(1042,893,'2018-05-20',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Strength',138,'StrengthWorkout',24),(1043,893,'2018-05-21',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Strength',138,'StrengthWorkout',24),(1044,893,'2018-05-22',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Speed',138,'Workout',536),(1045,893,'2018-05-23',0,NULL,NULL,'2018-05-19 04:14:06','2018-05-19 04:14:06','Strength',138,'StrengthWorkout',24),(1046,893,'2018-05-24',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Tempo',138,'Workout',533),(1047,893,'2018-05-25',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1048,893,'2018-05-26',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Long',138,'Workout',535),(1049,893,'2018-05-27',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1050,893,'2018-05-28',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1051,893,'2018-05-29',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Interval',138,'Workout',534),(1052,893,'2018-05-30',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1053,893,'2018-05-31',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Tempo',138,'Workout',533),(1054,893,'2018-06-01',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1055,893,'2018-06-02',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Long',138,'Workout',535),(1056,893,'2018-06-03',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1057,893,'2018-06-04',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1058,893,'2018-06-05',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Speed',138,'Workout',536),(1059,893,'2018-06-06',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1060,893,'2018-06-07',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Tempo',138,'Workout',533),(1061,893,'2018-06-08',0,NULL,NULL,'2018-05-19 04:14:07','2018-05-19 04:14:07','Strength',138,'StrengthWorkout',24),(1062,893,'2018-06-09',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Long',138,'Workout',535),(1063,893,'2018-06-10',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Strength',138,'StrengthWorkout',24),(1064,893,'2018-06-11',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Strength',138,'StrengthWorkout',24),(1065,893,'2018-06-12',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Interval',138,'Workout',534),(1066,893,'2018-06-13',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Strength',138,'StrengthWorkout',24),(1067,893,'2018-06-14',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Tempo',138,'Workout',533),(1068,893,'2018-06-15',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Strength',138,'StrengthWorkout',24),(1069,893,'2018-06-16',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Long',138,'Workout',535),(1070,893,'2018-06-17',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Strength',138,'StrengthWorkout',24),(1071,893,'2018-06-18',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Strength',138,'StrengthWorkout',24),(1072,893,'2018-06-19',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Speed',138,'Workout',536),(1073,893,'2018-06-20',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Strength',138,'StrengthWorkout',24),(1074,893,'2018-06-21',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Tempo',138,'Workout',533),(1075,893,'2018-06-22',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Strength',138,'StrengthWorkout',24),(1076,893,'2018-06-23',0,NULL,NULL,'2018-05-19 04:14:08','2018-05-19 04:14:08','Long',138,'Workout',535),(1077,893,'2018-06-24',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1078,893,'2018-06-25',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1079,893,'2018-06-26',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Interval',138,'Workout',534),(1080,893,'2018-06-27',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1081,893,'2018-06-28',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Tempo',138,'Workout',533),(1082,893,'2018-06-29',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1083,893,'2018-06-30',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Long',138,'Workout',535),(1084,893,'2018-07-01',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1085,893,'2018-07-02',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1086,893,'2018-07-03',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Speed',138,'Workout',536),(1087,893,'2018-07-04',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1088,893,'2018-07-05',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Tempo',138,'Workout',533),(1089,893,'2018-07-06',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1090,893,'2018-07-07',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Long',138,'Workout',535),(1091,893,'2018-07-08',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1092,893,'2018-07-09',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Strength',138,'StrengthWorkout',24),(1093,893,'2018-07-10',0,NULL,NULL,'2018-05-19 04:14:09','2018-05-19 04:14:09','Interval',138,'Workout',534),(1094,893,'2018-07-11',0,NULL,NULL,'2018-05-19 04:14:10','2018-05-19 04:14:10','Strength',138,'StrengthWorkout',24),(1095,893,'2018-07-12',0,NULL,NULL,'2018-05-19 04:14:10','2018-05-19 04:14:10','Tempo',138,'Workout',533),(1096,893,'2018-07-13',0,NULL,NULL,'2018-05-19 04:14:10','2018-05-19 04:14:10','Strength',138,'StrengthWorkout',24),(1097,893,'2018-07-14',0,NULL,NULL,'2018-05-19 04:14:10','2018-05-19 04:14:10','Long',138,'Workout',535),(1098,893,'2018-07-15',0,NULL,NULL,'2018-05-19 04:14:10','2018-05-19 04:14:10','Strength',138,'StrengthWorkout',24);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20180406102442'),('20180406102941'),('20180406103637'),('20180406103951'),('20180406104215'),('20180406105222'),('20180406110059'),('20180406113535'),('20180406113932'),('20180406114132'),('20180406120927'),('20180406121625'),('20180407082008'),('20180407082356'),('20180407083816'),('20180407112031'),('20180407120834'),('20180407122438'),('20180407122722'),('20180407143459'),('20180407144036'),('20180408070308'),('20180411100408'),('20180411121202'),('20180412054728'),('20180412061017'),('20180414132153'),('20180416155646'),('20180419101651'),('20180421072336'),('20180421150338'),('20180421153136'),('20180421162450'),('20180423053506'),('20180424025934'),('20180519034603');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strength_workouts`
--

DROP TABLE IF EXISTS `strength_workouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strength_workouts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` int(11) DEFAULT NULL,
  `plank` int(11) DEFAULT NULL,
  `pushups` int(11) DEFAULT NULL,
  `one_leg_raise` int(11) DEFAULT NULL,
  `leg_raise_both` int(11) DEFAULT NULL,
  `squats` int(11) DEFAULT NULL,
  `crunches` int(11) DEFAULT NULL,
  `superman` int(11) DEFAULT NULL,
  `is_target` tinyint(1) DEFAULT NULL,
  `current` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_strength_workouts_on_current` (`current`),
  KEY `index_strength_workouts_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strength_workouts`
--

LOCK TABLES `strength_workouts` WRITE;
/*!40000 ALTER TABLE `strength_workouts` DISABLE KEYS */;
INSERT INTO `strength_workouts` VALUES (23,1,1,1,1,1,1,1,1,1,1,893,'2018-05-19 04:12:26','2018-05-19 04:12:26'),(24,1,1,1,1,1,1,1,1,0,1,893,'2018-05-19 04:12:26','2018-05-19 04:12:26'),(25,1,1,1,1,1,1,1,1,1,1,894,'2018-05-19 04:12:28','2018-05-19 04:12:28'),(26,1,1,1,1,1,1,1,1,0,1,894,'2018-05-19 04:12:28','2018-05-19 04:12:28'),(27,1,1,1,1,1,1,1,1,1,1,897,'2018-05-19 04:12:30','2018-05-19 04:12:30'),(28,1,1,1,1,1,1,1,1,0,1,897,'2018-05-19 04:12:30','2018-05-19 04:12:30'),(29,1,1,1,1,1,1,1,1,1,1,898,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(30,1,1,1,1,1,1,1,1,0,1,898,'2018-05-19 04:12:31','2018-05-19 04:12:31'),(31,1,1,1,1,1,1,1,1,1,1,901,'2018-05-19 04:12:33','2018-05-19 04:12:33'),(32,1,1,1,1,1,1,1,1,0,1,901,'2018-05-19 04:12:33','2018-05-19 04:12:33'),(33,1,1,1,1,1,1,1,1,1,1,902,'2018-05-19 04:12:35','2018-05-19 04:12:35'),(34,1,1,1,1,1,1,1,1,0,1,902,'2018-05-19 04:12:35','2018-05-19 04:12:35'),(35,1,1,1,1,1,1,1,1,1,1,905,'2018-05-19 04:12:37','2018-05-19 04:12:37'),(36,1,1,1,1,1,1,1,1,0,1,905,'2018-05-19 04:12:37','2018-05-19 04:12:37'),(37,1,1,1,1,1,1,1,1,1,1,906,'2018-05-19 04:12:39','2018-05-19 04:12:39'),(38,1,1,1,1,1,1,1,1,0,1,906,'2018-05-19 04:12:39','2018-05-19 04:12:39'),(39,1,1,1,1,1,1,1,1,1,1,909,'2018-05-19 04:12:42','2018-05-19 04:12:42'),(40,1,1,1,1,1,1,1,1,0,1,909,'2018-05-19 04:12:42','2018-05-19 04:12:42'),(41,1,1,1,1,1,1,1,1,1,1,910,'2018-05-19 04:12:45','2018-05-19 04:12:45'),(42,1,1,1,1,1,1,1,1,0,1,910,'2018-05-19 04:12:45','2018-05-19 04:12:45'),(43,1,1,1,1,1,1,1,1,1,1,921,'2018-05-19 04:12:48','2018-05-19 04:12:48'),(44,1,1,1,1,1,1,1,1,0,1,921,'2018-05-19 04:12:48','2018-05-19 04:12:48');
/*!40000 ALTER TABLE `strength_workouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stress_tests`
--

DROP TABLE IF EXISTS `stress_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stress_tests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `unexpected_upset` varchar(20) DEFAULT NULL,
  `unable_to_control` varchar(20) DEFAULT NULL,
  `nervous` varchar(20) DEFAULT NULL,
  `confident` varchar(20) DEFAULT NULL,
  `things_going_right` varchar(20) DEFAULT NULL,
  `cannot_cope` varchar(20) DEFAULT NULL,
  `control_irritation` varchar(20) DEFAULT NULL,
  `top_of_things` varchar(20) DEFAULT NULL,
  `anger` varchar(20) DEFAULT NULL,
  `difficulties_piling` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `score_interpretation` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stress_tests_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stress_tests`
--

LOCK TABLES `stress_tests` WRITE;
/*!40000 ALTER TABLE `stress_tests` DISABLE KEYS */;
INSERT INTO `stress_tests` VALUES (38,'Never','Fairly Often','Fairly Often','Sometimes','Never','Fairly Often','Never','Very Often','Never','Never',893,'2018-05-18',19,'Moderate','2018-05-19 04:12:26','2018-05-19 04:12:26'),(39,'Fairly Often','Sometimes','Sometimes','Fairly Often','Never','Very Often','Fairly Often','Very Often','Fairly Often','Almost Never',894,'2018-05-18',21,'Moderate','2018-05-19 04:12:28','2018-05-19 04:12:28'),(40,'Never','Fairly Often','Very Often','Fairly Often','Sometimes','Very Often','Sometimes','Very Often','Fairly Often','Very Often',897,'2018-05-19',23,'Moderate','2018-05-19 04:12:30','2018-05-19 04:12:30'),(41,'Never','Very Often','Sometimes','Sometimes','Never','Almost Never','Almost Never','Fairly Often','Sometimes','Almost Never',898,'2018-05-15',20,'Moderate','2018-05-19 04:12:31','2018-05-19 04:12:31'),(42,'Never','Almost Never','Fairly Often','Never','Fairly Often','Fairly Often','Very Often','Sometimes','Fairly Often','Almost Never',901,'2018-05-15',18,'Moderate','2018-05-19 04:12:33','2018-05-19 04:12:33'),(43,'Very Often','Sometimes','Fairly Often','Fairly Often','Very Often','Almost Never','Almost Never','Fairly Often','Fairly Often','Sometimes',902,'2018-05-19',20,'Moderate','2018-05-19 04:12:35','2018-05-19 04:12:35'),(44,'Very Often','Almost Never','Almost Never','Fairly Often','Very Often','Fairly Often','Almost Never','Sometimes','Sometimes','Very Often',905,'2018-05-17',21,'Moderate','2018-05-19 04:12:36','2018-05-19 04:12:36'),(45,'Sometimes','Very Often','Never','Fairly Often','Never','Never','Never','Very Often','Almost Never','Never',906,'2018-05-17',16,'Moderate','2018-05-19 04:12:39','2018-05-19 04:12:39'),(46,'Almost Never','Never','Very Often','Very Often','Fairly Often','Never','Sometimes','Never','Almost Never','Very Often',909,'2018-05-19',17,'Moderate','2018-05-19 04:12:41','2018-05-19 04:12:41'),(47,'Sometimes','Almost Never','Sometimes','Never','Very Often','Fairly Often','Sometimes','Never','Sometimes','Almost Never',910,'2018-05-16',21,'Moderate','2018-05-19 04:12:44','2018-05-19 04:12:44'),(48,'Fairly Often','Almost Never','Very Often','Almost Never','Very Often','Very Often','Fairly Often','Never','Fairly Often','Sometimes',921,'2018-05-17',25,'Moderate','2018-05-19 04:12:47','2018-05-19 04:12:47');
/*!40000 ALTER TABLE `stress_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `targets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `fat_percentage` float DEFAULT NULL,
  `body_age` int(11) DEFAULT NULL,
  `bmi` float DEFAULT NULL,
  `rm` float DEFAULT NULL,
  `visc_fat` float DEFAULT NULL,
  `sc_fat` float DEFAULT NULL,
  `muscle_percentage` float DEFAULT NULL,
  `fat_kg` float DEFAULT NULL,
  `muscle_kg` float DEFAULT NULL,
  `other_kg` float DEFAULT NULL,
  `fat_loss` float DEFAULT NULL,
  `muscle_gain` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_targets_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
INSERT INTO `targets` VALUES (141,'2018-05-25','2018-06-25',67,20,56,73,101,15,20,16,18,10,14,3,9,893,'2018-05-19 04:12:25','2018-05-19 04:12:25'),(142,'2018-05-12','2018-06-12',83,24,43,104,112,15,20,13,15,19,19,9,1,894,'2018-05-19 04:12:27','2018-05-19 04:12:27'),(143,'2018-05-18','2018-06-18',93,20,24,61,56,17,12,20,14,11,13,9,1,897,'2018-05-19 04:12:29','2018-05-19 04:12:29'),(144,'2018-05-26','2018-06-26',80,24,42,46,73,10,11,11,18,16,19,6,5,898,'2018-05-19 04:12:30','2018-05-19 04:12:30'),(145,'2018-05-21','2018-06-21',108,31,60,92,50,20,10,13,15,10,18,9,6,901,'2018-05-19 04:12:32','2018-05-19 04:12:32'),(146,'2018-05-16','2018-06-16',108,20,28,71,77,19,14,14,17,20,15,4,7,902,'2018-05-19 04:12:33','2018-05-19 04:12:33'),(147,'2018-05-21','2018-06-21',51,33,55,97,60,12,17,10,13,17,17,10,0,905,'2018-05-19 04:12:35','2018-05-19 04:12:35'),(148,'2018-05-25','2018-06-25',120,21,50,79,48,19,13,11,18,12,12,6,10,906,'2018-05-19 04:12:37','2018-05-19 04:12:37'),(149,'2018-05-16','2018-06-16',118,29,28,60,115,17,16,16,10,11,10,4,6,909,'2018-05-19 04:12:39','2018-05-19 04:12:39'),(150,'2018-05-14','2018-06-14',91,21,25,86,52,16,10,17,14,11,15,10,2,910,'2018-05-19 04:12:43','2018-05-19 04:12:43'),(151,'2018-05-12','2018-06-12',49,20,20,104,118,14,15,19,14,12,14,9,9,921,'2018-05-19 04:12:45','2018-05-19 04:12:45');
/*!40000 ALTER TABLE `targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_stress_tests`
--

DROP TABLE IF EXISTS `user_stress_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_stress_tests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `stress_test_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_stress_tests_on_test_id` (`test_id`),
  KEY `index_user_stress_tests_on_stress_test_id` (`stress_test_id`),
  KEY `index_user_stress_tests_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_stress_tests`
--

LOCK TABLES `user_stress_tests` WRITE;
/*!40000 ALTER TABLE `user_stress_tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_stress_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `birth_year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` varchar(15) DEFAULT NULL,
  `phone` varchar(10) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `provider` varchar(255) NOT NULL DEFAULT 'email',
  `uid` varchar(255) NOT NULL,
  `tokens` text,
  `accept_terms` tinyint(1) DEFAULT NULL,
  `goals_setup` tinyint(1) DEFAULT NULL,
  `initial_test_completed` tinyint(1) DEFAULT NULL,
  `medical_setup` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_uid_and_provider` (`uid`,`provider`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  KEY `index_users_on_company_id` (`company_id`),
  KEY `index_users_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=923 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (879,'thimmaiah@yahoo.com','Mohith','Thimmaiah','M',1975,'2018-04-24 03:00:28','2018-04-24 03:10:35','Runner','8887257121','$2a$11$4OygwnZWzki6DtZ4rtxikO05flZu43N6da2cJBSu3c/RdfbUfYmma',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,-1,'2018-04-24 03:10:35','zbsFHnLMHQyw6d8_vZPp',NULL,'2018-04-24 03:00:28','email','thimmaiah@yahoo.com','{}',1,NULL,NULL,NULL),(891,'admin1@gmail.com','Edd','Monahan','F',2009,'2018-05-19 04:12:13','2018-05-19 04:12:13','Company Admin','2125555590','$2a$11$7SOelOPQOmc/5jKKx0uY.uIVSOrUfFl1Op6FmcLKHssnbNg9dCbFi',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,191,NULL,NULL,'2018-05-19 04:12:12','2018-05-19 04:12:12','email','admin1@gmail.com','{}',1,1,NULL,1),(892,'admin2@gmail.com','Adah','Rowe','M',1970,'2018-05-19 04:12:13','2018-05-19 04:12:13','Company Admin','2125555929','$2a$11$6JOu.cTLmHv7856WUYCz/OxXLv7MXQqGKJq4po3yq7S3dVCaxBgnG',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,191,NULL,NULL,'2018-05-19 04:12:13','2018-05-19 04:12:13','email','admin2@gmail.com','{}',1,1,NULL,1),(893,'runner3.191@gmail.com','Brendan','MacGyver','F',1975,'2018-05-19 04:12:13','2018-06-09 04:10:05','Runner','2125555332','$2a$11$2vLeo/bPP7/2rc7WH1eOheEtAvmC0/A6Q9cc3rpvg2.fMOhMjlSMG',NULL,NULL,NULL,7,'2018-06-09 04:05:02','2018-05-19 04:13:08','127.0.0.1','127.0.0.1',191,NULL,NULL,'2018-05-19 04:12:13','2018-05-19 04:12:13','email','runner3.191@gmail.com','{\"bGDGecvYLLXSgE9xKaIw8A\":{\"token\":\"$2a$10$D6WFZuyyt8TBIv2XBc0TcOwvuITpBl5nKXJ5pCXYuqEaJ9QZE5vti\",\"expiry\":1529726897,\"last_token\":\"$2a$10$twyzqte/w4kx/shsbarZ7OuOmgDcC5K8rxMD1lVOAeQbCTrnvqaN2\",\"updated_at\":\"2018-06-09T09:38:17.423+05:30\"},\"ar-zOsV2EhzZkXR9gulFdQ\":{\"token\":\"$2a$10$VFBjXY24J6trZUhYYSOZD.n2cDoqvcr3BdDDegtA0737QlX1Ear8u\",\"expiry\":1529726764,\"last_token\":\"$2a$10$wpG2VzrzvE2o9aoFXw.ar.faO4fInHaKwYDf1KC7sPhw9Y5B8wxri\",\"updated_at\":\"2018-06-09T09:36:05.779+05:30\"},\"f0DLUvyNELzVnvc2KGowUQ\":{\"token\":\"$2a$10$FDhBllJwZnalDWTXE.AWheUJ62ps/lfaAIfqERpcYSjBBWATQMNsS\",\"expiry\":1529727001,\"last_token\":\"$2a$10$tC9.BJHKjGi3trYeqGqZD.Eu8.NdKZTBzaAjQUPoAMNS20nBmGN4K\",\"updated_at\":\"2018-06-09T09:40:05.028+05:30\"}}',1,1,1,1),(894,'runner4.191@gmail.com','Sigurd','Daugherty','F',1966,'2018-05-19 04:12:14','2018-05-19 04:12:27','Runner','2125555756','$2a$11$7HK/zbAWC4nBOp3RC57W2uH.jCZRxcpnKR4E/0pfamftd5c4r3Wi.',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,191,NULL,NULL,'2018-05-19 04:12:14','2018-05-19 04:12:14','email','runner4.191@gmail.com','{}',1,1,1,1),(895,'admin5@gmail.com','Adolf','Macejkovic','F',1982,'2018-05-19 04:12:14','2018-05-19 04:12:14','Company Admin','2125555801','$2a$11$rh4aGe9/F2EUqNhknsihuOWWH9jLJe9/exluO6zTrwg9B4SMXhJFC',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,192,NULL,NULL,'2018-05-19 04:12:14','2018-05-19 04:12:14','email','admin5@gmail.com','{}',1,1,NULL,1),(896,'admin6@gmail.com','Axel','Kuhic','F',1997,'2018-05-19 04:12:14','2018-05-19 04:12:14','Company Admin','2125555264','$2a$11$GbqVcsFaEXDr0WCXU5/cM.ghO6P0Fe95NvxRSaOYX30ntMBCnTd72',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,192,NULL,NULL,'2018-05-19 04:12:14','2018-05-19 04:12:14','email','admin6@gmail.com','{}',1,1,NULL,1),(897,'runner7.192@gmail.com','Yazmin','Davis','M',1980,'2018-05-19 04:12:15','2018-05-19 04:12:29','Runner','2125555979','$2a$11$WWtxZNPGkackkUsHIkTS7eQxRZURVa6iCBt7QyMfxvsgEJ6E9kMdG',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,192,NULL,NULL,'2018-05-19 04:12:15','2018-05-19 04:12:15','email','runner7.192@gmail.com','{}',1,1,1,1),(898,'runner8.192@gmail.com','Keara','Nikolaus','M',2006,'2018-05-19 04:12:15','2018-05-19 04:12:30','Runner','2125555870','$2a$11$vUL12KOGVmaixBsyz/Kyk.zv0BMbqLZvA8h3.HlCRHgPjYPMjh1qC',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,192,NULL,NULL,'2018-05-19 04:12:15','2018-05-19 04:12:15','email','runner8.192@gmail.com','{}',1,1,1,1),(899,'admin9@gmail.com','Carlee','Collins','F',1997,'2018-05-19 04:12:16','2018-05-19 04:12:16','Company Admin','2125555930','$2a$11$xYHLvA4E67SxV2ZKnGwHoufqkqA1K/AvoymJwea0n3L18nuOT8RWu',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,193,NULL,NULL,'2018-05-19 04:12:15','2018-05-19 04:12:15','email','admin9@gmail.com','{}',1,1,NULL,1),(900,'admin10@gmail.com','Elena','Koepp','M',1980,'2018-05-19 04:12:16','2018-05-19 04:12:16','Company Admin','2125555600','$2a$11$4cdlSAp19YPaYVY0deqH8.wpJRfO5hd3ieyHoLtROW0LpUjqHsHIW',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,193,NULL,NULL,'2018-05-19 04:12:16','2018-05-19 04:12:16','email','admin10@gmail.com','{}',1,1,NULL,1),(901,'runner11.193@gmail.com','Evans','Jerde','F',2006,'2018-05-19 04:12:16','2018-05-19 04:12:32','Runner','2125555781','$2a$11$6H1dyGQKMvhJu4x9P9Whk.VlxQvsGphrO0i7Ck5lLmhUHcnGuYWBK',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,193,NULL,NULL,'2018-05-19 04:12:16','2018-05-19 04:12:16','email','runner11.193@gmail.com','{}',1,1,1,1),(902,'runner12.193@gmail.com','Yazmin','Lowe','M',1968,'2018-05-19 04:12:17','2018-05-19 04:12:34','Runner','2125555985','$2a$11$85OsOuAOLyEne8wokvvM1e46p/2ky19M8Lkpad38of0pV9Ps04J4m',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,193,NULL,NULL,'2018-05-19 04:12:17','2018-05-19 04:12:17','email','runner12.193@gmail.com','{}',1,1,1,1),(903,'admin13@gmail.com','Cassie','Trantow','M',2000,'2018-05-19 04:12:17','2018-05-19 04:12:17','Company Admin','2125555780','$2a$11$CB0zoqDEd59W1v67eBOdZuVwLvJ42KHG5u9YAa7Pvh5iIqhkrBdsW',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,194,NULL,NULL,'2018-05-19 04:12:17','2018-05-19 04:12:17','email','admin13@gmail.com','{}',1,1,NULL,1),(904,'admin14@gmail.com','Larue','Dickinson','M',1980,'2018-05-19 04:12:17','2018-05-19 04:12:17','Company Admin','2125555735','$2a$11$fruBA8GP5AkaMS6CqEpBbO2iSg4vlmfNJc4F8wMFB6jfJKaLbmVY6',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,194,NULL,NULL,'2018-05-19 04:12:17','2018-05-19 04:12:17','email','admin14@gmail.com','{}',1,1,NULL,1),(905,'runner15.194@gmail.com','Nola','Ebert','M',2003,'2018-05-19 04:12:18','2018-05-19 04:12:35','Runner','2125555738','$2a$11$E4wBIC4DwY5XuX9J4Osx.ueRrztVX71uNyLmAoHwfIzZfZzuLb3Wi',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,194,NULL,NULL,'2018-05-19 04:12:18','2018-05-19 04:12:18','email','runner15.194@gmail.com','{}',1,1,1,1),(906,'runner16.194@gmail.com','King','Pouros','M',1966,'2018-05-19 04:12:18','2018-05-19 04:12:37','Runner','2125555906','$2a$11$aKI8M27Tokd0Il4M.1ZcZ.OqE3FkIXdBuBpwwlmeVX/5tjUTtdISG',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,194,NULL,NULL,'2018-05-19 04:12:18','2018-05-19 04:12:18','email','runner16.194@gmail.com','{}',1,1,1,1),(907,'admin17@gmail.com','Cruz','Kohler','F',1993,'2018-05-19 04:12:19','2018-05-19 04:12:19','Company Admin','2125555428','$2a$11$neL69BUDcNKoNtHY/lkNmuNJMHUK3mT/fDV1I1rEJNUoDstwVbDGO',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,195,NULL,NULL,'2018-05-19 04:12:18','2018-05-19 04:12:18','email','admin17@gmail.com','{}',1,1,NULL,1),(908,'admin18@gmail.com','Moises','Quitzon','M',1977,'2018-05-19 04:12:19','2018-05-19 04:12:19','Company Admin','2125555908','$2a$11$.uVSSPU9L.VYaxBzpNHXJOL2.6WZtAlrriQGgawFrnPY/S/G4SEMu',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,195,NULL,NULL,'2018-05-19 04:12:19','2018-05-19 04:12:19','email','admin18@gmail.com','{}',1,1,NULL,1),(909,'runner19.195@gmail.com','Domenica','Powlowski','M',1991,'2018-05-19 04:12:19','2018-05-19 04:12:40','Runner','2125555805','$2a$11$xH2UDU1mFvXOUDyLBCtnuu5zLFs9LHT11ZccUb2oPk3il.v/mpvCG',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,195,NULL,NULL,'2018-05-19 04:12:19','2018-05-19 04:12:19','email','runner19.195@gmail.com','{}',1,1,1,1),(910,'runner20.195@gmail.com','Itzel','Dickens','M',1991,'2018-05-19 04:12:20','2018-05-19 04:12:43','Runner','2125555205','$2a$11$WRyW47lMMaxvm4nJ8IF8ieySgtL32.lSUlKUNRZ1MfX1XP/1qmXKe',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,195,NULL,NULL,'2018-05-19 04:12:20','2018-05-19 04:12:20','email','runner20.195@gmail.com','{}',1,1,1,1),(911,'coach1@gmail.com','Etha','Mraz','M',1999,'2018-05-19 04:12:20','2018-05-19 04:12:20','Coach','2125555606','$2a$11$8o7MzOpMe8wjqtLLAUlV/OohFWC/4HXBnk/BKuf.ecdCQsv1c9Flm',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:20','2018-05-19 04:12:20','email','coach1@gmail.com','{}',1,1,NULL,1),(912,'coach2@gmail.com','Talia','Cormier','F',1983,'2018-05-19 04:12:21','2018-05-19 04:12:21','Coach','2125555825','$2a$11$7QRqZPZamdU676PMMQgbae5rge8f1NoOQl3Hv9kK7VA8/we/6FhNO',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:20','2018-05-19 04:12:20','email','coach2@gmail.com','{}',1,1,NULL,1),(913,'coach3@gmail.com','Ellsworth','Bergstrom','M',1983,'2018-05-19 04:12:21','2018-05-19 04:12:21','Coach','2125555669','$2a$11$96ZoRywN.33NiU1Ug3eIruhn.Qx.WVBOlvdPY6Vz8c3.WS39bjrqW',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:21','2018-05-19 04:12:21','email','coach3@gmail.com','{}',1,1,NULL,1),(914,'coach4@gmail.com','Joanne','Koss','F',1975,'2018-05-19 04:12:21','2018-05-19 04:12:21','Coach','2125555749','$2a$11$dgfojkKmmIIWLblbyMgiyeHyRQPmgNVYUpKW9RCEramuvC8nd.zaW',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:21','2018-05-19 04:12:21','email','coach4@gmail.com','{}',1,1,NULL,1),(915,'coach5@gmail.com','Marie','Trantow','M',2003,'2018-05-19 04:12:22','2018-05-19 04:12:22','Coach','2125555688','$2a$11$aHev/FCT4k/BXcxIqetwyO2CeksGEN3YlQEhYATLTr6iDn9L5sBsy',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:22','2018-05-19 04:12:22','email','coach5@gmail.com','{}',1,1,NULL,1),(916,'coach6@gmail.com','Abbie','Huel','M',1998,'2018-05-19 04:12:22','2018-05-19 04:12:22','Coach','2125555317','$2a$11$sw4VuljY8vh2j7wap5bC9.VDzYQwKhhYu2cMJ4prRxkrwaRs2do96',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:22','2018-05-19 04:12:22','email','coach6@gmail.com','{}',1,1,NULL,1),(917,'coach7@gmail.com','Katelyn','Williamson','M',1969,'2018-05-19 04:12:23','2018-05-19 04:12:23','Coach','2125555611','$2a$11$HUrq/Ha8tzcMICocXmFmSeiqL/tVi3nTjbB2j/exX2j.PpkXn9L3K',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:22','2018-05-19 04:12:22','email','coach7@gmail.com','{}',1,1,NULL,1),(918,'coach8@gmail.com','Robyn','Satterfield','M',1983,'2018-05-19 04:12:23','2018-05-19 04:12:23','Coach','2125555907','$2a$11$NO7CBsUPBsRjgOaOFscyROCLQr0QsUzcIOdv04y8XUTTSzZppLf/G',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:23','2018-05-19 04:12:23','email','coach8@gmail.com','{}',1,1,NULL,1),(919,'coach9@gmail.com','Obie','Rice','F',2008,'2018-05-19 04:12:23','2018-05-19 04:12:23','Coach','2125555797','$2a$11$4bNt0uTHTlzBbmKrkS0vSenwWYBeRpKjrW1m/LLHFunI57zNQD5l6',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:23','2018-05-19 04:12:23','email','coach9@gmail.com','{}',1,1,NULL,1),(920,'coach10@gmail.com','Devan','Bosco','F',1988,'2018-05-19 04:12:24','2018-05-19 04:12:24','Coach','2125555764','$2a$11$Ehy.sguk6pcj6N8UmiXFEuRe30Xf6Wik/aEugw.v0shSknBYzt6Hq',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:24','2018-05-19 04:12:24','email','coach10@gmail.com','{}',1,1,NULL,1),(921,'runner@gmail.com','Runner','Test','F',1975,'2018-05-19 04:12:24','2018-05-19 04:12:45','Runner','2125555171','$2a$11$Zf/CCuBlxoyaQMIVoTN1huilwJcChPzuMmNbDnBtfObDcTZYetmNm',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:24','2018-05-19 04:12:24','email','runner@gmail.com','{}',1,1,1,1),(922,'root@ubernurse.com','Lawson','Shanahan','F',2000,'2018-05-19 04:12:25','2018-05-19 04:12:25','Super User','2125555410','$2a$11$hItSPP.qBnb9w7Lj0tSq1uh.8GkdRFRtWEILwwnElNbdhNwufD8Cy',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-19 04:12:24','2018-05-19 04:12:24','email','root@ubernurse.com','{}',1,1,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(191) NOT NULL,
  `item_id` int(11) NOT NULL,
  `event` varchar(255) NOT NULL,
  `whodunnit` varchar(255) DEFAULT NULL,
  `object` longtext,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_item_type_and_item_id` (`item_type`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workouts`
--

DROP TABLE IF EXISTS `workouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workouts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `workout_type` varchar(255) DEFAULT NULL,
  `activity_time` int(11) DEFAULT NULL,
  `activity_speed` float DEFAULT NULL,
  `recovery_time` int(11) DEFAULT NULL,
  `repeats` int(11) DEFAULT NULL,
  `total_duration` int(11) DEFAULT NULL,
  `current` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `recovery_speed` float DEFAULT NULL,
  `fitness_test_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_workouts_on_user_id` (`user_id`),
  KEY `index_workouts_on_current` (`current`),
  KEY `index_workouts_on_fitness_test_id` (`fitness_test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (533,893,'Tempo',3,9,3,8,90,1,'2018-05-19 04:12:26','2018-05-19 04:12:26',5,138),(534,893,'Interval',8,10,2,8,40,1,'2018-05-19 04:12:26','2018-05-19 04:12:26',4,138),(535,893,'Long',3,8,2,8,60,1,'2018-05-19 04:12:26','2018-05-19 04:12:26',5,138),(536,893,'Speed',10,10,3,8,90,1,'2018-05-19 04:12:26','2018-05-19 04:12:26',4,138),(537,894,'Tempo',1,8,3,8,90,1,'2018-05-19 04:12:28','2018-05-19 04:12:28',5,139),(538,894,'Interval',1,9,5,4,45,1,'2018-05-19 04:12:28','2018-05-19 04:12:28',4,139),(539,894,'Long',10,10,3,4,90,1,'2018-05-19 04:12:28','2018-05-19 04:12:28',4,139),(540,894,'Speed',1,10,3,8,60,1,'2018-05-19 04:12:28','2018-05-19 04:12:28',5,139),(541,897,'Tempo',3,7,5,9,90,1,'2018-05-19 04:12:30','2018-05-19 04:12:30',5,140),(542,897,'Interval',3,7,5,8,60,1,'2018-05-19 04:12:30','2018-05-19 04:12:30',4,140),(543,897,'Long',3,7,3,4,45,1,'2018-05-19 04:12:30','2018-05-19 04:12:30',4,140),(544,897,'Speed',10,7,2,8,45,1,'2018-05-19 04:12:30','2018-05-19 04:12:30',4,140),(545,898,'Tempo',10,8,3,8,40,1,'2018-05-19 04:12:31','2018-05-19 04:12:31',5,141),(546,898,'Interval',10,10,3,8,60,1,'2018-05-19 04:12:31','2018-05-19 04:12:31',4,141),(547,898,'Long',3,10,5,8,40,1,'2018-05-19 04:12:31','2018-05-19 04:12:31',5,141),(548,898,'Speed',10,10,2,4,45,1,'2018-05-19 04:12:31','2018-05-19 04:12:31',5,141),(549,901,'Tempo',8,8,2,8,40,1,'2018-05-19 04:12:33','2018-05-19 04:12:33',4,142),(550,901,'Interval',8,10,5,9,60,1,'2018-05-19 04:12:33','2018-05-19 04:12:33',4,142),(551,901,'Long',1,8,3,4,40,1,'2018-05-19 04:12:33','2018-05-19 04:12:33',5,142),(552,901,'Speed',3,8,5,9,45,1,'2018-05-19 04:12:33','2018-05-19 04:12:33',5,142),(553,902,'Tempo',3,8,2,8,60,1,'2018-05-19 04:12:35','2018-05-19 04:12:35',5,143),(554,902,'Interval',8,9,3,8,60,1,'2018-05-19 04:12:35','2018-05-19 04:12:35',5,143),(555,902,'Long',1,10,2,4,90,1,'2018-05-19 04:12:35','2018-05-19 04:12:35',5,143),(556,902,'Speed',10,9,3,8,60,1,'2018-05-19 04:12:35','2018-05-19 04:12:35',4,143),(557,905,'Tempo',3,8,3,8,60,1,'2018-05-19 04:12:36','2018-05-19 04:12:36',4,144),(558,905,'Interval',10,10,3,8,45,1,'2018-05-19 04:12:37','2018-05-19 04:12:37',4,144),(559,905,'Long',1,9,3,9,40,1,'2018-05-19 04:12:37','2018-05-19 04:12:37',5,144),(560,905,'Speed',10,9,3,8,45,1,'2018-05-19 04:12:37','2018-05-19 04:12:37',4,144),(561,906,'Tempo',1,10,3,8,40,1,'2018-05-19 04:12:39','2018-05-19 04:12:39',5,145),(562,906,'Interval',8,7,3,9,60,1,'2018-05-19 04:12:39','2018-05-19 04:12:39',4,145),(563,906,'Long',3,8,2,8,45,1,'2018-05-19 04:12:39','2018-05-19 04:12:39',4,145),(564,906,'Speed',8,9,3,8,40,1,'2018-05-19 04:12:39','2018-05-19 04:12:39',4,145),(565,909,'Tempo',1,8,3,8,40,1,'2018-05-19 04:12:41','2018-05-19 04:12:41',4,146),(566,909,'Interval',1,8,3,4,90,1,'2018-05-19 04:12:41','2018-05-19 04:12:41',5,146),(567,909,'Long',8,7,2,8,40,1,'2018-05-19 04:12:41','2018-05-19 04:12:41',5,146),(568,909,'Speed',10,8,2,4,45,1,'2018-05-19 04:12:41','2018-05-19 04:12:41',5,146),(569,910,'Tempo',3,8,2,4,45,1,'2018-05-19 04:12:44','2018-05-19 04:12:44',5,147),(570,910,'Interval',10,9,5,8,60,1,'2018-05-19 04:12:44','2018-05-19 04:12:44',5,147),(571,910,'Long',10,7,2,8,45,1,'2018-05-19 04:12:44','2018-05-19 04:12:44',4,147),(572,910,'Speed',10,8,2,8,45,1,'2018-05-19 04:12:44','2018-05-19 04:12:44',5,147),(573,921,'Tempo',3,9,3,9,60,1,'2018-05-19 04:12:47','2018-05-19 04:12:47',4,148),(574,921,'Interval',10,9,2,8,40,1,'2018-05-19 04:12:47','2018-05-19 04:12:47',4,148),(575,921,'Long',8,10,5,4,40,1,'2018-05-19 04:12:47','2018-05-19 04:12:47',4,148),(576,921,'Speed',8,7,3,8,40,1,'2018-05-19 04:12:47','2018-05-19 04:12:47',5,148);
/*!40000 ALTER TABLE `workouts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-09 10:03:51
