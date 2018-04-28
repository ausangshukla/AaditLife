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
) ENGINE=InnoDB AUTO_INCREMENT=673 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardio_profiles`
--

LOCK TABLES `cardio_profiles` WRITE;
/*!40000 ALTER TABLE `cardio_profiles` DISABLE KEYS */;
INSERT INTO `cardio_profiles` VALUES (541,125,849,'2018-04-21',4,114,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(542,125,849,'2018-04-21',5,115,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(543,125,849,'2018-04-21',6,116,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(544,125,849,'2018-04-21',7,117,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(545,125,849,'2018-04-21',8,118,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(546,125,849,'2018-04-21',9,119,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(547,125,849,'2018-04-21',10,120,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(548,125,849,'2018-04-21',11,121,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(549,125,849,'2018-04-21',12,122,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(550,125,849,'2018-04-21',13,123,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(551,125,849,'2018-04-21',14,124,'2018-04-21 16:31:11','2018-04-21 16:31:11'),(552,125,849,'2018-04-21',15,125,'2018-04-21 16:31:11','2018-04-21 16:31:11'),(553,126,850,'2018-04-21',4,114,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(554,126,850,'2018-04-21',5,115,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(555,126,850,'2018-04-21',6,116,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(556,126,850,'2018-04-21',7,117,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(557,126,850,'2018-04-21',8,118,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(558,126,850,'2018-04-21',9,119,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(559,126,850,'2018-04-21',10,120,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(560,126,850,'2018-04-21',11,121,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(561,126,850,'2018-04-21',12,122,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(562,126,850,'2018-04-21',13,123,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(563,126,850,'2018-04-21',14,124,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(564,126,850,'2018-04-21',15,125,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(565,127,853,'2018-04-21',4,114,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(566,127,853,'2018-04-21',5,115,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(567,127,853,'2018-04-21',6,116,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(568,127,853,'2018-04-21',7,117,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(569,127,853,'2018-04-21',8,118,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(570,127,853,'2018-04-21',9,119,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(571,127,853,'2018-04-21',10,120,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(572,127,853,'2018-04-21',11,121,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(573,127,853,'2018-04-21',12,122,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(574,127,853,'2018-04-21',13,123,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(575,127,853,'2018-04-21',14,124,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(576,127,853,'2018-04-21',15,125,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(577,128,854,'2018-04-21',4,114,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(578,128,854,'2018-04-21',5,115,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(579,128,854,'2018-04-21',6,116,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(580,128,854,'2018-04-21',7,117,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(581,128,854,'2018-04-21',8,118,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(582,128,854,'2018-04-21',9,119,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(583,128,854,'2018-04-21',10,120,'2018-04-21 16:31:16','2018-04-21 16:31:16'),(584,128,854,'2018-04-21',11,121,'2018-04-21 16:31:16','2018-04-21 16:31:16'),(585,128,854,'2018-04-21',12,122,'2018-04-21 16:31:16','2018-04-21 16:31:16'),(586,128,854,'2018-04-21',13,123,'2018-04-21 16:31:16','2018-04-21 16:31:16'),(587,128,854,'2018-04-21',14,124,'2018-04-21 16:31:16','2018-04-21 16:31:16'),(588,128,854,'2018-04-21',15,125,'2018-04-21 16:31:16','2018-04-21 16:31:16'),(589,129,857,'2018-04-21',4,114,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(590,129,857,'2018-04-21',5,115,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(591,129,857,'2018-04-21',6,116,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(592,129,857,'2018-04-21',7,117,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(593,129,857,'2018-04-21',8,118,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(594,129,857,'2018-04-21',9,119,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(595,129,857,'2018-04-21',10,120,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(596,129,857,'2018-04-21',11,121,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(597,129,857,'2018-04-21',12,122,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(598,129,857,'2018-04-21',13,123,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(599,129,857,'2018-04-21',14,124,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(600,129,857,'2018-04-21',15,125,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(601,130,858,'2018-04-21',4,114,'2018-04-21 16:31:18','2018-04-21 16:31:18'),(602,130,858,'2018-04-21',5,115,'2018-04-21 16:31:18','2018-04-21 16:31:18'),(603,130,858,'2018-04-21',6,116,'2018-04-21 16:31:18','2018-04-21 16:31:18'),(604,130,858,'2018-04-21',7,117,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(605,130,858,'2018-04-21',8,118,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(606,130,858,'2018-04-21',9,119,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(607,130,858,'2018-04-21',10,120,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(608,130,858,'2018-04-21',11,121,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(609,130,858,'2018-04-21',12,122,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(610,130,858,'2018-04-21',13,123,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(611,130,858,'2018-04-21',14,124,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(612,130,858,'2018-04-21',15,125,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(613,131,861,'2018-04-21',4,114,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(614,131,861,'2018-04-21',5,115,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(615,131,861,'2018-04-21',6,116,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(616,131,861,'2018-04-21',7,117,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(617,131,861,'2018-04-21',8,118,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(618,131,861,'2018-04-21',9,119,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(619,131,861,'2018-04-21',10,120,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(620,131,861,'2018-04-21',11,121,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(621,131,861,'2018-04-21',12,122,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(622,131,861,'2018-04-21',13,123,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(623,131,861,'2018-04-21',14,124,'2018-04-21 16:31:21','2018-04-21 16:31:21'),(624,131,861,'2018-04-21',15,125,'2018-04-21 16:31:21','2018-04-21 16:31:21'),(625,132,862,'2018-04-21',4,114,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(626,132,862,'2018-04-21',5,115,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(627,132,862,'2018-04-21',6,116,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(628,132,862,'2018-04-21',7,117,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(629,132,862,'2018-04-21',8,118,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(630,132,862,'2018-04-21',9,119,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(631,132,862,'2018-04-21',10,120,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(632,132,862,'2018-04-21',11,121,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(633,132,862,'2018-04-21',12,122,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(634,132,862,'2018-04-21',13,123,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(635,132,862,'2018-04-21',14,124,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(636,132,862,'2018-04-21',15,125,'2018-04-21 16:31:22','2018-04-21 16:31:22'),(637,133,865,'2018-04-21',4,114,'2018-04-21 16:31:23','2018-04-21 16:31:23'),(638,133,865,'2018-04-21',5,115,'2018-04-21 16:31:23','2018-04-21 16:31:23'),(639,133,865,'2018-04-21',6,116,'2018-04-21 16:31:23','2018-04-21 16:31:23'),(640,133,865,'2018-04-21',7,117,'2018-04-21 16:31:23','2018-04-21 16:31:23'),(641,133,865,'2018-04-21',8,118,'2018-04-21 16:31:23','2018-04-21 16:31:23'),(642,133,865,'2018-04-21',9,119,'2018-04-21 16:31:24','2018-04-21 16:31:24'),(643,133,865,'2018-04-21',10,120,'2018-04-21 16:31:24','2018-04-21 16:31:24'),(644,133,865,'2018-04-21',11,121,'2018-04-21 16:31:24','2018-04-21 16:31:24'),(645,133,865,'2018-04-21',12,122,'2018-04-21 16:31:24','2018-04-21 16:31:24'),(646,133,865,'2018-04-21',13,123,'2018-04-21 16:31:24','2018-04-21 16:31:24'),(647,133,865,'2018-04-21',14,124,'2018-04-21 16:31:24','2018-04-21 16:31:24'),(648,133,865,'2018-04-21',15,125,'2018-04-21 16:31:24','2018-04-21 16:31:24'),(649,134,866,'2018-04-21',4,114,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(650,134,866,'2018-04-21',5,115,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(651,134,866,'2018-04-21',6,116,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(652,134,866,'2018-04-21',7,117,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(653,134,866,'2018-04-21',8,118,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(654,134,866,'2018-04-21',9,119,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(655,134,866,'2018-04-21',10,120,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(656,134,866,'2018-04-21',11,121,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(657,134,866,'2018-04-21',12,122,'2018-04-21 16:31:26','2018-04-21 16:31:26'),(658,134,866,'2018-04-21',13,123,'2018-04-21 16:31:26','2018-04-21 16:31:26'),(659,134,866,'2018-04-21',14,124,'2018-04-21 16:31:26','2018-04-21 16:31:26'),(660,134,866,'2018-04-21',15,125,'2018-04-21 16:31:26','2018-04-21 16:31:26'),(661,135,877,'2018-04-21',4,114,'2018-04-21 16:31:27','2018-04-21 16:31:27'),(662,135,877,'2018-04-21',5,115,'2018-04-21 16:31:27','2018-04-21 16:31:27'),(663,135,877,'2018-04-21',6,116,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(664,135,877,'2018-04-21',7,117,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(665,135,877,'2018-04-21',8,118,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(666,135,877,'2018-04-21',9,119,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(667,135,877,'2018-04-21',10,120,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(668,135,877,'2018-04-21',11,121,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(669,135,877,'2018-04-21',12,122,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(670,135,877,'2018-04-21',13,123,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(671,135,877,'2018-04-21',14,124,'2018-04-21 16:31:28','2018-04-21 16:31:28'),(672,135,877,'2018-04-21',15,125,'2018-04-21 16:31:29','2018-04-21 16:31:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (186,'Johns, Pfeffer and MacGyver','brand enterprise convergence',524,'2018-04-21 16:30:56','2018-04-21 16:30:56',NULL),(187,'Medhurst, Bins and O\'Connell','morph open-source applications',9,'2018-04-21 16:30:56','2018-04-21 16:30:56',NULL),(188,'Mraz, Moen and Bartoletti','innovate wireless e-tailers',26,'2018-04-21 16:30:56','2018-04-21 16:30:56',NULL),(189,'West Inc','drive one-to-one platforms',868,'2018-04-21 16:30:56','2018-04-21 16:30:56',NULL),(190,'MacGyver, Brekke and Littel','transition intuitive e-business',539,'2018-04-21 16:30:56','2018-04-21 16:30:56',NULL);
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
  PRIMARY KEY (`id`),
  KEY `index_fitness_tests_on_current` (`current`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness_tests`
--

LOCK TABLES `fitness_tests` WRITE;
/*!40000 ALTER TABLE `fitness_tests` DISABLE KEYS */;
INSERT INTO `fitness_tests` VALUES (125,'2018-04-15',92,23,53,66,99,12,14,17,19,10,10,4,7,17,18,'Sorry, Mom, the mob has spoken.','I\'ve driven women to lesbianism before, but never a mental institution.',849,872,91,'2018-04-21 16:31:10','2018-04-21 16:31:10',1),(126,'2018-04-17',77,22,44,67,92,19,10,20,19,12,20,2,6,15,18,'Life is just one crushing defeat after another until you just wish Flanders was dead.','You very bad man, Jerry. Very bad man.',850,876,91,'2018-04-21 16:31:12','2018-04-21 16:31:12',1),(127,'2018-04-24',113,25,47,102,105,16,18,11,20,18,11,8,5,10,13,'When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!','Looking at cleavage is like looking at the sun. You don\'t stare at it. It\'s too risky. Ya get a sense of it and then you look away.',853,869,105,'2018-04-21 16:31:14','2018-04-21 16:31:14',1),(128,'2018-04-14',87,25,27,103,45,18,10,12,18,19,13,5,10,10,19,'You tried your best and you failed miserably. The lesson is: Never try.','Yes, I hope my parents die long before I do.',854,869,119,'2018-04-21 16:31:15','2018-04-21 16:31:15',1),(129,'2018-04-21',104,21,55,81,112,10,10,19,18,14,13,7,4,18,29,'That\'s it! You people have stood in my way long enough. I\'m going to clown college!','Did you know that the original title for War and Peace was War, What Is It Good For?',857,871,110,'2018-04-21 16:31:17','2018-04-21 16:31:17',1),(130,'2018-04-26',53,28,40,77,60,18,11,20,14,11,17,4,1,19,14,'It takes two to lie: one to lie and one to listen.','I spend so much time trying to get their clothes off, I never thought of taking mine off.',858,869,115,'2018-04-21 16:31:18','2018-04-21 16:31:18',1),(131,'2018-04-25',103,34,40,111,101,19,20,14,10,20,20,0,6,13,18,'Cheating is the gift man gives himself.','I\'m sorry to bother you, but I\'m a US postal worker and my mail truck was just ambushed by a band of backwoods mail-hating survivalists.',861,872,92,'2018-04-21 16:31:20','2018-04-21 16:31:20',1),(132,'2018-04-14',73,32,36,77,55,12,12,10,15,10,11,9,5,19,12,'Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','These pretzels are makin\' me thirsty.',862,867,103,'2018-04-21 16:31:22','2018-04-21 16:31:22',1),(133,'2018-04-24',71,33,34,78,83,16,15,13,10,10,14,9,7,11,29,'To alcohol! The cause of, and solution to, all of life\'s problems.','Looking at cleavage is like looking at the sun. You don\'t stare at it. It\'s too risky. Ya get a sense of it and then you look away.',865,873,93,'2018-04-21 16:31:23','2018-04-21 16:31:23',1),(134,'2018-04-17',56,34,18,81,53,19,19,12,13,19,10,5,10,11,23,'Sorry, Mom, the mob has spoken.','And you want to be my latex salesman.',866,876,120,'2018-04-21 16:31:25','2018-04-21 16:31:25',1),(135,'2018-04-14',60,20,58,67,65,20,18,12,10,13,13,7,10,14,30,'Marriage is like a coffin and each kid is another nail.','Sex, that’s meaningless, I can understand that, but dinner; that’s heavy. That’s like an hour.',877,868,114,'2018-04-21 16:31:27','2018-04-21 16:31:27',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_logs`
--

LOCK TABLES `food_logs` WRITE;
/*!40000 ALTER TABLE `food_logs` DISABLE KEYS */;
INSERT INTO `food_logs` VALUES (36,NULL,'Lunch','2018-04-21 16:31:11','I had a very good meal. Cheating is the gift man gives himself.','2018-04-21 16:31:11','2018-04-21 16:31:11'),(37,NULL,'Breakfast','2018-04-21 16:31:11','I had a very good meal. Marriage is like a coffin and each kid is another nail.','2018-04-21 16:31:11','2018-04-21 16:31:11'),(38,NULL,'Dinner','2018-04-21 16:31:11','I had a very good meal. Son, if you really want something in this life, you have to work for it. Now quiet! They\'re about to announce the lottery numbers.','2018-04-21 16:31:11','2018-04-21 16:31:11'),(39,850,'Breakfast','2018-04-21 16:31:13','I had a very good meal. Marriage is like a coffin and each kid is another nail.','2018-04-21 16:31:13','2018-04-21 16:31:13'),(40,850,'Snack','2018-04-21 16:31:13','I had a very good meal. Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','2018-04-21 16:31:13','2018-04-21 16:31:13'),(41,850,'Dinner','2018-04-21 16:31:13','I had a very good meal. Son, if you really want something in this life, you have to work for it. Now quiet! They\'re about to announce the lottery numbers.','2018-04-21 16:31:13','2018-04-21 16:31:13'),(42,853,'Breakfast','2018-04-21 16:31:15','I had a very good meal. Kill my boss? Do I dare live out the American dream?','2018-04-21 16:31:15','2018-04-21 16:31:15'),(43,853,'Breakfast','2018-04-21 16:31:15','I had a very good meal. Cheating is the gift man gives himself.','2018-04-21 16:31:15','2018-04-21 16:31:15'),(44,853,'Snack','2018-04-21 16:31:15','I had a very good meal. Oh, loneliness and cheeseburgers are a dangerous mix.','2018-04-21 16:31:15','2018-04-21 16:31:15'),(45,854,'Snack','2018-04-21 16:31:16','I had a very good meal. Son, if you really want something in this life, you have to work for it. Now quiet! They\'re about to announce the lottery numbers.','2018-04-21 16:31:16','2018-04-21 16:31:16'),(46,854,'Breakfast','2018-04-21 16:31:16','I had a very good meal. What’s the point of going out? We’re just gonna wind up back home anyway.','2018-04-21 16:31:16','2018-04-21 16:31:16'),(47,854,'Breakfast','2018-04-21 16:31:17','I had a very good meal. Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','2018-04-21 16:31:17','2018-04-21 16:31:17'),(48,857,'Lunch','2018-04-21 16:31:18','I had a very good meal. Marriage is like a coffin and each kid is another nail.','2018-04-21 16:31:18','2018-04-21 16:31:18'),(49,857,'Dinner','2018-04-21 16:31:18','I had a very good meal. Son, if you really want something in this life, you have to work for it. Now quiet! They\'re about to announce the lottery numbers.','2018-04-21 16:31:18','2018-04-21 16:31:18'),(50,857,'Snack','2018-04-21 16:31:18','I had a very good meal. What’s the point of going out? We’re just gonna wind up back home anyway.','2018-04-21 16:31:18','2018-04-21 16:31:18'),(51,858,'Lunch','2018-04-21 16:31:20','I had a very good meal. That\'s it! You people have stood in my way long enough. I\'m going to clown college!','2018-04-21 16:31:20','2018-04-21 16:31:20'),(52,858,'Dinner','2018-04-21 16:31:20','I had a very good meal. When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!','2018-04-21 16:31:20','2018-04-21 16:31:20'),(53,858,'Lunch','2018-04-21 16:31:20','I had a very good meal. If you pray to the wrong god, you might just make the right one madder and madder.','2018-04-21 16:31:20','2018-04-21 16:31:20'),(54,861,'Breakfast','2018-04-21 16:31:21','I had a very good meal. Marriage is like a coffin and each kid is another nail.','2018-04-21 16:31:21','2018-04-21 16:31:21'),(55,861,'Dinner','2018-04-21 16:31:21','I had a very good meal. Marriage is like a coffin and each kid is another nail.','2018-04-21 16:31:21','2018-04-21 16:31:21'),(56,861,'Dinner','2018-04-21 16:31:21','I had a very good meal. Kill my boss? Do I dare live out the American dream?','2018-04-21 16:31:21','2018-04-21 16:31:21'),(57,862,'Lunch','2018-04-21 16:31:23','I had a very good meal. Go out on a Tuesday? Who am I, Charlie Sheen?','2018-04-21 16:31:23','2018-04-21 16:31:23'),(58,862,'Lunch','2018-04-21 16:31:23','I had a very good meal. Kill my boss? Do I dare live out the American dream?','2018-04-21 16:31:23','2018-04-21 16:31:23'),(59,862,'Lunch','2018-04-21 16:31:23','I had a very good meal. Go out on a Tuesday? Who am I, Charlie Sheen?','2018-04-21 16:31:23','2018-04-21 16:31:23'),(60,865,'Snack','2018-04-21 16:31:25','I had a very good meal. Sorry, Mom, the mob has spoken.','2018-04-21 16:31:25','2018-04-21 16:31:25'),(61,865,'Snack','2018-04-21 16:31:25','I had a very good meal. When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!','2018-04-21 16:31:25','2018-04-21 16:31:25'),(62,865,'Dinner','2018-04-21 16:31:25','I had a very good meal. Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!','2018-04-21 16:31:25','2018-04-21 16:31:25'),(63,866,'Snack','2018-04-21 16:31:27','I had a very good meal. Oh, loneliness and cheeseburgers are a dangerous mix.','2018-04-21 16:31:27','2018-04-21 16:31:27'),(64,866,'Snack','2018-04-21 16:31:27','I had a very good meal. Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','2018-04-21 16:31:27','2018-04-21 16:31:27'),(65,866,'Dinner','2018-04-21 16:31:27','I had a very good meal. Oh, loneliness and cheeseburgers are a dangerous mix.','2018-04-21 16:31:27','2018-04-21 16:31:27'),(66,877,'Lunch','2018-04-21 16:31:29','I had a very good meal. Marriage is like a coffin and each kid is another nail.','2018-04-21 16:31:29','2018-04-21 16:31:29'),(67,877,'Breakfast','2018-04-21 16:31:30','I had a very good meal. Sorry, Mom, the mob has spoken.','2018-04-21 16:31:30','2018-04-21 16:31:30'),(68,877,'Breakfast','2018-04-21 16:31:30','I had a very good meal. Kill my boss? Do I dare live out the American dream?','2018-04-21 16:31:30','2018-04-21 16:31:30'),(69,NULL,'Lunch','2018-04-22 17:00:00','I had beer','2018-04-22 11:37:12','2018-04-22 11:37:32'),(70,NULL,'Dinner','2018-04-22 21:10:00','PAranthas and Palak Paneer','2018-04-22 15:40:30','2018-04-22 15:40:30'),(71,NULL,'Snack',NULL,'Vada pao','2018-04-22 15:43:39','2018-04-22 15:43:39'),(72,NULL,'Snack',NULL,'VAda pao','2018-04-22 15:44:40','2018-04-22 15:44:40'),(73,NULL,'Breakfast','2018-04-22 21:16:00','Bun maska','2018-04-22 15:46:17','2018-04-22 15:46:17'),(74,NULL,'Breakfast','2018-04-22 21:18:00','Meat','2018-04-22 15:48:24','2018-04-22 15:48:24'),(75,849,'Breakfast','2018-04-22 16:58:00','Bread eggs','2018-04-22 15:58:20','2018-04-22 16:02:28'),(76,849,'Breakfast','2018-04-22 15:58:00','TEst','2018-04-22 15:58:37','2018-04-22 15:58:37'),(77,849,'Breakfast','2018-04-23 01:30:00','Aloo parantha','2018-04-23 08:49:28','2018-04-23 08:49:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` VALUES (161,849,'2018-04-21 16:31:10','2018-04-22 12:56:52','Marriage is like a coffin and each kid is another nail.','Life is just one crushing defeat after another until you just wish Flanders was dead.','Somewhat regular - between one and three times a week.','That\'s it! You people have stood in my way long enough. I\'m going to clown college!'),(162,850,'2018-04-21 16:31:12','2018-04-21 16:31:12','Go out on a Tuesday? Who am I, Charlie Sheen?','You tried your best and you failed miserably. The lesson is: Never try.','Not regular - less than once a week.','That\'s it! You people have stood in my way long enough. I\'m going to clown college!'),(163,853,'2018-04-21 16:31:14','2018-04-21 16:31:14','That\'s it! You people have stood in my way long enough. I\'m going to clown college!','Go out on a Tuesday? Who am I, Charlie Sheen?','Somewhat regular - between one and three times a week.','What’s the point of going out? We’re just gonna wind up back home anyway.'),(164,854,'2018-04-21 16:31:15','2018-04-21 16:31:15','Books are useless! I only ever read one book, To Kill A Mockingbird, and it gave me absolutely no insight on how to kill mockingbirds!','It takes two to lie: one to lie and one to listen.','Somewhat regular - between one and three times a week.','Cheating is the gift man gives himself.'),(165,857,'2018-04-21 16:31:17','2018-04-21 16:31:17','To alcohol! The cause of, and solution to, all of life\'s problems.','What’s the point of going out? We’re just gonna wind up back home anyway.','Regular - three or more times a week.','Kill my boss? Do I dare live out the American dream?'),(166,858,'2018-04-21 16:31:18','2018-04-21 16:31:18','I\'m not normally a praying man, but if you\'re up there, please save me, Superman!','Oh, loneliness and cheeseburgers are a dangerous mix.','Not regular - less than once a week.','Life is just one crushing defeat after another until you just wish Flanders was dead.'),(167,861,'2018-04-21 16:31:20','2018-04-21 16:31:20','Oh, loneliness and cheeseburgers are a dangerous mix.','Life is just one crushing defeat after another until you just wish Flanders was dead.','Not regular - less than once a week.','D\'oh!'),(168,862,'2018-04-21 16:31:22','2018-04-21 16:31:22','You tried your best and you failed miserably. The lesson is: Never try.','Cheating is the gift man gives himself.','Somewhat regular - between one and three times a week.','Cheating is the gift man gives himself.'),(169,865,'2018-04-21 16:31:23','2018-04-21 16:31:23','Go out on a Tuesday? Who am I, Charlie Sheen?','Marriage is like a coffin and each kid is another nail.','Regular - three or more times a week.','When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!'),(170,866,'2018-04-21 16:31:25','2018-04-21 16:31:25','To alcohol! The cause of, and solution to, all of life\'s problems.','D\'oh!','Not regular - less than once a week.','When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!'),(171,877,'2018-04-21 16:31:27','2018-04-21 16:31:27','Trust me, Bart, it\'s better to walk in on both your parents than on just one of them.','To alcohol! The cause of, and solution to, all of life\'s problems.','Not regular - less than once a week.','D\'oh!'),(172,849,'2018-04-23 05:40:55','2018-04-23 05:40:55','I would like to learn to run','If I lost 5 Kgs','Not regular - less than once a week.','None Im done');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_histories`
--

LOCK TABLES `medical_histories` WRITE;
/*!40000 ALTER TABLE `medical_histories` DISABLE KEYS */;
INSERT INTO `medical_histories` VALUES (70,850,'2018-04-21 16:31:13','2018-04-21 16:31:13','2018-01-09',0,0,0,1,1,1,1,1,0,1,1,'Life is just one crushing defeat after another until you just wish Flanders was dead.'),(71,853,'2018-04-21 16:31:14','2018-04-21 16:31:14','2018-02-27',1,0,1,1,0,0,1,0,0,0,0,'You tried your best and you failed miserably. The lesson is: Never try.'),(72,854,'2018-04-21 16:31:16','2018-04-21 16:31:16','2018-03-08',0,0,0,0,1,1,1,1,1,1,1,'Life is just one crushing defeat after another until you just wish Flanders was dead.'),(73,857,'2018-04-21 16:31:18','2018-04-21 16:31:18','2018-03-24',1,1,1,0,1,0,1,0,0,1,0,'It takes two to lie: one to lie and one to listen.'),(74,858,'2018-04-21 16:31:19','2018-04-21 16:31:19','2018-03-04',0,1,0,0,0,0,1,0,0,1,0,'Son, if you really want something in this life, you have to work for it. Now quiet! They\'re about to announce the lottery numbers.'),(75,861,'2018-04-21 16:31:21','2018-04-21 16:31:21','2017-11-26',1,0,0,0,1,0,0,1,1,1,1,'When will I learn? The answers to life’s problems aren’t at the bottom of a bottle, they’re on TV!'),(76,862,'2018-04-21 16:31:22','2018-04-21 16:31:22','2018-03-26',1,1,1,0,1,0,0,1,1,0,1,'Go out on a Tuesday? Who am I, Charlie Sheen?'),(77,865,'2018-04-21 16:31:24','2018-04-21 16:31:24','2018-01-21',1,1,1,0,0,0,0,1,0,1,1,'You tried your best and you failed miserably. The lesson is: Never try.'),(78,866,'2018-04-21 16:31:26','2018-04-21 16:31:26','2018-03-19',0,1,0,1,0,0,0,1,1,0,0,'D\'oh!'),(79,877,'2018-04-21 16:31:29','2018-04-21 16:31:29','2018-04-16',1,0,0,1,1,1,0,1,0,0,1,'To alcohol! The cause of, and solution to, all of life\'s problems.'),(83,849,'2018-04-23 07:11:49','2018-04-23 08:16:37','Within the last six months.',1,0,0,0,0,0,0,0,0,0,0,'This is a test'),(84,849,'2018-04-23 08:17:36','2018-04-23 08:17:36','Within the last six months.',1,0,0,0,0,0,0,0,0,0,0,'None');
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
) ENGINE=InnoDB AUTO_INCREMENT=1035 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1021,849,'2018-04-16',0,1,NULL,'2018-04-21 16:33:07','2018-04-22 12:55:02','Strength',125,'StrengthWorkout',2),(1022,849,'2018-04-17',0,-1,'It hurt','2018-04-21 16:33:07','2018-04-22 12:59:56','Tempo',125,'Workout',489),(1023,849,'2018-04-18',0,NULL,NULL,'2018-04-21 16:33:07','2018-04-21 16:33:07','Strength',125,'StrengthWorkout',2),(1024,849,'2018-04-19',0,NULL,NULL,'2018-04-21 16:33:07','2018-04-21 16:33:07','Interval',125,'Workout',490),(1025,849,'2018-04-20',0,NULL,NULL,'2018-04-21 16:33:07','2018-04-21 16:33:07','Strength',125,'StrengthWorkout',2),(1026,849,'2018-04-21',0,NULL,NULL,'2018-04-21 16:33:07','2018-04-21 16:33:07','Long',125,'Workout',491),(1027,849,'2018-04-22',0,1,NULL,'2018-04-21 16:33:07','2018-04-22 16:05:26','Strength',125,'StrengthWorkout',2),(1028,849,'2018-04-23',0,1,NULL,'2018-04-21 16:33:08','2018-04-23 07:18:40','Strength',125,'StrengthWorkout',2),(1029,849,'2018-04-24',0,NULL,NULL,'2018-04-21 16:33:08','2018-04-21 16:33:08','Tempo',125,'Workout',489),(1030,849,'2018-04-25',0,NULL,NULL,'2018-04-21 16:33:08','2018-04-21 16:33:08','Strength',125,'StrengthWorkout',2),(1031,849,'2018-04-26',0,NULL,NULL,'2018-04-21 16:33:08','2018-04-21 16:33:08','Speed',125,'Workout',492),(1032,849,'2018-04-27',0,NULL,NULL,'2018-04-21 16:33:08','2018-04-21 16:33:08','Strength',125,'StrengthWorkout',2),(1033,849,'2018-04-28',0,NULL,NULL,'2018-04-21 16:33:08','2018-04-21 16:33:08','Long',125,'Workout',491),(1034,849,'2018-04-29',0,NULL,NULL,'2018-04-21 16:33:08','2018-04-21 16:33:08','Strength',125,'StrengthWorkout',2);
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
INSERT INTO `schema_migrations` VALUES ('20180406102442'),('20180406102941'),('20180406103637'),('20180406103951'),('20180406104215'),('20180406105222'),('20180406110059'),('20180406113535'),('20180406113932'),('20180406114132'),('20180406120927'),('20180406121625'),('20180407082008'),('20180407082356'),('20180407083816'),('20180407112031'),('20180407120834'),('20180407122438'),('20180407122722'),('20180407143459'),('20180407144036'),('20180408070308'),('20180411100408'),('20180411121202'),('20180412054728'),('20180412061017'),('20180414132153'),('20180416155646'),('20180419101651'),('20180421072336'),('20180421150338'),('20180421153136'),('20180421162450'),('20180423053506'),('20180424025934');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strength_workouts`
--

LOCK TABLES `strength_workouts` WRITE;
/*!40000 ALTER TABLE `strength_workouts` DISABLE KEYS */;
INSERT INTO `strength_workouts` VALUES (1,1,1,1,1,1,1,1,1,1,1,849,'2018-04-21 16:31:11','2018-04-21 16:31:11'),(2,0,5,10,10,1,0,0,0,0,1,849,'2018-04-21 16:31:11','2018-04-22 11:34:51'),(3,1,1,1,1,1,1,1,1,1,1,850,'2018-04-21 16:31:13','2018-04-21 16:31:13'),(4,1,1,1,1,1,1,1,1,0,1,850,'2018-04-21 16:31:13','2018-04-21 16:31:13'),(5,1,1,1,1,1,1,1,1,1,1,853,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(6,1,1,1,1,1,1,1,1,0,1,853,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(7,1,1,1,1,1,1,1,1,1,1,854,'2018-04-21 16:31:16','2018-04-21 16:31:16'),(8,1,1,1,1,1,1,1,1,0,1,854,'2018-04-21 16:31:16','2018-04-21 16:31:16'),(9,1,1,1,1,1,1,1,1,1,1,857,'2018-04-21 16:31:18','2018-04-21 16:31:18'),(10,1,1,1,1,1,1,1,1,0,1,857,'2018-04-21 16:31:18','2018-04-21 16:31:18'),(11,1,1,1,1,1,1,1,1,1,1,858,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(12,1,1,1,1,1,1,1,1,0,1,858,'2018-04-21 16:31:19','2018-04-21 16:31:19'),(13,1,1,1,1,1,1,1,1,1,1,861,'2018-04-21 16:31:21','2018-04-21 16:31:21'),(14,1,1,1,1,1,1,1,1,0,1,861,'2018-04-21 16:31:21','2018-04-21 16:31:21'),(15,1,1,1,1,1,1,1,1,1,1,862,'2018-04-21 16:31:23','2018-04-21 16:31:23'),(16,1,1,1,1,1,1,1,1,0,1,862,'2018-04-21 16:31:23','2018-04-21 16:31:23'),(17,1,1,1,1,1,1,1,1,1,1,865,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(18,1,1,1,1,1,1,1,1,0,1,865,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(19,1,1,1,1,1,1,1,1,1,1,866,'2018-04-21 16:31:27','2018-04-21 16:31:27'),(20,1,1,1,1,1,1,1,1,0,1,866,'2018-04-21 16:31:27','2018-04-21 16:31:27'),(21,1,1,1,1,1,1,1,1,1,1,877,'2018-04-21 16:31:29','2018-04-21 16:31:29'),(22,1,1,1,1,1,1,1,1,0,1,877,'2018-04-21 16:31:29','2018-04-21 16:31:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stress_tests`
--

LOCK TABLES `stress_tests` WRITE;
/*!40000 ALTER TABLE `stress_tests` DISABLE KEYS */;
INSERT INTO `stress_tests` VALUES (27,'Very Often','Never','Never','Almost Never','Fairly Often','Almost Never','Never','Sometimes','Very Often','Never',849,'2018-04-16',19,'Moderate','2018-04-21 16:31:11','2018-04-21 16:31:11'),(28,'Very Often','Very Often','Fairly Often','Sometimes','Very Often','Almost Never','Sometimes','Almost Never','Never','Very Often',850,'2018-04-19',23,'Moderate','2018-04-21 16:31:13','2018-04-21 16:31:13'),(29,'Fairly Often','Fairly Often','Almost Never','Sometimes','Never','Almost Never','Never','Sometimes','Never','Very Often',853,'2018-04-15',24,'Moderate','2018-04-21 16:31:14','2018-04-21 16:31:14'),(30,'Almost Never','Fairly Often','Almost Never','Very Often','Fairly Often','Fairly Often','Almost Never','Almost Never','Very Often','Never',854,'2018-04-16',19,'Moderate','2018-04-21 16:31:16','2018-04-21 16:31:16'),(31,'Never','Fairly Often','Never','Almost Never','Never','Almost Never','Fairly Often','Almost Never','Very Often','Fairly Often',857,'2018-04-15',22,'Moderate','2018-04-21 16:31:18','2018-04-21 16:31:18'),(32,'Sometimes','Never','Never','Very Often','Fairly Often','Almost Never','Almost Never','Almost Never','Never','Fairly Often',858,'2018-04-20',13,'Ideal','2018-04-21 16:31:19','2018-04-21 16:31:19'),(33,'Sometimes','Very Often','Almost Never','Fairly Often','Never','Never','Very Often','Almost Never','Almost Never','Fairly Often',861,'2018-04-20',19,'Moderate','2018-04-21 16:31:21','2018-04-21 16:31:21'),(34,'Very Often','Very Often','Fairly Often','Never','Fairly Often','Sometimes','Sometimes','Almost Never','Almost Never','Sometimes',862,'2018-04-19',26,'Moderate','2018-04-21 16:31:22','2018-04-21 16:31:22'),(35,'Fairly Often','Sometimes','Sometimes','Fairly Often','Almost Never','Never','Fairly Often','Sometimes','Sometimes','Fairly Often',865,'2018-04-18',19,'Moderate','2018-04-21 16:31:24','2018-04-21 16:31:24'),(36,'Never','Sometimes','Almost Never','Sometimes','Sometimes','Fairly Often','Very Often','Very Often','Almost Never','Very Often',866,'2018-04-19',15,'Moderate','2018-04-21 16:31:26','2018-04-21 16:31:26'),(37,'Never','Sometimes','Almost Never','Sometimes','Never','Fairly Often','Almost Never','Never','Sometimes','Never',877,'2018-04-19',21,'Moderate','2018-04-21 16:31:29','2018-04-21 16:31:29');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
INSERT INTO `targets` VALUES (130,'2018-04-15','2018-05-15',117,32,56,67,96,17,20,11,14,19,19,4,10,849,'2018-04-21 16:31:10','2018-04-21 16:31:10'),(131,'2018-04-21','2018-05-21',91,34,20,49,90,10,13,12,10,10,15,9,2,850,'2018-04-21 16:31:12','2018-04-21 16:31:12'),(132,'2018-04-28','2018-05-28',59,30,27,88,111,14,18,10,19,20,17,6,7,853,'2018-04-21 16:31:14','2018-04-21 16:31:14'),(133,'2018-04-24','2018-05-24',112,35,33,64,91,14,20,11,18,19,10,10,0,854,'2018-04-21 16:31:15','2018-04-21 16:31:15'),(134,'2018-04-27','2018-05-27',52,33,37,83,116,14,19,14,10,17,15,5,7,857,'2018-04-21 16:31:17','2018-04-21 16:31:17'),(135,'2018-04-21','2018-05-21',83,21,38,64,99,10,18,13,20,16,19,5,0,858,'2018-04-21 16:31:18','2018-04-21 16:31:18'),(136,'2018-04-28','2018-05-28',93,33,46,90,110,20,10,16,20,19,16,1,3,861,'2018-04-21 16:31:20','2018-04-21 16:31:20'),(137,'2018-04-23','2018-05-23',120,33,58,65,55,12,18,19,18,11,19,9,0,862,'2018-04-21 16:31:21','2018-04-21 16:31:21'),(138,'2018-04-26','2018-05-26',115,23,55,112,110,20,14,18,12,10,17,10,8,865,'2018-04-21 16:31:23','2018-04-21 16:31:23'),(139,'2018-04-21','2018-05-21',52,20,48,95,50,20,16,20,14,13,20,6,6,866,'2018-04-21 16:31:25','2018-04-21 16:31:25'),(140,'2018-04-22','2018-05-22',50,27,51,62,83,13,11,16,11,11,17,8,8,877,'2018-04-21 16:31:27','2018-04-21 16:31:27');
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
  `height` varchar(20) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=891 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (847,'admin1@gmail.com','Brent','Leannon','M',1984,'2018-04-21 16:30:57','2018-04-21 16:30:57','Company Admin','2125555325','$2a$11$mrJ/Mep4eOIyUBJMqk7AvextCRl1nyPTwdb58Nd3DsFa9k/6VVciK',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.1',186,NULL,NULL,'2018-04-21 16:30:57','2018-04-21 16:30:57','email','admin1@gmail.com','{}',1,NULL,NULL,NULL),(848,'admin2@gmail.com','Olaf','Williamson','F',2010,'2018-04-21 16:30:57','2018-04-21 16:30:57','Company Admin','2125555210','$2a$11$6XWZXCOjgFAwIWk.QihJuefc3Tk9aCazGuDHFfrXCY9IcOn2//7Nu',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.4',186,NULL,NULL,'2018-04-21 16:30:57','2018-04-21 16:30:57','email','admin2@gmail.com','{}',1,NULL,NULL,NULL),(849,'runner3.186@gmail.com','Noemie','Jerde','F',2003,'2018-04-21 16:30:58','2018-04-24 02:51:54','Runner','2125555129','$2a$11$pIW.UFykRXBbN2baIlpvXO/idlkwaPymXW6lNz2XwrCbD0EnrQRfe',NULL,NULL,NULL,122,'2018-04-24 02:51:48','2018-04-23 13:53:16','127.0.0.1','127.0.0.1','6.2',186,NULL,NULL,'2018-04-21 16:30:58','2018-04-21 16:30:58','email','runner3.186@gmail.com','{\"LKNHTqkuEv6b5-MKq366HQ\":{\"token\":\"$2a$10$wrGVCzqKuWHYYXdZwGiE.edYz1frUjJ0Dmbj8mn5uWh7EJA1Y/nAC\",\"expiry\":1525684148,\"last_token\":\"$2a$10$9tIjLnOu8OUJRqp89Eou9u1.NV9tvTMXo1SfIFOpg1zhSgf2A5YFe\",\"updated_at\":\"2018-04-23T14:39:08.879+05:30\"},\"6CpKboJVsfY2L5soVogUMg\":{\"token\":\"$2a$10$rHRNNaJMGeQUFAk2/GKSfOQOyVPQf23n/Af1HNWixNYj7ww80SmRu\",\"expiry\":1525684255,\"last_token\":\"$2a$10$uePBruRm1eU9vOv35cGUeOhyKpJY1lYJBvvV.UqA1pYftglA7YgJq\",\"updated_at\":\"2018-04-23T14:40:56.624+05:30\"},\"ZV-6S8w1lEeYaRopiJxfzQ\":{\"token\":\"$2a$10$TfP3YwhwMHPBThaSyM4YNe2cm8B/pLyfDktlnOlTaBmVfraqDOHhK\",\"expiry\":1525684579,\"last_token\":\"$2a$10$phNWN.0vJHr8Eq4CBuSgHuyZjNRGyfzPQpbf1W1CYKBelumkd59z2\",\"updated_at\":\"2018-04-23T14:46:19.059+05:30\"},\"sa9kH4gV2b4Hp5b6KtSw_w\":{\"token\":\"$2a$10$WvNs3/qQ.pTdOhVk4YbEIOoJLdujDeI.mXMMuPmmENPPa2MIlmgwa\",\"expiry\":1525685360,\"last_token\":\"$2a$10$7OwlfRtcr39g45mXnqN7feS2hNZ2E3LE2PJ25xXBZf9HPqR4sYO4O\",\"updated_at\":\"2018-04-23T14:59:20.151+05:30\"},\"8Ix4J3yo9wkRedmOry3Tsg\":{\"token\":\"$2a$10$v9ilyJTlN8gTPLT/xa9.RexSrCjYLcWKbwL0bLIVAtTMlEfmPX/8q\",\"expiry\":1525685476,\"last_token\":\"$2a$10$zJ1FyL4PTImLQrlWQtr1xeYl9Y9He1jjKqcH/P39VBQTkXaq7aNnq\",\"updated_at\":\"2018-04-23T15:01:16.283+05:30\"},\"3pKlR50dcxnEDOd4IIdQLQ\":{\"token\":\"$2a$10$yTFGQrs/rQWHhkxkooBZwOdR4Z6MYWIrG04gFSt0fvTk3L1O9OBjC\",\"expiry\":1525685594,\"last_token\":\"$2a$10$cXqRf5SO33vEGaMOt/CnV.QjCDS90B1FyjrycJYgf3/uN9/v3x4xu\",\"updated_at\":\"2018-04-23T15:03:15.010+05:30\"},\"8nxcXtTCjgItqbuGXMndAQ\":{\"token\":\"$2a$10$5V0TsHYp6g9hn12NBjDkKuQu.fTQVtLBTetoHhX1s5i.C68ZFHN4q\",\"expiry\":1525685782,\"last_token\":\"$2a$10$SU/PN7aKLwMWu1S9WwhAEuV6Gza4XyQYNpJUzqeo4uDTBUp1XKaCW\",\"updated_at\":\"2018-04-23T15:06:23.444+05:30\"},\"ONjGMIg3XBpXxdnQ205A1g\":{\"token\":\"$2a$10$qBWZGrPcgOLGFJvSiAijvO/KYbyHFL/oU2crXN6OtmsGHoc8ulnIe\",\"expiry\":1525747908,\"last_token\":\"$2a$10$cTAV98pXKMSvVxE1ovR/M.qg9Lds44iTbU0ZJFqmXVvDCIdwHoQDy\",\"updated_at\":\"2018-04-24T08:21:49.946+05:30\"},\"mSpcQ4WS8wr7BcstDoro2g\":{\"token\":\"$2a$10$5D6PqraGAxKyaAzivqduRu2TbGHM5y6CUv9E/5bc1M.2wdVumgxNK\",\"expiry\":1525701197,\"last_token\":\"$2a$10$zDPdgijTSZ8kPXkm1n/M/.jj01/bZi4dTohT2JyDnxQzeCK/SDE6y\",\"updated_at\":\"2018-04-23T19:23:17.849+05:30\"}}',1,1,1,1),(850,'runner4.186@gmail.com','Jake','Thiel','M',1996,'2018-04-21 16:30:58','2018-04-21 16:31:12','Runner','2125555134','$2a$11$5AAUAOsMO46Y2Npcm6vV3eTgkMdCnF.Kpfxmn1aW1IioNdk2X5IE2',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.3',186,NULL,NULL,'2018-04-21 16:30:58','2018-04-21 16:30:58','email','runner4.186@gmail.com','{}',1,1,1,NULL),(851,'admin5@gmail.com','Rosella','Leffler','F',2004,'2018-04-21 16:30:59','2018-04-21 16:30:59','Company Admin','2125555147','$2a$11$Tor.QBxfg9oCmuTRLYdOguvx0MjPc3GE7Fv8Zi9vHgLmc45povAuS',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.1',187,NULL,NULL,'2018-04-21 16:30:58','2018-04-21 16:30:58','email','admin5@gmail.com','{}',1,NULL,NULL,NULL),(852,'admin6@gmail.com','Forrest','Jones','F',1996,'2018-04-21 16:30:59','2018-04-21 16:30:59','Company Admin','2125555324','$2a$11$3Js9XU/7CZatIsj6BK33IOBPDcHeKxZz9dyyBrjlfRhAUlyWGAlca',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.9',187,NULL,NULL,'2018-04-21 16:30:59','2018-04-21 16:30:59','email','admin6@gmail.com','{}',1,NULL,NULL,NULL),(853,'runner7.187@gmail.com','Grover','Boyer','M',1978,'2018-04-21 16:30:59','2018-04-21 16:31:14','Runner','2125555454','$2a$11$/RBo.tDr5DXlpCFWc0c/F.TY6cHi2nLliTqVHst5BvbkonKYVR8GS',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.8',187,NULL,NULL,'2018-04-21 16:30:59','2018-04-21 16:30:59','email','runner7.187@gmail.com','{}',1,1,1,NULL),(854,'runner8.187@gmail.com','Christy','Bauch','F',2003,'2018-04-21 16:31:00','2018-04-21 16:31:15','Runner','2125555113','$2a$11$4vRpfUown3M5s4d6O9fuoO65UDePZSiNcWcwhfBMEmXZHx5oXpoL2',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.3',187,NULL,NULL,'2018-04-21 16:31:00','2018-04-21 16:31:00','email','runner8.187@gmail.com','{}',1,1,1,NULL),(855,'admin9@gmail.com','Sterling','Hane','F',2000,'2018-04-21 16:31:00','2018-04-21 16:31:00','Company Admin','2125555348','$2a$11$TXScEvfKA1swot2PhqDF6e3.c.Vatyc8qnwxCYo/2HTZ1wXwOpM26',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.4',188,NULL,NULL,'2018-04-21 16:31:00','2018-04-21 16:31:00','email','admin9@gmail.com','{}',1,NULL,NULL,NULL),(856,'admin10@gmail.com','Vida','Wolf','F',1976,'2018-04-21 16:31:01','2018-04-21 16:31:01','Company Admin','2125555812','$2a$11$lfhWrGgVG1bGHPettt7eh.TxsTy9mzSDEiarKwoumwc2mLuT2BLca',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.0',188,NULL,NULL,'2018-04-21 16:31:00','2018-04-21 16:31:00','email','admin10@gmail.com','{}',1,NULL,NULL,NULL),(857,'runner11.188@gmail.com','Wilfredo','Howell','M',1989,'2018-04-21 16:31:01','2018-04-21 16:31:17','Runner','2125555493','$2a$11$.Gfh1Yx1cyTMUbTpixTmteHjSuu9I7noeRjPbqIwHUhI9h4Kw1MH6',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.0',188,NULL,NULL,'2018-04-21 16:31:01','2018-04-21 16:31:01','email','runner11.188@gmail.com','{}',1,1,1,NULL),(858,'runner12.188@gmail.com','Zoe','Jaskolski','F',1979,'2018-04-21 16:31:01','2018-04-21 16:31:18','Runner','2125555289','$2a$11$PpH.Vo1yRNLFzW04eRZbZujC7/vr5TbgduWu4Zf1uKiiKJC3JC6wW',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.8',188,NULL,NULL,'2018-04-21 16:31:01','2018-04-21 16:31:01','email','runner12.188@gmail.com','{}',1,1,1,NULL),(859,'admin13@gmail.com','Adriel','Reilly','M',2010,'2018-04-21 16:31:02','2018-04-21 16:31:02','Company Admin','2125555261','$2a$11$GwTBmYvX30G9iNldfsxIJ.K3hwwoyPmiqK.vcOS2l2DXC4pQ.kSd.',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.0',189,NULL,NULL,'2018-04-21 16:31:02','2018-04-21 16:31:02','email','admin13@gmail.com','{}',1,NULL,NULL,NULL),(860,'admin14@gmail.com','Stephania','Lehner','M',1997,'2018-04-21 16:31:02','2018-04-21 16:31:02','Company Admin','2125555326','$2a$11$wXgbeEQU1EY4nnmVtV/1VOT0/SnMPrwbf3a25kwrb/pGnbapyS9Z2',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.6',189,NULL,NULL,'2018-04-21 16:31:02','2018-04-21 16:31:02','email','admin14@gmail.com','{}',1,NULL,NULL,NULL),(861,'runner15.189@gmail.com','Myrtice','Heller','M',1994,'2018-04-21 16:31:03','2018-04-21 16:31:20','Runner','2125555705','$2a$11$D/72OWNkgKqMw/Ub8Pb/x.i41NZ5a3w3Y5o268lxjTq9IfMMCgObu',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.5',189,NULL,NULL,'2018-04-21 16:31:02','2018-04-21 16:31:02','email','runner15.189@gmail.com','{}',1,1,1,NULL),(862,'runner16.189@gmail.com','Rickie','Krajcik','M',2008,'2018-04-21 16:31:03','2018-04-21 16:31:22','Runner','2125555933','$2a$11$UBqFn85YXI1hnh6ObvjHe.UqoNy2fLFfckkZ.pJ0idscRTaIDm6xm',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.7',189,NULL,NULL,'2018-04-21 16:31:03','2018-04-21 16:31:03','email','runner16.189@gmail.com','{}',1,1,1,NULL),(863,'admin17@gmail.com','Agustina','Breitenberg','M',1967,'2018-04-21 16:31:03','2018-04-21 16:31:03','Company Admin','2125555782','$2a$11$iJCG8tlYNGnu/VNfYGX6meftqbWuDI3eh/tGYZMqSk7nbccGb0L3.',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.3',190,NULL,NULL,'2018-04-21 16:31:03','2018-04-21 16:31:03','email','admin17@gmail.com','{}',1,NULL,NULL,NULL),(864,'admin18@gmail.com','Jannie','Jakubowski','F',2010,'2018-04-21 16:31:04','2018-04-21 16:31:04','Company Admin','2125555335','$2a$11$X7Ouy/SHoobTtQzIbTIg9O5tXIa6CcaHnIiBbPiQFGid4GH3n4h5.',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.6',190,NULL,NULL,'2018-04-21 16:31:04','2018-04-21 16:31:04','email','admin18@gmail.com','{}',1,NULL,NULL,NULL),(865,'runner19.190@gmail.com','Ralph','Schuppe','M',1981,'2018-04-21 16:31:04','2018-04-21 16:31:23','Runner','2125555157','$2a$11$YeBwcKwCvxXsrN48TtyqCuipQIcrmJEwHKv0uCaxQKEY.1IvQOV9m',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.8',190,NULL,NULL,'2018-04-21 16:31:04','2018-04-21 16:31:04','email','runner19.190@gmail.com','{}',1,1,1,NULL),(866,'runner20.190@gmail.com','Luciano','Paucek','F',1970,'2018-04-21 16:31:05','2018-04-21 16:31:25','Runner','2125555237','$2a$11$UBMLo3pKX.TSscsGOTrwVOpsy5Hnq3M7tnXvueF2hGJPHywvV2dHy',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.2',190,NULL,NULL,'2018-04-21 16:31:04','2018-04-21 16:31:04','email','runner20.190@gmail.com','{}',1,1,1,NULL),(867,'coach1@gmail.com','Gerardo','Schroeder','M',2003,'2018-04-21 16:31:05','2018-04-21 16:31:05','Coach','2125555672','$2a$11$V23en.jscIKfty7qjJeEP.QnuNT4.WjFrf89ok6HUMYaOHYn138xO',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.6',NULL,NULL,NULL,'2018-04-21 16:31:05','2018-04-21 16:31:05','email','coach1@gmail.com','{}',1,NULL,NULL,NULL),(868,'coach2@gmail.com','Rudolph','Hickle','F',1984,'2018-04-21 16:31:05','2018-04-21 16:31:05','Coach','2125555757','$2a$11$8zLe57Kd4dTTRMmHSoS3V.ucpoCqAeSHZTBEcIPQB24UxeH8JpD7O',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.1',NULL,NULL,NULL,'2018-04-21 16:31:05','2018-04-21 16:31:05','email','coach2@gmail.com','{}',1,NULL,NULL,NULL),(869,'coach3@gmail.com','Leif','Leannon','F',2007,'2018-04-21 16:31:06','2018-04-21 16:31:06','Coach','2125555402','$2a$11$0DN7YMu3m0YrSkX3CeBYK.iHsJG3MR/TjHuLv6yKZFGUq3vYLStsm',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.3',NULL,NULL,NULL,'2018-04-21 16:31:06','2018-04-21 16:31:06','email','coach3@gmail.com','{}',1,NULL,NULL,NULL),(870,'coach4@gmail.com','Janelle','Herman','F',1988,'2018-04-21 16:31:06','2018-04-21 16:31:06','Coach','2125555592','$2a$11$D6U4ASx0r5NQ.5qovhpRGeajwTMYG6nhN9Yfmcx82tS7gpsOEYVoy',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.2',NULL,NULL,NULL,'2018-04-21 16:31:06','2018-04-21 16:31:06','email','coach4@gmail.com','{}',1,NULL,NULL,NULL),(871,'coach5@gmail.com','Roman','Kovacek','F',2005,'2018-04-21 16:31:07','2018-04-21 16:31:07','Coach','2125555835','$2a$11$dARl8gHINRivtY6Uk7CnUOf/OiSIh.5PBJ4sv.S/tBfKqJ4KQ8x4m',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.1',NULL,NULL,NULL,'2018-04-21 16:31:06','2018-04-21 16:31:06','email','coach5@gmail.com','{}',1,NULL,NULL,NULL),(872,'coach6@gmail.com','Golda','Murazik','F',2002,'2018-04-21 16:31:07','2018-04-21 16:31:07','Coach','2125555122','$2a$11$tUEeM7FCvVJfa/7wjyCmruNDjQ6p5m.sxFfX6R0tWOOgR01.cICd.',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.6',NULL,NULL,NULL,'2018-04-21 16:31:07','2018-04-21 16:31:07','email','coach6@gmail.com','{}',1,NULL,NULL,NULL),(873,'coach7@gmail.com','Edwin','Cruickshank','M',1971,'2018-04-21 16:31:07','2018-04-21 16:31:07','Coach','2125555269','$2a$11$cpkmaBN/lGDTkL.pWAzJC.DcwSXSWbSpVE6B/ewv5HHfQWPbfsSOq',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.4',NULL,NULL,NULL,'2018-04-21 16:31:07','2018-04-21 16:31:07','email','coach7@gmail.com','{}',1,NULL,NULL,NULL),(874,'coach8@gmail.com','Estella','Satterfield','F',1977,'2018-04-21 16:31:08','2018-04-21 16:31:08','Coach','2125555883','$2a$11$GkiA8A9DzvhRwNTsTohKWuc9d0VbdhsBTK.MwQPMKeHjsKjEH3HHC',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.4',NULL,NULL,NULL,'2018-04-21 16:31:08','2018-04-21 16:31:08','email','coach8@gmail.com','{}',1,NULL,NULL,NULL),(875,'coach9@gmail.com','Stewart','Wolff','M',1978,'2018-04-21 16:31:08','2018-04-21 16:31:08','Coach','2125555988','$2a$11$dUAUw5pABaTls02YIyOpJevAbQVYo9PgQWTWXQJhnNsOqJ/2.28ru',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.2',NULL,NULL,NULL,'2018-04-21 16:31:08','2018-04-21 16:31:08','email','coach9@gmail.com','{}',1,NULL,NULL,NULL),(876,'coach10@gmail.com','Lesly','Stokes','M',1977,'2018-04-21 16:31:09','2018-04-21 16:31:09','Coach','2125555666','$2a$11$XofduVCEDAOqpDTymc961Oklr8m3VrWBfNOHx2bvDC6sfOn.8N1xK',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.6',NULL,NULL,NULL,'2018-04-21 16:31:08','2018-04-21 16:31:08','email','coach10@gmail.com','{}',1,NULL,NULL,NULL),(877,'runner@gmail.com','Runner','Test','M',1969,'2018-04-21 16:31:09','2018-04-21 16:31:27','Runner','2125555510','$2a$11$zzaekIcMSnqBUWo.xtQwne15BjO1b86yDzhDujzR52VmYX.fXeo1a',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'5.3',NULL,NULL,NULL,'2018-04-21 16:31:09','2018-04-21 16:31:09','email','runner@gmail.com','{}',1,1,1,NULL),(878,'root@ubernurse.com','Michale','Murazik','F',1993,'2018-04-21 16:31:09','2018-04-21 16:31:09','Super User','2125555703','$2a$11$9Md/1hMpVvJlox7hhOiZ/uTwd66HJHof/ShrM5Rk.Wp9l9G5hC0Fa',NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,'6.5',NULL,NULL,NULL,'2018-04-21 16:31:09','2018-04-21 16:31:09','email','root@ubernurse.com','{}',1,NULL,NULL,NULL),(879,'thimmaiah@yahoo.com','Mohith','Thimmaiah','M',1975,'2018-04-24 03:00:28','2018-04-24 03:10:35','Runner','8887257121','$2a$11$4OygwnZWzki6DtZ4rtxikO05flZu43N6da2cJBSu3c/RdfbUfYmma',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'5ft 5Inches',-1,'2018-04-24 03:10:35','zbsFHnLMHQyw6d8_vZPp',NULL,'2018-04-24 03:00:28','email','thimmaiah@yahoo.com','{}',1,NULL,NULL,NULL),(886,'thimmaiah1@yahoo.com','Mohith','Thimmaiah','M',1975,'2018-04-24 03:11:45','2018-04-24 03:11:45','Runner','9999999999','$2a$11$1mfVcBrzzZZo/1N/PR2pxeejyT8qydHVxs3YsKC.SOeY9IV22g1Mq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'5\" 5\'',-1,NULL,'_qVk2MNCXSrn4M5WfsS7',NULL,'2018-04-24 03:11:45','email','thimmaiah1@yahoo.com','{}',1,NULL,NULL,NULL),(887,'thimmaiah2@yahoo.com','Mohith','Thimmaiah','M',1975,'2018-04-28 03:29:21','2018-04-28 03:29:21','Runner','9999999999','$2a$11$qV4j2zt/ZQkpLTa/eueYMecsHxKPrs6xaRuPStIBv4O9axvryd0ea',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'5\' 5\"',NULL,NULL,'DNns85NzjsdYWW56VCh6',NULL,'2018-04-28 03:29:21','email','thimmaiah2@yahoo.com','{}',1,NULL,NULL,NULL),(888,'thimmaiah3@yahoo.com','Mohith','Thimmaiah','M',1975,'2018-04-28 03:33:18','2018-04-28 03:33:18','Runner','9999999999','$2a$11$L09O0BUp67YkySje5TD9zOPVwbKZjZCK/6.QXekw9k1TTujLeSwCe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'5 5',-1,NULL,'qyoyuieRGzYcq6RNNft5',NULL,'2018-04-28 03:33:18','email','thimmaiah3@yahoo.com','{}',1,NULL,NULL,NULL),(889,'thimmaiah4@yahoo.com','Mohith','Thimmaiah','M',1975,'2018-04-28 03:35:11','2018-04-28 03:35:20','Runner','9999999999','$2a$11$26hi1MlekeAkF3SjzSmh3umhfxGhUsLq5bAkjWtxNkZHLZk5w4pGu',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'5 5',NULL,NULL,'w12uhNbeLwV_u8YvZ-nx','2018-04-28 03:35:20','2018-04-28 03:35:11','email','thimmaiah4@yahoo.com','{\"I_uQnh9Nwd4XBXe7FJoQqA\":{\"token\":\"$2a$10$by1oYn3zvciiTEFmHhbkpuCRK1elg4x4Gas0zPSFifb/zwPd5WCQu\",\"expiry\":1526096120}}',1,NULL,NULL,NULL),(890,'thimmaiah5@yahoo.com','Mohith','Thimmaiah','M',1975,'2018-04-28 05:55:01','2018-04-28 05:55:01','Runner','9999999999','$2a$11$z4pDjGzUpPw0G6f4hU.J1u//0qNxSnRoHTWilGbfXrRauEUYsHfj6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'5 5',186,NULL,'rHnR1sqzyynp5Yanjd3k',NULL,'2018-04-28 05:55:01','email','thimmaiah5@yahoo.com','{}',1,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (489,849,'Tempo',3,8,5,9,90,1,'2018-04-21 16:31:11','2018-04-21 16:31:11',5,125),(490,849,'Interval',1,8,3,9,40,1,'2018-04-21 16:31:11','2018-04-21 16:31:11',5,125),(491,849,'Long',8,9,5,4,45,1,'2018-04-21 16:31:11','2018-04-21 16:31:11',5,125),(492,849,'Speed',1,8,3,9,45,1,'2018-04-21 16:31:11','2018-04-21 16:31:11',5,125),(493,850,'Tempo',3,9,2,8,45,1,'2018-04-21 16:31:13','2018-04-21 16:31:13',5,126),(494,850,'Interval',3,7,2,9,90,1,'2018-04-21 16:31:13','2018-04-21 16:31:13',4,126),(495,850,'Long',3,7,3,4,45,1,'2018-04-21 16:31:13','2018-04-21 16:31:13',5,126),(496,850,'Speed',3,7,5,8,40,1,'2018-04-21 16:31:13','2018-04-21 16:31:13',5,126),(497,853,'Tempo',1,8,2,9,45,1,'2018-04-21 16:31:15','2018-04-21 16:31:15',4,127),(498,853,'Interval',10,9,5,4,40,1,'2018-04-21 16:31:15','2018-04-21 16:31:15',4,127),(499,853,'Long',8,9,5,8,90,1,'2018-04-21 16:31:15','2018-04-21 16:31:15',4,127),(500,853,'Speed',8,10,2,4,40,1,'2018-04-21 16:31:15','2018-04-21 16:31:15',5,127),(501,854,'Tempo',3,7,5,4,90,1,'2018-04-21 16:31:16','2018-04-21 16:31:16',5,128),(502,854,'Interval',1,9,3,8,60,1,'2018-04-21 16:31:16','2018-04-21 16:31:16',5,128),(503,854,'Long',3,9,5,9,60,1,'2018-04-21 16:31:16','2018-04-21 16:31:16',4,128),(504,854,'Speed',10,8,3,9,45,1,'2018-04-21 16:31:16','2018-04-21 16:31:16',5,128),(505,857,'Tempo',10,9,3,4,45,1,'2018-04-21 16:31:18','2018-04-21 16:31:18',4,129),(506,857,'Interval',8,10,2,8,45,1,'2018-04-21 16:31:18','2018-04-21 16:31:18',5,129),(507,857,'Long',3,7,3,9,60,1,'2018-04-21 16:31:18','2018-04-21 16:31:18',5,129),(508,857,'Speed',3,9,5,8,45,1,'2018-04-21 16:31:18','2018-04-21 16:31:18',5,129),(509,858,'Tempo',8,7,3,8,40,1,'2018-04-21 16:31:19','2018-04-21 16:31:19',4,130),(510,858,'Interval',1,8,3,8,45,1,'2018-04-21 16:31:19','2018-04-21 16:31:19',5,130),(511,858,'Long',3,7,3,4,45,1,'2018-04-21 16:31:19','2018-04-21 16:31:19',4,130),(512,858,'Speed',3,7,2,8,60,1,'2018-04-21 16:31:19','2018-04-21 16:31:19',4,130),(513,861,'Tempo',1,9,5,4,90,1,'2018-04-21 16:31:21','2018-04-21 16:31:21',4,131),(514,861,'Interval',10,9,2,4,90,1,'2018-04-21 16:31:21','2018-04-21 16:31:21',5,131),(515,861,'Long',1,9,3,8,90,1,'2018-04-21 16:31:21','2018-04-21 16:31:21',4,131),(516,861,'Speed',3,10,3,8,90,1,'2018-04-21 16:31:21','2018-04-21 16:31:21',4,131),(517,862,'Tempo',3,8,3,8,40,1,'2018-04-21 16:31:23','2018-04-21 16:31:23',5,132),(518,862,'Interval',8,8,5,9,60,1,'2018-04-21 16:31:23','2018-04-21 16:31:23',4,132),(519,862,'Long',3,9,2,9,60,1,'2018-04-21 16:31:23','2018-04-21 16:31:23',5,132),(520,862,'Speed',10,8,3,4,90,1,'2018-04-21 16:31:23','2018-04-21 16:31:23',4,132),(521,865,'Tempo',8,9,2,8,45,1,'2018-04-21 16:31:24','2018-04-21 16:31:24',5,133),(522,865,'Interval',3,8,3,8,60,1,'2018-04-21 16:31:24','2018-04-21 16:31:24',4,133),(523,865,'Long',1,7,5,9,45,1,'2018-04-21 16:31:24','2018-04-21 16:31:24',4,133),(524,865,'Speed',1,7,3,4,40,1,'2018-04-21 16:31:24','2018-04-21 16:31:24',4,133),(525,866,'Tempo',8,7,3,8,45,1,'2018-04-21 16:31:26','2018-04-21 16:31:26',4,134),(526,866,'Interval',8,10,3,8,40,1,'2018-04-21 16:31:26','2018-04-21 16:31:26',4,134),(527,866,'Long',1,9,3,8,45,1,'2018-04-21 16:31:26','2018-04-21 16:31:26',5,134),(528,866,'Speed',3,10,5,9,60,1,'2018-04-21 16:31:26','2018-04-21 16:31:26',5,134),(529,877,'Tempo',3,10,3,4,90,1,'2018-04-21 16:31:29','2018-04-21 16:31:29',4,135),(530,877,'Interval',8,7,3,9,45,1,'2018-04-21 16:31:29','2018-04-21 16:31:29',5,135),(531,877,'Long',1,10,2,9,40,1,'2018-04-21 16:31:29','2018-04-21 16:31:29',4,135),(532,877,'Speed',8,7,5,9,90,1,'2018-04-21 16:31:29','2018-04-21 16:31:29',4,135);
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

-- Dump completed on 2018-04-28 13:47:37
