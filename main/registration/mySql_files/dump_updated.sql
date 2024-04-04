-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: studentapplication
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Admin'),(2,'Student');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add civil engineering',7,'add_civilengineering'),(26,'Can change civil engineering',7,'change_civilengineering'),(27,'Can delete civil engineering',7,'delete_civilengineering'),(28,'Can view civil engineering',7,'view_civilengineering'),(29,'Can add electrical engineering',8,'add_electricalengineering'),(30,'Can change electrical engineering',8,'change_electricalengineering'),(31,'Can delete electrical engineering',8,'delete_electricalengineering'),(32,'Can view electrical engineering',8,'view_electricalengineering'),(33,'Can add computer engineering',9,'add_computerengineering'),(34,'Can change computer engineering',9,'change_computerengineering'),(35,'Can delete computer engineering',9,'delete_computerengineering'),(36,'Can view computer engineering',9,'view_computerengineering'),(37,'Can add instrumentation engineering',10,'add_instrumentationengineering'),(38,'Can change instrumentation engineering',10,'change_instrumentationengineering'),(39,'Can delete instrumentation engineering',10,'delete_instrumentationengineering'),(40,'Can view instrumentation engineering',10,'view_instrumentationengineering'),(41,'Can add manfacturing engineering',11,'add_manfacturingengineering'),(42,'Can change manfacturing engineering',11,'change_manfacturingengineering'),(43,'Can delete manfacturing engineering',11,'delete_manfacturingengineering'),(44,'Can view manfacturing engineering',11,'view_manfacturingengineering'),(45,'Can add mechanical engineering',12,'add_mechanicalengineering'),(46,'Can change mechanical engineering',12,'change_mechanicalengineering'),(47,'Can delete mechanical engineering',12,'delete_mechanicalengineering'),(48,'Can view mechanical engineering',12,'view_mechanicalengineering'),(49,'Can add application',13,'add_application'),(50,'Can change application',13,'change_application'),(51,'Can delete application',13,'delete_application'),(52,'Can view application',13,'view_application'),(53,'Can add check in out',14,'add_checkinout'),(54,'Can change check in out',14,'change_checkinout'),(55,'Can delete check in out',14,'delete_checkinout'),(56,'Can view check in out',14,'view_checkinout'),(57,'Can add room',15,'add_room'),(58,'Can change room',15,'change_room'),(59,'Can delete room',15,'delete_room'),(60,'Can view room',15,'view_room'),(61,'Can add roommate request',16,'add_roommaterequest'),(62,'Can change roommate request',16,'change_roommaterequest'),(63,'Can delete roommate request',16,'delete_roommaterequest'),(64,'Can view roommate request',16,'view_roommaterequest'),(65,'Can add first year',17,'add_firstyear'),(66,'Can change first year',17,'change_firstyear'),(67,'Can delete first year',17,'delete_firstyear'),(68,'Can view first year',17,'view_firstyear'),(69,'Can add second year',18,'add_secondyear'),(70,'Can change second year',18,'change_secondyear'),(71,'Can delete second year',18,'delete_secondyear'),(72,'Can view second year',18,'view_secondyear'),(73,'Can add second_ year',19,'add_second_year'),(74,'Can change second_ year',19,'change_second_year'),(75,'Can delete second_ year',19,'delete_second_year'),(76,'Can view second_ year',19,'view_second_year'),(77,'Can add third_ year',20,'add_third_year'),(78,'Can change third_ year',20,'change_third_year'),(79,'Can delete third_ year',20,'delete_third_year'),(80,'Can view third_ year',20,'view_third_year');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$lg88FYIHK325qmYn3qKtHj$JJPG6VLTtbnsRIgzOOtwMOoZtK3G5kH3cVU3ZTR8Iso=','2024-03-05 04:02:45.434630',0,'gundaditya','','','aditya@gmail.com',0,1,'2024-03-05 04:02:17.757003'),(2,'pbkdf2_sha256$720000$c1xUFeJxMzXjhTg3Rg6AGk$kxy5Zh3OTqTp0H2Dtuxf8fju5HdgbO3ulkxQhcSQIHw=','2024-03-05 10:41:33.095148',0,'riteshdav','','','aditya@gmail.com',0,1,'2024-03-05 10:13:55.570353'),(3,'pbkdf2_sha256$720000$VAYMYyth8oRjBx0gGZrlOS$7ZAcb3UiSEMXtZcqSZ4gaInH7LQpHDpU6zoq61KvR7Q=','2024-03-06 12:36:57.242650',0,'jayko@2004','','','aditya@gmail.com',0,1,'2024-03-06 12:36:35.353551'),(4,'pbkdf2_sha256$720000$H4Rd8ORzLXnBQDGz7eKMB1$XKi2e7hZ2lT+M3Uwlf8rfzWUNUrPaJM/5IkLGwghp6E=','2024-03-27 01:52:20.569355',0,'adityagund','','','aditya@gmail.com',0,1,'2024-03-07 11:34:51.995379'),(5,'pbkdf2_sha256$720000$1znVuExbmnrBj0VAfsC2zr$MpEShIyLCCdOaOHQhiY5QpJFcrz9hzFVQ/CUvusq6Jk=','2024-03-28 23:36:16.940597',0,'EN23147051','','','gundaditya014@gmail.com',0,1,'2024-03-27 02:09:19.394270'),(10,'pbkdf2_sha256$720000$WmtnDHJXsZJNFTtv4jq2vK$d9ebMuH1dFjDC6f27CEWxBONJj7MKXGsaYO2L22cqXg=','2024-03-28 23:40:01.215572',0,'EN23131626','','','gundaditya014@gmail.com',0,1,'2024-03-27 19:34:42.803957'),(13,'pbkdf2_sha256$720000$USxp9JyNkt6VmHUfI2DlPE$9W2seHynro4A137n9PNisoF3QrtAAerSgjN3fJvX42U=',NULL,0,'EN23115055','','','gundaditya014@gmail.com',0,1,'2024-03-28 23:35:47.183126'),(16,'pbkdf2_sha256$720000$l6C6P5O4xfg0yDoUQlBkyM$+syPh6JjCDvmWJtna4u1HPVeh1OhWsCzSQupvLcwqD0=','2024-04-02 14:46:32.078895',0,'EN23177796','','','gundaditya014@gmail.com',0,1,'2024-03-28 23:47:22.610955'),(18,'pbkdf2_sha256$720000$l4uWiA2sC2ZFiAoRG2YNKu$xM8cWTzJvjy4Aclk5nUp/HrWmN2JkL6Byvt+Y7qchfQ=','2024-04-01 04:15:11.517385',0,'EN23167975','','','avadhootsghewade4757@gmail.com',0,1,'2024-04-01 04:09:17.750510'),(20,'pbkdf2_sha256$720000$0uQbQW8W8tjmskovPieXzT$cx/uqN8aH+jXCJ4q9sWF/tbP6RyNwKTqLs2uU+d0mlM=','2024-04-01 04:23:45.163928',0,'EN23108587','','','avadhootsghewade4757@gmail.com',0,1,'2024-04-01 04:21:52.235563'),(21,'pbkdf2_sha256$720000$W5oVVBX8Ie7rgQGLmpVlVN$EThphzkRZJMthiDik8fT1cXsnOBYrrJOBr8va55AiJo=',NULL,0,'EN23141717','','','avadhootsghewade4757@gmail.com',0,1,'2024-04-01 04:46:38.753615');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,21,2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(14,'registration','checkinout'),(7,'registration','civilengineering'),(9,'registration','computerengineering'),(8,'registration','electricalengineering'),(17,'registration','firstyear'),(10,'registration','instrumentationengineering'),(11,'registration','manfacturingengineering'),(12,'registration','mechanicalengineering'),(19,'registration','second_year'),(18,'registration','secondyear'),(20,'registration','third_year'),(6,'sessions','session'),(13,'shortlisting','application'),(15,'shortlisting','room'),(16,'shortlisting','roommaterequest');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-04 11:24:08.205758'),(2,'auth','0001_initial','2024-03-04 11:24:09.119986'),(3,'admin','0001_initial','2024-03-04 11:24:09.440279'),(4,'admin','0002_logentry_remove_auto_add','2024-03-04 11:24:09.448802'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-04 11:24:09.454822'),(6,'contenttypes','0002_remove_content_type_name','2024-03-04 11:24:09.655988'),(7,'auth','0002_alter_permission_name_max_length','2024-03-04 11:24:09.730197'),(8,'auth','0003_alter_user_email_max_length','2024-03-04 11:24:09.751221'),(9,'auth','0004_alter_user_username_opts','2024-03-04 11:24:09.758547'),(10,'auth','0005_alter_user_last_login_null','2024-03-04 11:24:09.811716'),(11,'auth','0006_require_contenttypes_0002','2024-03-04 11:24:09.813716'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-04 11:24:09.820653'),(13,'auth','0008_alter_user_username_max_length','2024-03-04 11:24:09.892899'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-04 11:24:09.966910'),(15,'auth','0010_alter_group_name_max_length','2024-03-04 11:24:10.001076'),(16,'auth','0011_update_proxy_permissions','2024-03-04 11:24:10.014381'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-04 11:24:10.136748'),(18,'registration','0001_initial','2024-03-04 11:24:10.227261'),(19,'registration','0002_delete_customuser','2024-03-04 11:24:10.243232'),(20,'registration','0003_initial','2024-03-04 11:24:10.267828'),(21,'registration','0004_studentsdata_delete_hey','2024-03-04 11:24:10.306510'),(22,'registration','0005_data_delete_studentsdata','2024-03-04 11:24:10.390701'),(23,'registration','0006_remove_data_application_id_remove_data_email_id_and_more','2024-03-04 11:24:10.459354'),(24,'registration','0007_delete_data','2024-03-04 11:24:10.476916'),(25,'sessions','0001_initial','2024-03-04 11:24:10.615462'),(26,'registration','0008_initial','2024-03-04 12:50:06.360403'),(27,'registration','0009_electricalengineering_delete_civilengineering','2024-03-04 13:13:27.912428'),(28,'registration','0010_civilengineering','2024-03-04 13:13:27.927978'),(29,'registration','0011_computerengineering_instrumentationengineering_and_more','2024-03-04 13:19:15.484317'),(30,'registration','0012_delete_civilengineering','2024-03-04 16:21:56.185679'),(31,'registration','0013_civilengineering','2024-03-04 16:22:28.526402'),(32,'registration','0014_civilengineering_verification_status_and_more','2024-03-05 05:20:28.658022'),(33,'shortlisting','0001_initial','2024-03-05 05:20:28.742938'),(34,'shortlisting','0002_rename_application_no_application_application_id','2024-03-05 05:20:28.771636'),(35,'registration','0002_alter_civilengineering_verified','2024-03-12 13:37:59.848115'),(36,'registration','0003_alter_civilengineering_verified','2024-03-12 13:37:59.860504'),(37,'registration','0004_civilengineering_newfield','2024-03-12 13:37:59.895898'),(38,'registration','0005_remove_civilengineering_newfield','2024-03-12 13:37:59.912892'),(39,'registration','0006_auto_20240312_1908','2024-03-12 13:39:02.618396'),(40,'shortlisting','0002_auto_20240312_1908','2024-03-12 13:39:02.627936'),(41,'registration','0014_auto_20240305_2210','2024-03-12 13:41:59.472753'),(42,'registration','0015_auto_20240305_2213','2024-03-12 13:41:59.619771'),(43,'registration','0016_merge_20240312_1911','2024-03-12 13:41:59.625294'),(44,'registration','0017_remove_civilengineering_verification_status_and_more','2024-03-12 13:41:59.789396'),(45,'registration','0016_admin','2024-03-27 01:03:38.846284'),(46,'registration','0017_checkinout_delete_admin','2024-03-27 01:03:38.882851'),(47,'registration','0018_checkinout_mis_checkinout_year_and_more','2024-03-27 01:03:38.944247'),(48,'registration','0019_rename_reson_checkinout_reason','2024-03-27 01:03:38.972307'),(49,'registration','0020_alter_checkinout_check_out_time','2024-03-27 01:03:39.026720'),(50,'registration','0021_alter_checkinout_check_out_time','2024-03-27 01:03:39.031039'),(51,'registration','0022_alter_checkinout_check_out_time','2024-03-27 01:03:39.068057'),(52,'registration','0018_auto_20240323_1759','2024-03-27 01:03:39.755841'),(53,'registration','0023_merge_20240325_1337','2024-03-27 01:03:39.760360'),(54,'registration','0024_alter_checkinout_mis','2024-03-27 01:03:39.766791'),(55,'shortlisting','0003_auto_20240325_1525','2024-03-27 01:03:39.841491'),(56,'registration','0025_firstyear','2024-04-01 10:37:29.385980'),(57,'registration','0026_delete_firstyear','2024-04-01 10:52:17.293009'),(58,'registration','0027_firstyear','2024-04-01 13:15:45.324256'),(59,'registration','0028_secondyear','2024-04-02 05:28:23.866513'),(60,'registration','0028_second_year','2024-04-03 02:59:13.334714'),(61,'registration','0029_third_year','2024-04-03 04:34:30.933227'),(62,'registration','0030_delete_third_year','2024-04-03 04:40:08.459433'),(63,'registration','0031_third_year','2024-04-03 04:40:27.269935'),(64,'registration','0032_delete_third_year','2024-04-03 04:50:54.750945'),(65,'registration','0033_third_year','2024-04-03 04:51:10.707334'),(66,'registration','0034_delete_third_year','2024-04-03 04:53:24.078680'),(67,'registration','0035_third_year','2024-04-03 04:53:33.855289'),(68,'registration','0036_delete_third_year','2024-04-03 04:54:42.964534'),(69,'registration','0037_third_year','2024-04-03 04:54:50.661665'),(70,'registration','0038_delete_third_year','2024-04-03 04:57:01.488050'),(71,'registration','0039_third_year','2024-04-03 04:57:11.370376');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('vhgzkv54vkfr4xbj35g84unkjuvduv1k','.eJxVjMsOwiAQRf-FtSE8hBlcuu83EGAGqZo2Ke3K-O_apAvd3nPOfYmYtrXFrfMSRxIXob04_Y45lQdPO6F7mm6zLPO0LmOWuyIP2uUwEz-vh_t30FJv39qiOlttA6AOVSmNmE3yxFA1ayK0UHMu4KtRwOhL5uIcJAXG1oDkxPsD6Kw3uw:1rrfPE:HOvR1NmRbl8Sf--_tfno9EwwTAaLRh7fnhHhcQGXsco','2024-04-16 14:46:32.086090');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_checkinout`
--

DROP TABLE IF EXISTS `registration_checkinout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_checkinout` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `check_in_time` datetime(6) NOT NULL,
  `check_out_time` datetime(6) NOT NULL,
  `mis` int NOT NULL,
  `year` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_checkinout`
--

LOCK TABLES `registration_checkinout` WRITE;
/*!40000 ALTER TABLE `registration_checkinout` DISABLE KEYS */;
INSERT INTO `registration_checkinout` VALUES (1,'1','Night Out','2024-04-02 21:08:00.000000','2024-04-02 15:38:46.207906',612203057,'4');
/*!40000 ALTER TABLE `registration_checkinout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_civilengineering`
--

DROP TABLE IF EXISTS `registration_civilengineering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_civilengineering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `application_id` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentile` double NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_civilengineering_user_id_6361b73b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_civilengineering`
--

LOCK TABLES `registration_civilengineering` WRITE;
/*!40000 ALTER TABLE `registration_civilengineering` DISABLE KEYS */;
INSERT INTO `registration_civilengineering` VALUES (1,1428,'EN23185238','fbjznsfxky@gmail.com','KADAM ANISH ANIL',99.411404,1,1,NULL),(2,1940,'EN23223626','szgozxefgj@gmail.com','PATIL ARNAV AJAY',99.2111179,1,1,NULL),(3,2774,'EN23149998','mswupjxynd@gmail.com','SURYAWANSHI SHIVRAJ SANJAY',98.8972243,1,1,NULL),(4,2941,'EN23173012','cdmlhbpiin@gmail.com','LANJEWAR SAHIL VINOD',98.8527647,1,1,NULL),(5,3272,'EN23217414','ythejtkkdk@gmail.com','AASHVARDHAN SINGH CHAUHAN',98.7149343,1,1,NULL),(6,3301,'EN23145658','miqfpakxqk@gmail.com','DEOGHARE VEDANT RAKESH',98.7018851,1,1,NULL),(7,3396,'EN23173586','djootfvsmm@gmail.com','ANSHUMAN SARANG PATIL',98.6673674,1,1,NULL),(8,3422,'EN23126225','qsgvnmaiwq@gmail.com','OZA OM SUNIL',98.6614529,1,1,NULL),(9,3690,'EN23215591','jrkhuuzeol@gmail.com','PATIL PIYUSH VIJAY',98.5636938,1,1,NULL),(10,3930,'EN23213221','flojewhzde@gmail.com','BHAVESH KAPURE',98.4796982,1,1,NULL),(11,3935,'EN23234117','foalgrhtop@gmail.com','NEHARKAR HARSHAL PREMCHAND',98.4796982,0,0,NULL),(12,3990,'EN23160416','gsimassulr@gmail.com','PAWAR SAIRAJ SANTOSH',98.4546548,0,0,NULL),(13,4102,'EN23112605','otwgsqxcwb@gmail.com','MUSALE HIMALAY KISHOR',98.3975197,0,0,NULL),(14,4172,'EN23116857','itlplbgkff@gmail.com','CHITTORA RITESH PURUSHOTTAM',98.3772737,0,0,NULL),(15,4191,'EN23111306','xzaagvwtlh@gmail.com','TAPKIR VEDANT SANDEEP',98.3681757,0,0,NULL),(16,4362,'EN23214726','ahzxohnwrv@gmail.com','SHAURYEARAJ YUVRAJ NEEMA KUMAR',98.2961113,0,0,NULL),(17,4654,'EN23163281','blkttmeoks@gmail.com','DHAGE ATHARV RAMESH',98.192048,0,0,NULL),(18,4676,'EN23183634','yylsxsrlfz@gmail.com','KEKADE SNEHIT MANOJ',98.1917154,0,0,NULL),(19,4959,'EN23110896','hgescnmboq@gmail.com','CHANAKYA NAVGHARE',98.0761344,0,0,NULL),(20,4998,'EN23129839','xkigvjobuo@gmail.com','ANJALI JADHAV',98.0707133,0,0,NULL),(21,5046,'EN23168100','nwijxjhlqr@gmail.com','WASADE UTKARSH JITENDRA',98.0592365,0,0,NULL),(22,5168,'EN23146388','cckbxodnig@gmail.com','VIBHANDIK KAUSTUBH SANJAY',98.0055132,0,0,NULL),(23,5340,'EN23134835','ipegcciqie@gmail.com','NIRMIT DHARMALE',97.9358267,0,0,NULL),(24,5600,'EN23171272','nuqrkxtdbq@gmail.com','RATHI PRANJAL SANTOSH',97.8417807,0,0,NULL),(25,5691,'EN23201433','bejzvxarer@gmail.com','KOLHE HARIDARSHAN KAILAS',97.7965436,0,0,NULL),(26,5736,'EN23116852','nvqnylgalc@gmail.com','KAKADE SAMEERA SATISH',97.7845902,0,0,NULL),(27,5864,'EN23137499','zqufknrnbi@gmail.com','RITISHAA ANAND',97.7443048,0,0,NULL),(28,6348,'EN23217922','ungfleqjzd@gmail.com','PATIL RASHIKA PRASHANT',97.5524607,0,0,NULL),(29,6423,'EN23223671','spgfemjrcq@gmail.com','GHULE ATHARVA DILIPKUMAR',97.5196409,0,0,NULL),(30,6592,'EN23165665','spimjmcgxk@gmail.com','PADULKAR SHIRISH SUNIL',97.4823503,0,0,NULL);
/*!40000 ALTER TABLE `registration_civilengineering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_computerengineering`
--

DROP TABLE IF EXISTS `registration_computerengineering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_computerengineering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `application_id` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentile` double NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_compute_user_id_5d5695c5_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_computerengineering`
--

LOCK TABLES `registration_computerengineering` WRITE;
/*!40000 ALTER TABLE `registration_computerengineering` DISABLE KEYS */;
INSERT INTO `registration_computerengineering` VALUES (1,19,'EN23147051','gundaditya014@gmail.com','MEMON SAHIL SOHAIL SALIM',99.9918923,1,1,NULL),(2,20,'EN23131626','gundaditya014@gmail.com','DUDUSKAR VEDANT MANOJ',99.9918251,1,1,NULL),(3,22,'EN23115055','gundaditya014@gmail.com','BORKAR TANISHQ NILESH',99.9887938,1,1,NULL),(4,25,'EN23177796','gundaditya014@gmail.com','ARYAN ARUN MEHTA',99.9882168,1,1,NULL),(5,27,'EN23199748','jydhdhbohz@gmail.com','ANUPRIYA KARN',99.9878385,1,1,NULL),(6,29,'EN23122395','flxoerlcmv@gmail.com','GODASE ADITYA VASANT',99.9849962,1,1,NULL),(7,34,'EN23167975','avadhootsghewade4757@gmail.com','PHULE ANJALI RAVI',99.9837847,1,1,NULL),(8,45,'EN23108587','avadhootsghewade4757@gmail.com','DIGHE SAHIL ROHIDAS',99.97397,1,1,NULL),(9,46,'EN23127902','ztbzhxpxye@gmail.com','ABHISHEK ABHAY SINHA',99.9738523,1,1,NULL),(10,59,'EN23118507','ppgndsupyd@gmail.com','KADAM DISHA SUHAS',99.9663815,1,1,NULL),(11,64,'EN23141488','htvwkvcizz@gmail.com','DEODHAR ALHAD KAUSTUBH',99.9623735,0,0,NULL),(12,73,'EN23187710','hakdlktfpp@gmail.com','PATIL BHAGYASHREE RAMDAS',99.9587397,0,0,NULL),(13,84,'EN23158013','gxmfmcomff@gmail.com','SATHAYE AKSHAY SIDDHARTH',99.9510855,0,0,NULL),(14,92,'EN23177806','ddohcrobir@gmail.com','SAGARE MAYURESH RAVINDRA',99.9476244,0,0,NULL),(15,94,'EN23105417','utnvpebebc@gmail.com','JYOTIKA SHARAN',99.9473605,0,0,NULL),(16,105,'EN23141717','avadhootsghewade4757@gmail.com','INGLE AYUSH BHASKAR',99.9410632,0,1,21),(17,108,'EN23131436','nzswbcwywz@gmail.com','NINAD JAYANT SONKUSARE',99.9405028,0,0,NULL),(18,118,'EN23104499','eeowsgjfoc@gmail.com','AMAN BIPIN MORGHADE',99.9324831,0,0,NULL),(19,123,'EN23117272','siopnjwpqz@gmail.com','RIYA ASHUTOSH KULKARNI',99.9323206,0,0,NULL),(20,130,'EN23175735','mnmansbpcz@gmail.com','MOGHE GARGI MANISH',99.9285096,0,0,NULL),(21,139,'EN23130817','piyvgstozc@gmail.com','KARAD TANMAY KANTILAL',99.9214454,0,0,NULL),(22,146,'EN23194619','mttntltcuk@gmail.com','CHAVAN ROHIT SARJERAO',99.9176955,0,0,NULL),(23,147,'EN23176826','nvcrzmrkyy@gmail.com','PAWAR SIDDHI VISHWAMBHAR',99.9176955,0,0,NULL),(24,154,'EN23145959','xypcerotnw@gmail.com','DAVHALE ANSH PRADIP',99.9172217,0,0,NULL),(25,165,'EN23159348','uwsvctewqc@gmail.com','URKUNDE MOHIT BHASKAR',99.9102132,0,0,NULL),(26,179,'EN23129264','weajvhgwpg@gmail.com','DESHMUKH SHARDUL KIRAN',99.9018068,0,0,NULL),(27,180,'EN23123721','fjlzojmgxv@gmail.com','PATIL PARTH SUNIL',99.9018068,0,0,NULL),(28,181,'EN23183380','kltojiatsq@gmail.com','BHOSALE YASHWANT CHANDRAKANT',99.901772,0,0,NULL),(29,182,'EN23210714','bjfadykyhh@gmail.com','ROKADE RITESH DHANANJAY',99.8995984,0,0,NULL),(30,190,'EN23140670','hkxtpywdxc@gmail.com','MANE HARSHWARDHAN MANGESH',99.8954092,0,0,NULL);
/*!40000 ALTER TABLE `registration_computerengineering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_electricalengineering`
--

DROP TABLE IF EXISTS `registration_electricalengineering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_electricalengineering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `application_id` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentile` double NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_electri_user_id_4abbfe62_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_electricalengineering`
--

LOCK TABLES `registration_electricalengineering` WRITE;
/*!40000 ALTER TABLE `registration_electricalengineering` DISABLE KEYS */;
INSERT INTO `registration_electricalengineering` VALUES (1,690,'EN23224561','xobdrcgbkj@gmail.com','ATHARVA PRASHANT NIJASURE',99.6868126,1,1,NULL),(2,729,'EN23118519','rxcehmdghn@gmail.com','HARSHIT MISRA',99.6688866,1,1,NULL),(3,758,'EN23113538','wrvdcvvtzh@gmail.com','AARYA AJEET MAJALI',99.6581667,1,1,NULL),(4,787,'EN23218171','doazflyfhl@gmail.com','MANDAVKAR MIHIR MADHUKAR',99.6503234,1,1,NULL),(5,898,'EN23125430','cfmuhmeibe@gmail.com','KALE SHREYASH SHYAMRAO',99.6032993,1,1,NULL),(6,906,'EN23251349','zhzfffotey@gmail.com','UTEKAR OM VIJAY',99.6021122,1,1,NULL),(7,932,'EN23139345','yorwvgeqcz@gmail.com','NISHANT PRADHAN',99.5953403,1,1,NULL),(8,940,'EN23122501','jkdhdkwtsn@gmail.com','SHRUSHTI SANJAY THAKARE',99.592843,1,1,NULL),(9,976,'EN23195901','eauieazvxr@gmail.com','SARAF ANIRUDDHA ADITYA',99.5743473,1,1,NULL),(10,1018,'EN23187634','wifmmhyvnq@gmail.com','CHITNIS RAJDEEP HIMANSHU',99.5561665,1,1,NULL),(11,1040,'EN23130973','fvtabmyegd@gmail.com','MAHAJAN VEDASHREE VINAYAK',99.5500243,0,0,NULL),(12,1044,'EN23116801','xyynvlgnam@gmail.com','PRANAV PRASHANT NANKAR',99.5500243,0,0,NULL),(13,1173,'EN23199116','crcvlcmglt@gmail.com','CHAVAN PRATIK PANDURANG',99.5017105,0,0,NULL),(14,1177,'EN23192150','gujzvczhng@gmail.com','KULKARNI ASHUTOSH SHRIPAD',99.5017105,0,0,NULL),(15,1202,'EN23139917','kfmlqdfjkv@gmail.com','PHAPALE SAIDEEP SANTOSH',99.492042,0,0,NULL),(16,1242,'EN23199556','xuzhljieii@gmail.com','SONTAKKE RUJUTA VIJAYANAND',99.4725028,0,0,NULL),(17,1249,'EN23198333','uvfxsrgziw@gmail.com','DESHMUKH MANAS AMOL',99.469569,0,0,NULL),(18,1304,'EN23149304','jbvlfgaeve@gmail.com','KHANDAIT KARTIK NITYANAND',99.4594392,0,0,NULL),(19,1390,'EN23230282','dtoraykixj@gmail.com','KANIRE PRANAV DIPAK',99.4199018,0,0,NULL),(20,1417,'EN23137160','dhmlvzhsgf@gmail.com','TONDGAONKAR ROCHANA MAHESH',99.4148537,0,0,NULL),(21,1422,'EN23146843','aqyubabtti@gmail.com','SHELAR ARCHIT SANTOSH',99.4148537,0,0,NULL),(22,1435,'EN23126231','lnawoghixi@gmail.com','LAVISH ISHWAR PATIL',99.4059257,0,0,NULL),(23,1450,'EN23110431','huntduxgxw@gmail.com','KSHIRSAGAR PRATIK KEDARNATH',99.4029851,0,0,NULL),(24,1456,'EN23227915','kwqkkkxutn@gmail.com','ARYA SHAILESH KARANJKAR',99.3979757,0,0,NULL),(25,1628,'EN23174014','fgmepftmrl@gmail.com','JADHAO SIYA SANJAY',99.3276306,0,0,NULL),(26,1681,'EN23203593','swfnezvwfp@gmail.com','AMBADKAR ISHWARI DNYANESHWAR',99.3092834,0,0,NULL),(27,1726,'EN23150163','dejcapjbwq@gmail.com','BARUDWALE SNEHA PRAVIN',99.2929293,0,0,NULL),(28,1808,'EN23169969','yudfswaguk@gmail.com','DHAVANE GOURAV GURULING',99.2604828,0,0,NULL),(29,2038,'EN23147290','zadnwvcoqz@gmail.com','DHARMADHIKARI ASMI SUHAS',99.1702432,0,0,NULL),(30,2103,'EN23143431','cmdamwvnha@gmail.com','VAIDYA DEEP PREMNARAYAN',99.1558828,0,0,NULL);
/*!40000 ALTER TABLE `registration_electricalengineering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_firstyear`
--

DROP TABLE IF EXISTS `registration_firstyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_firstyear` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `application_id` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentile` double NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_firstyear_user_id_e13ba54a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_firstyear`
--

LOCK TABLES `registration_firstyear` WRITE;
/*!40000 ALTER TABLE `registration_firstyear` DISABLE KEYS */;
INSERT INTO `registration_firstyear` VALUES (1,1428,'EN23185238','fbjznsfxky@gmail.com','KADAM ANISH ANIL',99.411404,1,1,'CivilEngineering',NULL),(2,1940,'EN23223626','szgozxefgj@gmail.com','PATIL ARNAV AJAY',99.2111179,1,1,'CivilEngineering',NULL),(3,2774,'EN23149998','mswupjxynd@gmail.com','SURYAWANSHI SHIVRAJ SANJAY',98.8972243,1,1,'CivilEngineering',NULL),(4,2941,'EN23173012','cdmlhbpiin@gmail.com','LANJEWAR SAHIL VINOD',98.8527647,1,1,'CivilEngineering',NULL),(5,3272,'EN23217414','ythejtkkdk@gmail.com','AASHVARDHAN SINGH CHAUHAN',98.7149343,1,1,'CivilEngineering',NULL),(6,3301,'EN23145658','miqfpakxqk@gmail.com','DEOGHARE VEDANT RAKESH',98.7018851,1,1,'CivilEngineering',NULL),(7,3396,'EN23173586','djootfvsmm@gmail.com','ANSHUMAN SARANG PATIL',98.6673674,1,1,'CivilEngineering',NULL),(8,3422,'EN23126225','qsgvnmaiwq@gmail.com','OZA OM SUNIL',98.6614529,1,1,'CivilEngineering',NULL),(9,3690,'EN23215591','jrkhuuzeol@gmail.com','PATIL PIYUSH VIJAY',98.5636938,1,1,'CivilEngineering',NULL),(10,3930,'EN23213221','flojewhzde@gmail.com','BHAVESH KAPURE',98.4796982,1,1,'CivilEngineering',NULL),(11,3935,'EN23234117','foalgrhtop@gmail.com','NEHARKAR HARSHAL PREMCHAND',98.4796982,0,0,'CivilEngineering',NULL),(12,3990,'EN23160416','gsimassulr@gmail.com','PAWAR SAIRAJ SANTOSH',98.4546548,0,0,'CivilEngineering',NULL),(13,4102,'EN23112605','otwgsqxcwb@gmail.com','MUSALE HIMALAY KISHOR',98.3975197,0,0,'CivilEngineering',NULL),(14,4172,'EN23116857','itlplbgkff@gmail.com','CHITTORA RITESH PURUSHOTTAM',98.3772737,0,0,'CivilEngineering',NULL),(15,4191,'EN23111306','xzaagvwtlh@gmail.com','TAPKIR VEDANT SANDEEP',98.3681757,0,0,'CivilEngineering',NULL),(16,4362,'EN23214726','ahzxohnwrv@gmail.com','SHAURYEARAJ YUVRAJ NEEMA KUMAR',98.2961113,0,0,'CivilEngineering',NULL),(17,4654,'EN23163281','blkttmeoks@gmail.com','DHAGE ATHARV RAMESH',98.192048,0,0,'CivilEngineering',NULL),(18,4676,'EN23183634','yylsxsrlfz@gmail.com','KEKADE SNEHIT MANOJ',98.1917154,0,0,'CivilEngineering',NULL),(19,4959,'EN23110896','hgescnmboq@gmail.com','CHANAKYA NAVGHARE',98.0761344,0,0,'CivilEngineering',NULL),(20,4998,'EN23129839','xkigvjobuo@gmail.com','ANJALI JADHAV',98.0707133,0,0,'CivilEngineering',NULL),(21,5046,'EN23168100','nwijxjhlqr@gmail.com','WASADE UTKARSH JITENDRA',98.0592365,0,0,'CivilEngineering',NULL),(22,5168,'EN23146388','cckbxodnig@gmail.com','VIBHANDIK KAUSTUBH SANJAY',98.0055132,0,0,'CivilEngineering',NULL),(23,5340,'EN23134835','ipegcciqie@gmail.com','NIRMIT DHARMALE',97.9358267,0,0,'CivilEngineering',NULL),(24,5600,'EN23171272','nuqrkxtdbq@gmail.com','RATHI PRANJAL SANTOSH',97.8417807,0,0,'CivilEngineering',NULL),(25,5691,'EN23201433','bejzvxarer@gmail.com','KOLHE HARIDARSHAN KAILAS',97.7965436,0,0,'CivilEngineering',NULL),(26,5736,'EN23116852','nvqnylgalc@gmail.com','KAKADE SAMEERA SATISH',97.7845902,0,0,'CivilEngineering',NULL),(27,5864,'EN23137499','zqufknrnbi@gmail.com','RITISHAA ANAND',97.7443048,0,0,'CivilEngineering',NULL),(28,6348,'EN23217922','ungfleqjzd@gmail.com','PATIL RASHIKA PRASHANT',97.5524607,0,0,'CivilEngineering',NULL),(29,6423,'EN23223671','spgfemjrcq@gmail.com','GHULE ATHARVA DILIPKUMAR',97.5196409,0,0,'CivilEngineering',NULL),(30,6592,'EN23165665','spimjmcgxk@gmail.com','PADULKAR SHIRISH SUNIL',97.4823503,0,0,'CivilEngineering',NULL),(301,19,'EN23147051','gundaditya014@gmail.com','MEMON SAHIL SOHAIL SALIM',99.9918923,1,1,'ComputerEngineering',NULL),(302,20,'EN23131626','gundaditya014@gmail.com','DUDUSKAR VEDANT MANOJ',99.9918251,1,1,'ComputerEngineering',NULL),(303,22,'EN23115055','gundaditya014@gmail.com','BORKAR TANISHQ NILESH',99.9887938,1,1,'ComputerEngineering',NULL),(304,25,'EN23177796','gundaditya014@gmail.com','ARYAN ARUN MEHTA',99.9882168,1,1,'ComputerEngineering',NULL),(305,27,'EN23199748','jydhdhbohz@gmail.com','ANUPRIYA KARN',99.9878385,1,1,'ComputerEngineering',NULL),(306,29,'EN23122395','flxoerlcmv@gmail.com','GODASE ADITYA VASANT',99.9849962,1,1,'ComputerEngineering',NULL),(307,34,'EN23167975','avadhootsghewade4757@gmail.com','PHULE ANJALI RAVI',99.9837847,1,1,'ComputerEngineering',NULL),(308,45,'EN23108587','avadhootsghewade4757@gmail.com','DIGHE SAHIL ROHIDAS',99.97397,1,1,'ComputerEngineering',NULL),(309,46,'EN23127902','ztbzhxpxye@gmail.com','ABHISHEK ABHAY SINHA',99.9738523,1,1,'ComputerEngineering',NULL),(310,59,'EN23118507','ppgndsupyd@gmail.com','KADAM DISHA SUHAS',99.9663815,1,1,'ComputerEngineering',NULL),(311,64,'EN23141488','htvwkvcizz@gmail.com','DEODHAR ALHAD KAUSTUBH',99.9623735,0,0,'ComputerEngineering',NULL),(312,73,'EN23187710','hakdlktfpp@gmail.com','PATIL BHAGYASHREE RAMDAS',99.9587397,0,0,'ComputerEngineering',NULL),(313,84,'EN23158013','gxmfmcomff@gmail.com','SATHAYE AKSHAY SIDDHARTH',99.9510855,0,0,'ComputerEngineering',NULL),(314,92,'EN23177806','ddohcrobir@gmail.com','SAGARE MAYURESH RAVINDRA',99.9476244,0,0,'ComputerEngineering',NULL),(315,94,'EN23105417','utnvpebebc@gmail.com','JYOTIKA SHARAN',99.9473605,0,0,'ComputerEngineering',NULL),(316,105,'EN23141717','avadhootsghewade4757@gmail.com','INGLE AYUSH BHASKAR',99.9410632,1,0,'ComputerEngineering',21),(317,108,'EN23131436','nzswbcwywz@gmail.com','NINAD JAYANT SONKUSARE',99.9405028,0,0,'ComputerEngineering',NULL),(318,118,'EN23104499','eeowsgjfoc@gmail.com','AMAN BIPIN MORGHADE',99.9324831,0,0,'ComputerEngineering',NULL),(319,123,'EN23117272','siopnjwpqz@gmail.com','RIYA ASHUTOSH KULKARNI',99.9323206,0,0,'ComputerEngineering',NULL),(320,130,'EN23175735','mnmansbpcz@gmail.com','MOGHE GARGI MANISH',99.9285096,0,0,'ComputerEngineering',NULL),(321,139,'EN23130817','piyvgstozc@gmail.com','KARAD TANMAY KANTILAL',99.9214454,0,0,'ComputerEngineering',NULL),(322,146,'EN23194619','mttntltcuk@gmail.com','CHAVAN ROHIT SARJERAO',99.9176955,0,0,'ComputerEngineering',NULL),(323,147,'EN23176826','nvcrzmrkyy@gmail.com','PAWAR SIDDHI VISHWAMBHAR',99.9176955,0,0,'ComputerEngineering',NULL),(324,154,'EN23145959','xypcerotnw@gmail.com','DAVHALE ANSH PRADIP',99.9172217,0,0,'ComputerEngineering',NULL),(325,165,'EN23159348','uwsvctewqc@gmail.com','URKUNDE MOHIT BHASKAR',99.9102132,0,0,'ComputerEngineering',NULL),(326,179,'EN23129264','weajvhgwpg@gmail.com','DESHMUKH SHARDUL KIRAN',99.9018068,0,0,'ComputerEngineering',NULL),(327,180,'EN23123721','fjlzojmgxv@gmail.com','PATIL PARTH SUNIL',99.9018068,0,0,'ComputerEngineering',NULL),(328,181,'EN23183380','kltojiatsq@gmail.com','BHOSALE YASHWANT CHANDRAKANT',99.901772,0,0,'ComputerEngineering',NULL),(329,182,'EN23210714','bjfadykyhh@gmail.com','ROKADE RITESH DHANANJAY',99.8995984,0,0,'ComputerEngineering',NULL),(330,190,'EN23140670','hkxtpywdxc@gmail.com','MANE HARSHWARDHAN MANGESH',99.8954092,0,0,'ComputerEngineering',NULL),(501,690,'EN23224561','xobdrcgbkj@gmail.com','ATHARVA PRASHANT NIJASURE',99.6868126,1,1,'ElectricalEngineering',NULL),(502,729,'EN23118519','rxcehmdghn@gmail.com','HARSHIT MISRA',99.6688866,1,1,'ElectricalEngineering',NULL),(503,758,'EN23113538','wrvdcvvtzh@gmail.com','AARYA AJEET MAJALI',99.6581667,1,1,'ElectricalEngineering',NULL),(504,787,'EN23218171','doazflyfhl@gmail.com','MANDAVKAR MIHIR MADHUKAR',99.6503234,1,1,'ElectricalEngineering',NULL),(505,898,'EN23125430','cfmuhmeibe@gmail.com','KALE SHREYASH SHYAMRAO',99.6032993,1,1,'ElectricalEngineering',NULL),(506,906,'EN23251349','zhzfffotey@gmail.com','UTEKAR OM VIJAY',99.6021122,1,1,'ElectricalEngineering',NULL),(507,932,'EN23139345','yorwvgeqcz@gmail.com','NISHANT PRADHAN',99.5953403,1,1,'ElectricalEngineering',NULL),(508,940,'EN23122501','jkdhdkwtsn@gmail.com','SHRUSHTI SANJAY THAKARE',99.592843,1,1,'ElectricalEngineering',NULL),(509,976,'EN23195901','eauieazvxr@gmail.com','SARAF ANIRUDDHA ADITYA',99.5743473,1,1,'ElectricalEngineering',NULL),(510,1018,'EN23187634','wifmmhyvnq@gmail.com','CHITNIS RAJDEEP HIMANSHU',99.5561665,1,1,'ElectricalEngineering',NULL),(511,1040,'EN23130973','fvtabmyegd@gmail.com','MAHAJAN VEDASHREE VINAYAK',99.5500243,0,0,'ElectricalEngineering',NULL),(512,1044,'EN23116801','xyynvlgnam@gmail.com','PRANAV PRASHANT NANKAR',99.5500243,0,0,'ElectricalEngineering',NULL),(513,1173,'EN23199116','crcvlcmglt@gmail.com','CHAVAN PRATIK PANDURANG',99.5017105,0,0,'ElectricalEngineering',NULL),(514,1177,'EN23192150','gujzvczhng@gmail.com','KULKARNI ASHUTOSH SHRIPAD',99.5017105,0,0,'ElectricalEngineering',NULL),(515,1202,'EN23139917','kfmlqdfjkv@gmail.com','PHAPALE SAIDEEP SANTOSH',99.492042,0,0,'ElectricalEngineering',NULL),(516,1242,'EN23199556','xuzhljieii@gmail.com','SONTAKKE RUJUTA VIJAYANAND',99.4725028,0,0,'ElectricalEngineering',NULL),(517,1249,'EN23198333','uvfxsrgziw@gmail.com','DESHMUKH MANAS AMOL',99.469569,0,0,'ElectricalEngineering',NULL),(518,1304,'EN23149304','jbvlfgaeve@gmail.com','KHANDAIT KARTIK NITYANAND',99.4594392,0,0,'ElectricalEngineering',NULL),(519,1390,'EN23230282','dtoraykixj@gmail.com','KANIRE PRANAV DIPAK',99.4199018,0,0,'ElectricalEngineering',NULL),(520,1417,'EN23137160','dhmlvzhsgf@gmail.com','TONDGAONKAR ROCHANA MAHESH',99.4148537,0,0,'ElectricalEngineering',NULL),(521,1422,'EN23146843','aqyubabtti@gmail.com','SHELAR ARCHIT SANTOSH',99.4148537,0,0,'ElectricalEngineering',NULL),(522,1435,'EN23126231','lnawoghixi@gmail.com','LAVISH ISHWAR PATIL',99.4059257,0,0,'ElectricalEngineering',NULL),(523,1450,'EN23110431','huntduxgxw@gmail.com','KSHIRSAGAR PRATIK KEDARNATH',99.4029851,0,0,'ElectricalEngineering',NULL),(524,1456,'EN23227915','kwqkkkxutn@gmail.com','ARYA SHAILESH KARANJKAR',99.3979757,0,0,'ElectricalEngineering',NULL),(525,1628,'EN23174014','fgmepftmrl@gmail.com','JADHAO SIYA SANJAY',99.3276306,0,0,'ElectricalEngineering',NULL),(526,1681,'EN23203593','swfnezvwfp@gmail.com','AMBADKAR ISHWARI DNYANESHWAR',99.3092834,0,0,'ElectricalEngineering',NULL),(527,1726,'EN23150163','dejcapjbwq@gmail.com','BARUDWALE SNEHA PRAVIN',99.2929293,0,0,'ElectricalEngineering',NULL),(528,1808,'EN23169969','yudfswaguk@gmail.com','DHAVANE GOURAV GURULING',99.2604828,0,0,'ElectricalEngineering',NULL),(529,2038,'EN23147290','zadnwvcoqz@gmail.com','DHARMADHIKARI ASMI SUHAS',99.1702432,0,0,'ElectricalEngineering',NULL),(530,2103,'EN23143431','cmdamwvnha@gmail.com','VAIDYA DEEP PREMNARAYAN',99.1558828,0,0,'ElectricalEngineering',NULL),(901,1147,'EN23127178','oqgdrstffa@gmail.com','MIRASHI KARTIK ROHIT',99.5112047,1,1,'InstrumentationEngineering',NULL),(902,1318,'EN23115961','pipmtrrhnc@gmail.com','VISPUTE HARDIK KAILAS',99.4425739,1,1,'InstrumentationEngineering',NULL),(903,1382,'EN23141780','ttzpnypkjw@gmail.com','JOSHI NIHAR ASHWIN',99.4219002,1,1,'InstrumentationEngineering',NULL),(904,1689,'EN23159242','pfezlvqalb@gmail.com','KUMBHARKAR SIDDHARTH SANJAY',99.3039094,1,1,'InstrumentationEngineering',NULL),(905,1700,'EN23117638','cwdykvemzk@gmail.com','TIWARI ADITYA SUNIL',99.3010423,1,1,'InstrumentationEngineering',NULL),(906,1734,'EN23212036','xgupjmcmsr@gmail.com','HARKARE SHIVSAMB MANGALKUMAR',99.2878714,1,1,'InstrumentationEngineering',NULL),(907,1775,'EN23100634','taxadhhsvr@gmail.com','GAURANSH KUMAR',99.27243,1,1,'InstrumentationEngineering',NULL),(908,1789,'EN23102354','jrpitqaenk@gmail.com','AWATE HRUSHIKESH GAJANAN',99.2630471,1,1,'InstrumentationEngineering',NULL),(909,2015,'EN23141396','djyrxjahla@gmail.com','MUNJAL AAYUSH RAMESH',99.1827433,1,1,'InstrumentationEngineering',NULL),(910,2089,'EN23121213','jzlqporshk@gmail.com','ARDHAPURKAR ISHAN RAJESH',99.1633936,1,1,'InstrumentationEngineering',NULL),(911,2161,'EN23156717','fjfozddsjm@gmail.com','KINAGE ATHARVA MILIND',99.1238065,0,0,'InstrumentationEngineering',NULL),(912,2332,'EN23106492','pfpryqawma@gmail.com','MAYEKAR AARUSHI MANDAR',99.0609406,0,0,'InstrumentationEngineering',NULL),(913,2357,'EN23136984','lutzallaiu@gmail.com','BHUMI ANIL DAVE',99.0554565,0,0,'InstrumentationEngineering',NULL),(914,2377,'EN23143357','qmfyuhylmt@gmail.com','MOHOKAR RAM SAMEER',99.0540185,0,0,'InstrumentationEngineering',NULL),(915,2543,'EN23168053','gqlgdjznty@gmail.com','KEVALINA BHATTACHARYYA',98.9944819,0,0,'InstrumentationEngineering',NULL),(916,2602,'EN23189943','dfahwitrnu@gmail.com','NAGARKAR APURVAA SHAILESH',98.9743798,0,0,'InstrumentationEngineering',NULL),(917,2812,'EN23116034','gtnzyjcdln@gmail.com','AMEYA DUSANE',98.8892492,0,0,'InstrumentationEngineering',NULL),(918,5444,'EN23130897','dbnqvjjmzx@gmail.com','GHULE KHUSHBOO TUKARAM',97.8929149,0,0,'InstrumentationEngineering',NULL),(919,5493,'EN23176196','twembhrliy@gmail.com','GHUGE ROHAN DINESH',97.8717367,0,0,'InstrumentationEngineering',NULL),(920,5975,'EN23137559','ipusddzglv@gmail.com','NALLA KEITH MESSAICH SUMANT',97.6944816,0,0,'InstrumentationEngineering',NULL),(921,6509,'EN23109373','ojdbfqqgyg@gmail.com','ANUSHREE VITTHAL KOTHE',97.497397,0,0,'InstrumentationEngineering',NULL),(922,8931,'EN23115873','quzjsquuox@gmail.com','GAJBHIYE SAJAG JEEVAK',96.5408332,0,0,'InstrumentationEngineering',NULL),(923,9800,'EN23123342','njacyyctyt@gmail.com','MANUSHREE SONAWANE',96.207802,0,0,'InstrumentationEngineering',NULL),(924,10944,'EN23163825','kngnfffrgi@gmail.com','JADHAV SMITESH SANDEEP',95.740678,0,0,'InstrumentationEngineering',NULL),(925,14740,'EN23138822','beypgyszqb@gmail.com','SHINDE ANUSHKA SATISH',94.1664477,0,0,'InstrumentationEngineering',NULL),(926,27542,'EN23184708','zvaoknkuos@gmail.com','YASH DEEPAK ZENDE',88.7549097,0,0,'InstrumentationEngineering',NULL),(927,33664,'EN23221394','gtjqoqccxv@gmail.com','ILPATE VED MAHENDRA',86.0518493,0,0,'InstrumentationEngineering',NULL),(928,48801,'EN23246109','xweoxzulys@gmail.com','PADAVI AVANI HIRAJI',79.4628516,0,0,'InstrumentationEngineering',NULL),(929,79044,'EN23150533','crhsbwjpgm@gmail.com','JOSHI CHANDRASHEKHAR VIKASRAO',62.7898492,0,0,'InstrumentationEngineering',NULL),(930,136522,'EN23110125','zxyfajacpg@gmail.com','HARSH NAMDEO CHAVAN',11.2906846,0,0,'InstrumentationEngineering',NULL),(1001,183,'EN23223188','nfuljvsamn@gmail.com','SAHASRABUDDHE MIHIR VINAY',99.8995984,1,1,'MechanicalEngineering',NULL),(1002,360,'EN23140891','plxessjcfj@gmail.com','GUJRATHI SAHIL AKSHAY',99.8281723,1,1,'MechanicalEngineering',NULL),(1003,406,'EN23173180','wqkeqbjrkd@gmail.com','NERLEKAR AKHILESH ROHIT',99.8078888,1,1,'MechanicalEngineering',NULL),(1004,542,'EN23193955','ajaxeckzyp@gmail.com','DHERE ADWAIT DEVENDRA',99.7486622,1,1,'MechanicalEngineering',NULL),(1005,870,'EN23219778','qkiqwfkzhn@gmail.com','PALAV AVANEESH DEEPAK',99.6189907,1,1,'MechanicalEngineering',NULL),(1006,1055,'EN23139025','txsclxatpv@gmail.com','SARTHAK SUHAS DODE',99.5498875,1,1,'MechanicalEngineering',NULL),(1007,1099,'EN23122145','qbsagdbxyo@gmail.com','PARTH RAJESH KALE',99.5259059,1,1,'MechanicalEngineering',NULL),(1008,1150,'EN23219327','qoyfcgodxn@gmail.com','JAIN HEET NILESH',99.5112047,1,1,'MechanicalEngineering',NULL),(1009,1238,'EN23193832','abejmtrjdy@gmail.com','ZILMAR YASH VAIBHAV',99.4854674,1,1,'MechanicalEngineering',NULL),(1010,1367,'EN23193733','gfgstdcrho@gmail.com','NERLEKAR ADITYA SHRIKANT',99.4265515,1,1,'MechanicalEngineering',NULL),(1011,1369,'EN23221104','nggvtatboy@gmail.com','BHAGAT SWARAJ BALASO',99.4263487,0,0,'MechanicalEngineering',NULL),(1012,1420,'EN23110465','hrlvgzbzri@gmail.com','SRUSHTI SURENDRA BAKARE',99.4148537,0,0,'MechanicalEngineering',NULL),(1013,1457,'EN23174117','yaeybydowo@gmail.com','DESHPANDE OJAS SHRINIWAS',99.3979757,0,0,'MechanicalEngineering',NULL),(1014,1482,'EN23104536','mhmirpvuld@gmail.com','BONDE KARAN GIRISH',99.3949157,0,0,'MechanicalEngineering',NULL),(1015,1483,'EN23121959','lzsevblbzu@gmail.com','DESHPANDE SOHAM VIKAS',99.3949157,0,0,'MechanicalEngineering',NULL),(1016,1488,'EN23206488','levorouhqx@gmail.com','CHAFALE SOMENDRA DEVIDAS',99.382716,0,0,'MechanicalEngineering',NULL),(1017,1548,'EN23243660','kbmrgqxmfg@gmail.com','GHODE YOGIRAJ DEEPAK',99.3623544,0,0,'MechanicalEngineering',NULL),(1018,1642,'EN23112879','tyrtpuqmhk@gmail.com','JOSHI SIDDHARTH ADITYA',99.3228582,0,0,'MechanicalEngineering',NULL),(1019,1656,'EN23229050','lyiqxvwmna@gmail.com','AGASHE SUMEDHA SACHIN',99.3210803,0,0,'MechanicalEngineering',NULL),(1020,1658,'EN23158949','hrxadcieno@gmail.com','BHOKARE SUYOG GUNDA',99.3210803,0,0,'MechanicalEngineering',NULL),(1021,1672,'EN23141489','rpapycqqul@gmail.com','MOHAMMED BILAL AZIZ',99.3126473,0,0,'MechanicalEngineering',NULL),(1022,1691,'EN23122483','elpmpesnho@gmail.com','KARANPREET SINGH VIJ',99.3039094,0,0,'MechanicalEngineering',NULL),(1023,1710,'EN23226361','cnsymnkesq@gmail.com','PAWAR VEDANT ASHOK',99.2971888,0,0,'MechanicalEngineering',NULL),(1024,1724,'EN23141546','huwqrewhpf@gmail.com','PEDNEKAR RUHI LAXMESH',99.2929293,0,0,'MechanicalEngineering',NULL),(1025,1728,'EN23197252','ejfupdzzje@gmail.com','JORDAN NATHAN LIONEL',99.2929293,0,0,'MechanicalEngineering',NULL),(1026,1729,'EN23177366','omakgihjgr@gmail.com','DANDE ANISH SHYAM',99.2929293,0,0,'MechanicalEngineering',NULL),(1027,1746,'EN23110652','rfcjffosek@gmail.com','CHAPHALKAR ATHARV SANTOSH',99.2878714,0,0,'MechanicalEngineering',NULL),(1028,1792,'EN23205245','zqeapicmpp@gmail.com','YASH CHITALE',99.2630471,0,0,'MechanicalEngineering',NULL),(1029,1807,'EN23271575','lqinlklwxe@gmail.com','VIVEK MILIND SAWANT',99.2604828,0,0,'MechanicalEngineering',NULL),(1030,1822,'EN23169846','itdugncybh@gmail.com','PATIL SPANDAN MANOJ',99.2562844,0,0,'MechanicalEngineering',NULL),(1301,2488,'EN23174985','wjekctsyvu@gmail.com','POTDAR RAJAS ABHAY',99.0182954,1,1,'ManfacturingEngineering',NULL),(1302,2532,'EN23113653','eoefvhaobt@gmail.com','RAY SHUBHAM NAVIN',98.9989167,1,1,'ManfacturingEngineering',NULL),(1303,2565,'EN23180235','incvgyapsq@gmail.com','NASERI CHIRAG AMIT',98.9936401,1,1,'ManfacturingEngineering',NULL),(1304,2653,'EN23123728','kluevsslqi@gmail.com','ANGRE AARY SANJAY',98.9502201,1,1,'ManfacturingEngineering',NULL),(1305,2660,'EN23149014','vgrqinngzt@gmail.com','BAMISHTE APOORV AMOL',98.9495197,1,1,'ManfacturingEngineering',NULL),(1306,2743,'EN23126739','tdsaxpkyyr@gmail.com','HARNE NIDHISH KSHITIJ',98.9155632,1,1,'ManfacturingEngineering',NULL),(1307,2811,'EN23105613','rgrhpkhgyv@gmail.com','VEDANT SONAWANE',98.8892492,1,1,'ManfacturingEngineering',NULL),(1308,2985,'EN23111226','wujjkgopkb@gmail.com','DANDEKAR AMEY VISHWAS',98.8256088,1,1,'ManfacturingEngineering',NULL),(1309,3152,'EN23163337','efuujyvezq@gmail.com','GHOGARE SAMARTH SUGRIV',98.7654321,1,1,'ManfacturingEngineering',NULL),(1310,3394,'EN23177423','ajwsuglxic@gmail.com','KULKARNI PRANAV ASHOK',98.6673674,0,0,'ManfacturingEngineering',NULL),(1311,3480,'EN23186609','lbwfvpzsmt@gmail.com','GOVILKAR CHINMAY RUTURAJ',98.6419653,0,0,'ManfacturingEngineering',NULL),(1312,3524,'EN23153487','esucoqjvkb@gmail.com','YASH SHRIVASTAVA',98.6179074,0,0,'ManfacturingEngineering',NULL),(1313,3610,'EN23182700','qnvytktgyq@gmail.com','THITE ANURAG DEEPAK',98.5811578,0,0,'ManfacturingEngineering',NULL),(1314,3711,'EN23200672','pjiigdnvav@gmail.com','BEDARKAR ATHARVA AMIT',98.5633908,0,0,'ManfacturingEngineering',NULL),(1315,3810,'EN23143546','zzpwkexteq@gmail.com','SALGAOKAR ARJUN HEMANT',98.5069349,0,0,'ManfacturingEngineering',NULL),(1316,3820,'EN23103632','hxooabhdmt@gmail.com','DEVASHISH GHODKI',98.503535,0,0,'ManfacturingEngineering',NULL),(1317,3997,'EN23138705','pyitezknoe@gmail.com','ADITYA SANJEEVI',98.4460248,0,0,'ManfacturingEngineering',NULL),(1318,4105,'EN23222254','siaxykqrsr@gmail.com','UPADHYE SHRAVAN SANTOSH',98.3975197,0,0,'ManfacturingEngineering',NULL),(1319,4233,'EN23141632','iowtalermw@gmail.com','DANGE SAURISH JAYANT',98.3419119,0,0,'ManfacturingEngineering',NULL),(1320,4408,'EN23171215','yravtpnmhw@gmail.com','VED SHAILESH THOMBRE',98.2807162,0,0,'ManfacturingEngineering',NULL),(1321,4857,'EN23230235','hzxplnedoo@gmail.com','TANGADPALLIWAR VAMSHI MALLESH',98.1183995,0,0,'ManfacturingEngineering',NULL),(1322,4933,'EN23133620','aivjygdvoy@gmail.com','LONBALE TANMAY SURESH',98.078661,0,0,'ManfacturingEngineering',NULL),(1323,5375,'EN23128411','bavjglspfx@gmail.com','BRAHMANKAR SUMEDH MANOJ',97.9332333,0,0,'ManfacturingEngineering',NULL),(1324,5646,'EN23209881','zgqmgmkwmp@gmail.com','DHAKNE SATYAM SUDHAKAR',97.818535,0,0,'ManfacturingEngineering',NULL),(1325,5675,'EN23228831','hhehjyxhdt@gmail.com','KANDALKAR MOHIT MOHANRAO',97.8134761,0,0,'ManfacturingEngineering',NULL),(1326,6097,'EN23185978','nvbhzhkkbk@gmail.com','WARKE TOSHIT DEVENDRA',97.6528296,0,0,'ManfacturingEngineering',NULL),(1327,6483,'EN23125946','ftpapysyxz@gmail.com','PANDEY ANJALI SANTOSH',97.5089387,1,1,'ManfacturingEngineering',NULL),(1328,6507,'EN23102033','pvgafwusvw@gmail.com','ANANYA DAS',97.497397,0,0,'ManfacturingEngineering',NULL),(1329,6510,'EN23141713','ootgfwfvny@gmail.com','MAYUR VILAS LOKHANDE',97.497397,0,0,'ManfacturingEngineering',NULL),(1330,6520,'EN23147207','axatxziwdw@gmail.com','DAWANGE SIDDHESH SANJAY',97.497397,0,0,'ManfacturingEngineering',NULL);
/*!40000 ALTER TABLE `registration_firstyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_instrumentationengineering`
--

DROP TABLE IF EXISTS `registration_instrumentationengineering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_instrumentationengineering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `application_id` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentile` double NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_instrum_user_id_cde473d2_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_instrumentationengineering`
--

LOCK TABLES `registration_instrumentationengineering` WRITE;
/*!40000 ALTER TABLE `registration_instrumentationengineering` DISABLE KEYS */;
INSERT INTO `registration_instrumentationengineering` VALUES (1,1147,'EN23127178','oqgdrstffa@gmail.com','MIRASHI KARTIK ROHIT',99.5112047,1,1,NULL),(2,1318,'EN23115961','pipmtrrhnc@gmail.com','VISPUTE HARDIK KAILAS',99.4425739,1,1,NULL),(3,1382,'EN23141780','ttzpnypkjw@gmail.com','JOSHI NIHAR ASHWIN',99.4219002,1,1,NULL),(4,1689,'EN23159242','pfezlvqalb@gmail.com','KUMBHARKAR SIDDHARTH SANJAY',99.3039094,1,1,NULL),(5,1700,'EN23117638','cwdykvemzk@gmail.com','TIWARI ADITYA SUNIL',99.3010423,1,1,NULL),(6,1734,'EN23212036','xgupjmcmsr@gmail.com','HARKARE SHIVSAMB MANGALKUMAR',99.2878714,1,1,NULL),(7,1775,'EN23100634','taxadhhsvr@gmail.com','GAURANSH KUMAR',99.27243,1,1,NULL),(8,1789,'EN23102354','jrpitqaenk@gmail.com','AWATE HRUSHIKESH GAJANAN',99.2630471,1,1,NULL),(9,2015,'EN23141396','djyrxjahla@gmail.com','MUNJAL AAYUSH RAMESH',99.1827433,1,1,NULL),(10,2089,'EN23121213','jzlqporshk@gmail.com','ARDHAPURKAR ISHAN RAJESH',99.1633936,1,1,NULL),(11,2161,'EN23156717','fjfozddsjm@gmail.com','KINAGE ATHARVA MILIND',99.1238065,0,0,NULL),(12,2332,'EN23106492','pfpryqawma@gmail.com','MAYEKAR AARUSHI MANDAR',99.0609406,0,0,NULL),(13,2357,'EN23136984','lutzallaiu@gmail.com','BHUMI ANIL DAVE',99.0554565,0,0,NULL),(14,2377,'EN23143357','qmfyuhylmt@gmail.com','MOHOKAR RAM SAMEER',99.0540185,0,0,NULL),(15,2543,'EN23168053','gqlgdjznty@gmail.com','KEVALINA BHATTACHARYYA',98.9944819,0,0,NULL),(16,2602,'EN23189943','dfahwitrnu@gmail.com','NAGARKAR APURVAA SHAILESH',98.9743798,0,0,NULL),(17,2812,'EN23116034','gtnzyjcdln@gmail.com','AMEYA DUSANE',98.8892492,0,0,NULL),(18,5444,'EN23130897','dbnqvjjmzx@gmail.com','GHULE KHUSHBOO TUKARAM',97.8929149,0,0,NULL),(19,5493,'EN23176196','twembhrliy@gmail.com','GHUGE ROHAN DINESH',97.8717367,0,0,NULL),(20,5975,'EN23137559','ipusddzglv@gmail.com','NALLA KEITH MESSAICH SUMANT',97.6944816,0,0,NULL),(21,6509,'EN23109373','ojdbfqqgyg@gmail.com','ANUSHREE VITTHAL KOTHE',97.497397,0,0,NULL),(22,8931,'EN23115873','quzjsquuox@gmail.com','GAJBHIYE SAJAG JEEVAK',96.5408332,0,0,NULL),(23,9800,'EN23123342','njacyyctyt@gmail.com','MANUSHREE SONAWANE',96.207802,0,0,NULL),(24,10944,'EN23163825','kngnfffrgi@gmail.com','JADHAV SMITESH SANDEEP',95.740678,0,0,NULL),(25,14740,'EN23138822','beypgyszqb@gmail.com','SHINDE ANUSHKA SATISH',94.1664477,0,0,NULL),(26,27542,'EN23184708','zvaoknkuos@gmail.com','YASH DEEPAK ZENDE',88.7549097,0,0,NULL),(27,33664,'EN23221394','gtjqoqccxv@gmail.com','ILPATE VED MAHENDRA',86.0518493,0,0,NULL),(28,48801,'EN23246109','xweoxzulys@gmail.com','PADAVI AVANI HIRAJI',79.4628516,0,0,NULL),(29,79044,'EN23150533','crhsbwjpgm@gmail.com','JOSHI CHANDRASHEKHAR VIKASRAO',62.7898492,0,0,NULL),(30,136522,'EN23110125','zxyfajacpg@gmail.com','HARSH NAMDEO CHAVAN',11.2906846,0,0,NULL);
/*!40000 ALTER TABLE `registration_instrumentationengineering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_manfacturingengineering`
--

DROP TABLE IF EXISTS `registration_manfacturingengineering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_manfacturingengineering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `application_id` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentile` double NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_manfact_user_id_a0d8f283_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_manfacturingengineering`
--

LOCK TABLES `registration_manfacturingengineering` WRITE;
/*!40000 ALTER TABLE `registration_manfacturingengineering` DISABLE KEYS */;
INSERT INTO `registration_manfacturingengineering` VALUES (1,2488,'EN23174985','wjekctsyvu@gmail.com','POTDAR RAJAS ABHAY',99.0182954,1,1,NULL),(2,2532,'EN23113653','eoefvhaobt@gmail.com','RAY SHUBHAM NAVIN',98.9989167,1,1,NULL),(3,2565,'EN23180235','incvgyapsq@gmail.com','NASERI CHIRAG AMIT',98.9936401,1,1,NULL),(4,2653,'EN23123728','kluevsslqi@gmail.com','ANGRE AARY SANJAY',98.9502201,1,1,NULL),(5,2660,'EN23149014','vgrqinngzt@gmail.com','BAMISHTE APOORV AMOL',98.9495197,1,1,NULL),(6,2743,'EN23126739','tdsaxpkyyr@gmail.com','HARNE NIDHISH KSHITIJ',98.9155632,1,1,NULL),(7,2811,'EN23105613','rgrhpkhgyv@gmail.com','VEDANT SONAWANE',98.8892492,1,1,NULL),(8,2985,'EN23111226','wujjkgopkb@gmail.com','DANDEKAR AMEY VISHWAS',98.8256088,1,1,NULL),(9,3152,'EN23163337','efuujyvezq@gmail.com','GHOGARE SAMARTH SUGRIV',98.7654321,1,1,NULL),(10,3394,'EN23177423','ajwsuglxic@gmail.com','KULKARNI PRANAV ASHOK',98.6673674,0,0,NULL),(11,3480,'EN23186609','lbwfvpzsmt@gmail.com','GOVILKAR CHINMAY RUTURAJ',98.6419653,0,0,NULL),(12,3524,'EN23153487','esucoqjvkb@gmail.com','YASH SHRIVASTAVA',98.6179074,0,0,NULL),(13,3610,'EN23182700','qnvytktgyq@gmail.com','THITE ANURAG DEEPAK',98.5811578,0,0,NULL),(14,3711,'EN23200672','pjiigdnvav@gmail.com','BEDARKAR ATHARVA AMIT',98.5633908,0,0,NULL),(15,3810,'EN23143546','zzpwkexteq@gmail.com','SALGAOKAR ARJUN HEMANT',98.5069349,0,0,NULL),(16,3820,'EN23103632','hxooabhdmt@gmail.com','DEVASHISH GHODKI',98.503535,0,0,NULL),(17,3997,'EN23138705','pyitezknoe@gmail.com','ADITYA SANJEEVI',98.4460248,0,0,NULL),(18,4105,'EN23222254','siaxykqrsr@gmail.com','UPADHYE SHRAVAN SANTOSH',98.3975197,0,0,NULL),(19,4233,'EN23141632','iowtalermw@gmail.com','DANGE SAURISH JAYANT',98.3419119,0,0,NULL),(20,4408,'EN23171215','yravtpnmhw@gmail.com','VED SHAILESH THOMBRE',98.2807162,0,0,NULL),(21,4857,'EN23230235','hzxplnedoo@gmail.com','TANGADPALLIWAR VAMSHI MALLESH',98.1183995,0,0,NULL),(22,4933,'EN23133620','aivjygdvoy@gmail.com','LONBALE TANMAY SURESH',98.078661,0,0,NULL),(23,5375,'EN23128411','bavjglspfx@gmail.com','BRAHMANKAR SUMEDH MANOJ',97.9332333,0,0,NULL),(24,5646,'EN23209881','zgqmgmkwmp@gmail.com','DHAKNE SATYAM SUDHAKAR',97.818535,0,0,NULL),(25,5675,'EN23228831','hhehjyxhdt@gmail.com','KANDALKAR MOHIT MOHANRAO',97.8134761,0,0,NULL),(26,6097,'EN23185978','nvbhzhkkbk@gmail.com','WARKE TOSHIT DEVENDRA',97.6528296,0,0,NULL),(27,6483,'EN23125946','ftpapysyxz@gmail.com','PANDEY ANJALI SANTOSH',97.5089387,1,1,NULL),(28,6507,'EN23102033','pvgafwusvw@gmail.com','ANANYA DAS',97.497397,0,0,NULL),(29,6510,'EN23141713','ootgfwfvny@gmail.com','MAYUR VILAS LOKHANDE',97.497397,0,0,NULL),(30,6520,'EN23147207','axatxziwdw@gmail.com','DAWANGE SIDDHESH SANJAY',97.497397,0,0,NULL);
/*!40000 ALTER TABLE `registration_manfacturingengineering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_mechanicalengineering`
--

DROP TABLE IF EXISTS `registration_mechanicalengineering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_mechanicalengineering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `application_id` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `percentile` double NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_mechani_user_id_ef339683_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_mechanicalengineering`
--

LOCK TABLES `registration_mechanicalengineering` WRITE;
/*!40000 ALTER TABLE `registration_mechanicalengineering` DISABLE KEYS */;
INSERT INTO `registration_mechanicalengineering` VALUES (1,183,'EN23223188','nfuljvsamn@gmail.com','SAHASRABUDDHE MIHIR VINAY',99.8995984,1,1,NULL),(2,360,'EN23140891','plxessjcfj@gmail.com','GUJRATHI SAHIL AKSHAY',99.8281723,1,1,NULL),(3,406,'EN23173180','wqkeqbjrkd@gmail.com','NERLEKAR AKHILESH ROHIT',99.8078888,1,1,NULL),(4,542,'EN23193955','ajaxeckzyp@gmail.com','DHERE ADWAIT DEVENDRA',99.7486622,1,1,NULL),(5,870,'EN23219778','qkiqwfkzhn@gmail.com','PALAV AVANEESH DEEPAK',99.6189907,1,1,NULL),(6,1055,'EN23139025','txsclxatpv@gmail.com','SARTHAK SUHAS DODE',99.5498875,1,1,NULL),(7,1099,'EN23122145','qbsagdbxyo@gmail.com','PARTH RAJESH KALE',99.5259059,1,1,NULL),(8,1150,'EN23219327','qoyfcgodxn@gmail.com','JAIN HEET NILESH',99.5112047,1,1,NULL),(9,1238,'EN23193832','abejmtrjdy@gmail.com','ZILMAR YASH VAIBHAV',99.4854674,1,1,NULL),(10,1367,'EN23193733','gfgstdcrho@gmail.com','NERLEKAR ADITYA SHRIKANT',99.4265515,1,1,NULL),(11,1369,'EN23221104','nggvtatboy@gmail.com','BHAGAT SWARAJ BALASO',99.4263487,0,0,NULL),(12,1420,'EN23110465','hrlvgzbzri@gmail.com','SRUSHTI SURENDRA BAKARE',99.4148537,0,0,NULL),(13,1457,'EN23174117','yaeybydowo@gmail.com','DESHPANDE OJAS SHRINIWAS',99.3979757,0,0,NULL),(14,1482,'EN23104536','mhmirpvuld@gmail.com','BONDE KARAN GIRISH',99.3949157,0,0,NULL),(15,1483,'EN23121959','lzsevblbzu@gmail.com','DESHPANDE SOHAM VIKAS',99.3949157,0,0,NULL),(16,1488,'EN23206488','levorouhqx@gmail.com','CHAFALE SOMENDRA DEVIDAS',99.382716,0,0,NULL),(17,1548,'EN23243660','kbmrgqxmfg@gmail.com','GHODE YOGIRAJ DEEPAK',99.3623544,0,0,NULL),(18,1642,'EN23112879','tyrtpuqmhk@gmail.com','JOSHI SIDDHARTH ADITYA',99.3228582,0,0,NULL),(19,1656,'EN23229050','lyiqxvwmna@gmail.com','AGASHE SUMEDHA SACHIN',99.3210803,0,0,NULL),(20,1658,'EN23158949','hrxadcieno@gmail.com','BHOKARE SUYOG GUNDA',99.3210803,0,0,NULL),(21,1672,'EN23141489','rpapycqqul@gmail.com','MOHAMMED BILAL AZIZ',99.3126473,0,0,NULL),(22,1691,'EN23122483','elpmpesnho@gmail.com','KARANPREET SINGH VIJ',99.3039094,0,0,NULL),(23,1710,'EN23226361','cnsymnkesq@gmail.com','PAWAR VEDANT ASHOK',99.2971888,0,0,NULL),(24,1724,'EN23141546','huwqrewhpf@gmail.com','PEDNEKAR RUHI LAXMESH',99.2929293,0,0,NULL),(25,1728,'EN23197252','ejfupdzzje@gmail.com','JORDAN NATHAN LIONEL',99.2929293,0,0,NULL),(26,1729,'EN23177366','omakgihjgr@gmail.com','DANDE ANISH SHYAM',99.2929293,0,0,NULL),(27,1746,'EN23110652','rfcjffosek@gmail.com','CHAPHALKAR ATHARV SANTOSH',99.2878714,0,0,NULL),(28,1792,'EN23205245','zqeapicmpp@gmail.com','YASH CHITALE',99.2630471,0,0,NULL),(29,1807,'EN23271575','lqinlklwxe@gmail.com','VIVEK MILIND SAWANT',99.2604828,0,0,NULL),(30,1822,'EN23169846','itdugncybh@gmail.com','PATIL SPANDAN MANOJ',99.2562844,0,0,NULL);
/*!40000 ALTER TABLE `registration_mechanicalengineering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_second_year`
--

DROP TABLE IF EXISTS `registration_second_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_second_year` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mis_no` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cgpa` decimal(4,2) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `branch` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_second_year`
--

LOCK TABLES `registration_second_year` WRITE;
/*!40000 ALTER TABLE `registration_second_year` DISABLE KEYS */;
INSERT INTO `registration_second_year` VALUES (1,'112103115','student1_computer_engineering@example.com','RAUT EKTAA MANIKLAL',4.94,0,0,'computer engineering'),(2,'612203054','student2_computer_engineering@example.com','NIKAM AVIRAJ AJAY',9.31,0,0,'computer engineering'),(3,'612203001','student3_computer_engineering@example.com','AADITYA SAMEER ZAVAR',6.94,0,0,'computer engineering'),(4,'612203002','student4_computer_engineering@example.com','AARNAV KAUSHAL SANGHAVI',6.28,0,0,'computer engineering'),(5,'612203003','student5_computer_engineering@example.com','ADEEB IDRIS MURTAZA',8.70,0,0,'computer engineering'),(6,'612203004','student6_computer_engineering@example.com','ADITI RAJENDRA PATIL',8.00,0,0,'computer engineering'),(7,'612203005','student7_computer_engineering@example.com','ADVAIT SUJIT WANKHADE',5.63,0,0,'computer engineering'),(8,'612203006','student8_computer_engineering@example.com','AGHAV VAIBHAV RAJESH',5.33,0,0,'computer engineering'),(9,'612203007','student9_computer_engineering@example.com','AKASH G MESTHA',6.53,0,0,'computer engineering'),(10,'612203008','student10_computer_engineering@example.com','ANISH DAYANAND SHETTY',9.42,0,0,'computer engineering'),(11,'612203009','student11_computer_engineering@example.com','ARAGANJI SHREYA SHIVANAND',8.00,0,0,'computer engineering'),(12,'612203010','student12_computer_engineering@example.com','ARLIMAR SUYOG RAJESH',8.52,0,0,'computer engineering'),(13,'612203011','student13_computer_engineering@example.com','ARNAV B PRASAD',9.06,0,0,'computer engineering'),(14,'612203013','student14_computer_engineering@example.com','ATHARVA PRADEEP SARDESAI',8.94,0,0,'computer engineering'),(15,'612203014','student15_computer_engineering@example.com','BADVE MALHAR ANAND',8.13,0,0,'computer engineering'),(16,'612203015','student16_computer_engineering@example.com','BANGAD SURABHI MAHESH',8.56,0,0,'computer engineering'),(17,'612203016','student17_computer_engineering@example.com','BANKAR ARNAV MAHESH',7.31,0,0,'computer engineering'),(18,'612203017','student18_computer_engineering@example.com','BHAGWAT ONKAR BHAGWAN',7.80,0,0,'computer engineering'),(19,'612203018','student19_computer_engineering@example.com','BHARGAV SANJEEV GEJJI',8.41,0,0,'computer engineering'),(20,'612203019','student20_computer_engineering@example.com','BHATKANDE SHASHANK SHIVAJI',6.45,0,0,'computer engineering'),(21,'612203020','student21_computer_engineering@example.com','BHOSALE HRISHIKESH UMESH',7.14,0,0,'computer engineering'),(22,'612203021','student22_computer_engineering@example.com','BHOSALE PRAJWAL PRABODH',8.94,0,0,'computer engineering'),(23,'612203022','student23_computer_engineering@example.com','BORHADE AYUSH DATTATRAY',7.23,0,0,'computer engineering'),(24,'612203023','student24_computer_engineering@example.com','CHANDRATREYA PRACHETAS SUJIT',7.55,0,0,'computer engineering'),(25,'612203024','student25_computer_engineering@example.com','CHAPNE CHANDRADEEP UMESH',3.95,0,0,'computer engineering'),(26,'612203025','student26_computer_engineering@example.com','CHAUDHARI NIDHI NANDKUMAR',7.83,0,0,'computer engineering'),(27,'612203026','student27_computer_engineering@example.com','CHAUDHARY AVNISH RAJIV',8.89,0,0,'computer engineering'),(28,'612203027','student28_computer_engineering@example.com','CHAVAN SUMEDH MAHAVEER',8.83,0,0,'computer engineering'),(29,'612203028','student29_computer_engineering@example.com','CHHATRE TANMAY AJIT',9.17,0,0,'computer engineering'),(30,'612203029','student30_computer_engineering@example.com','CHINMAY XYZ BARVE',7.19,0,0,'computer engineering'),(101,'112101002','student1_civil_engineering@example.com','AJAY XYZ DESHMUKH',4.44,0,0,'civil engineering'),(102,'112101004','student2_civil_engineering@example.com','AKETO G SHOHE',2.74,0,0,'civil engineering'),(103,'112101009','student3_civil_engineering@example.com','BHERDE MAHENDRA DAMODAR',6.37,0,0,'civil engineering'),(104,'112101040','student4_civil_engineering@example.com','NIKA M ZHIMO',4.37,0,0,'civil engineering'),(105,'112101060','student5_civil_engineering@example.com','ROHAN RAVINDRA NAWALE',3.16,0,0,'civil engineering'),(106,'612201001','student6_civil_engineering@example.com','AKASH XYZ PANDITA',3.84,0,0,'civil engineering'),(107,'612201002','student7_civil_engineering@example.com','BAROTE SAKSHI CHANDRASHEKHAR',8.78,0,0,'civil engineering'),(108,'612201003','student8_civil_engineering@example.com','BHAVYA RAJESH MODI',6.57,0,0,'civil engineering'),(109,'612201004','student9_civil_engineering@example.com','BHOPALE ANIRUDDHA RAJENDRA',5.35,0,0,'civil engineering'),(110,'612201005','student10_civil_engineering@example.com','BORADE ARYA GANESH',8.20,0,0,'civil engineering'),(111,'612201006','student11_civil_engineering@example.com','CHAJED LAKSH GIRISHKUMAR',8.42,0,0,'civil engineering'),(112,'612201007','student12_civil_engineering@example.com','CHAKRAWARTI SIDDHI VIJAY',4.14,0,0,'civil engineering'),(113,'612201008','student13_civil_engineering@example.com','CHAUDHARI KUNAL SHANKAR',5.04,0,0,'civil engineering'),(114,'612201009','student14_civil_engineering@example.com','CHAVAN OM DATTARAO',4.88,0,0,'civil engineering'),(115,'612201010','student15_civil_engineering@example.com','CHAVAN SACHIN DIGAMBAR',6.43,0,0,'civil engineering'),(116,'612201011','student16_civil_engineering@example.com','CHAVAN SUMIT PRASHANT',6.75,0,0,'civil engineering'),(117,'612201012','student17_civil_engineering@example.com','CHAVAN VEDANTI DATTATRAY',6.89,0,0,'civil engineering'),(118,'612201013','student18_civil_engineering@example.com','CHOBAO XYZ TUNGOE',3.79,0,0,'civil engineering'),(119,'612201014','student19_civil_engineering@example.com','CHOUGULE ADITYA RAMESH',7.51,0,0,'civil engineering'),(120,'612201015','student20_civil_engineering@example.com','DANI B DUNIYA',5.51,0,0,'civil engineering'),(121,'612201016','student21_civil_engineering@example.com','DANISH XYZ KABEER',6.68,0,0,'civil engineering'),(122,'612201017','student22_civil_engineering@example.com','DESHMUKH RANA SANJAY',7.06,0,0,'civil engineering'),(123,'612201018','student23_civil_engineering@example.com','DHANDE SHAMLI SURENDRA',6.57,0,0,'civil engineering'),(124,'612201019','student24_civil_engineering@example.com','DHARKAR VIRAJ PRAKASH',5.49,0,0,'civil engineering'),(125,'612201020','student25_civil_engineering@example.com','DHONDGE KARTIK ANANDA',5.75,0,0,'civil engineering'),(126,'612201021','student26_civil_engineering@example.com','GADGE SANKET SANJAY',3.29,0,0,'civil engineering'),(127,'612201022','student27_civil_engineering@example.com','GAIDHANI SHARWARI MAHESH',7.92,0,0,'civil engineering'),(128,'612201023','student28_civil_engineering@example.com','GAIKWAD DHANANJAY RAMESH',7.77,0,0,'civil engineering'),(129,'612201024','student29_civil_engineering@example.com','GHADGE TANMAY RAHUL',5.45,0,0,'civil engineering'),(130,'612201025','student30_civil_engineering@example.com','GHODKE NAMAN BIRUDEV',5.20,0,0,'civil engineering'),(301,'112103115','student1_computer_engineering@example.com','RAUT EKTAA MANIKLAL',4.94,0,0,'computer engineering'),(302,'612203054','student2_computer_engineering@example.com','NIKAM AVIRAJ AJAY',9.31,0,0,'computer engineering'),(303,'612203001','student3_computer_engineering@example.com','AADITYA SAMEER ZAVAR',6.94,0,0,'computer engineering'),(304,'612203002','student4_computer_engineering@example.com','AARNAV KAUSHAL SANGHAVI',6.28,0,0,'computer engineering'),(305,'612203003','student5_computer_engineering@example.com','ADEEB IDRIS MURTAZA',8.70,0,0,'computer engineering'),(306,'612203004','student6_computer_engineering@example.com','ADITI RAJENDRA PATIL',8.00,0,0,'computer engineering'),(307,'612203005','student7_computer_engineering@example.com','ADVAIT SUJIT WANKHADE',5.63,0,0,'computer engineering'),(308,'612203006','student8_computer_engineering@example.com','AGHAV VAIBHAV RAJESH',5.33,0,0,'computer engineering'),(309,'612203007','student9_computer_engineering@example.com','AKASH G MESTHA',6.53,0,0,'computer engineering'),(310,'612203008','student10_computer_engineering@example.com','ANISH DAYANAND SHETTY',9.42,0,0,'computer engineering'),(311,'612203009','student11_computer_engineering@example.com','ARAGANJI SHREYA SHIVANAND',8.00,0,0,'computer engineering'),(312,'612203010','student12_computer_engineering@example.com','ARLIMAR SUYOG RAJESH',8.52,0,0,'computer engineering'),(313,'612203011','student13_computer_engineering@example.com','ARNAV B PRASAD',9.06,0,0,'computer engineering'),(314,'612203013','student14_computer_engineering@example.com','ATHARVA PRADEEP SARDESAI',8.94,0,0,'computer engineering'),(315,'612203014','student15_computer_engineering@example.com','BADVE MALHAR ANAND',8.13,0,0,'computer engineering'),(316,'612203015','student16_computer_engineering@example.com','BANGAD SURABHI MAHESH',8.56,0,0,'computer engineering'),(317,'612203016','student17_computer_engineering@example.com','BANKAR ARNAV MAHESH',7.31,0,0,'computer engineering'),(318,'612203017','student18_computer_engineering@example.com','BHAGWAT ONKAR BHAGWAN',7.80,0,0,'computer engineering'),(319,'612203018','student19_computer_engineering@example.com','BHARGAV SANJEEV GEJJI',8.41,0,0,'computer engineering'),(320,'612203019','student20_computer_engineering@example.com','BHATKANDE SHASHANK SHIVAJI',6.45,0,0,'computer engineering'),(321,'612203020','student21_computer_engineering@example.com','BHOSALE HRISHIKESH UMESH',7.14,0,0,'computer engineering'),(322,'612203021','student22_computer_engineering@example.com','BHOSALE PRAJWAL PRABODH',8.94,0,0,'computer engineering'),(323,'612203022','student23_computer_engineering@example.com','BORHADE AYUSH DATTATRAY',7.23,0,0,'computer engineering'),(324,'612203023','student24_computer_engineering@example.com','CHANDRATREYA PRACHETAS SUJIT',7.55,0,0,'computer engineering'),(325,'612203024','student25_computer_engineering@example.com','CHAPNE CHANDRADEEP UMESH',3.95,0,0,'computer engineering'),(326,'612203025','student26_computer_engineering@example.com','CHAUDHARI NIDHI NANDKUMAR',7.83,0,0,'computer engineering'),(327,'612203026','student27_computer_engineering@example.com','CHAUDHARY AVNISH RAJIV',8.89,0,0,'computer engineering'),(328,'612203027','student28_computer_engineering@example.com','CHAVAN SUMEDH MAHAVEER',8.83,0,0,'computer engineering'),(329,'612203028','student29_computer_engineering@example.com','CHHATRE TANMAY AJIT',9.17,0,0,'computer engineering'),(330,'612203029','student30_computer_engineering@example.com','CHINMAY XYZ BARVE',7.19,0,0,'computer engineering'),(501,'112105065','student1_electrical_engineering@example.com','TUPLONDHE NIVEDITA SUNIL',3.69,0,0,'electrical engineering'),(502,'612205001','student2_electrical_engineering@example.com','ABHISHEK ANNASO KALE',5.48,0,0,'electrical engineering'),(503,'612205002','student3_electrical_engineering@example.com','ADITYA MAHESH WARUNGSHE',4.87,0,0,'electrical engineering'),(504,'612205003','student4_electrical_engineering@example.com','ANJALI B VISHWAKARMA',7.75,0,0,'electrical engineering'),(505,'612205004','student5_electrical_engineering@example.com','APOORV B JADHAV',8.41,0,0,'electrical engineering'),(506,'612205005','student6_electrical_engineering@example.com','AVHAD SRUSHTI DIGAMBAR',5.62,0,0,'electrical engineering'),(507,'612205006','student7_electrical_engineering@example.com','BADGUJAR MITESH VISHWASRAO',5.46,0,0,'electrical engineering'),(508,'612205007','student8_electrical_engineering@example.com','BHAGWAT PAARTH VIKAS',8.11,0,0,'electrical engineering'),(509,'612205008','student9_electrical_engineering@example.com','BHOSALE VIDUR DASHARATH',4.82,0,0,'electrical engineering'),(510,'612205009','student10_electrical_engineering@example.com','BHUSARI TANVI DINESH',7.70,0,0,'electrical engineering'),(511,'612205010','student11_electrical_engineering@example.com','BIRIA DHANASHREE KAPIL',6.30,0,0,'electrical engineering'),(512,'612205012','student12_electrical_engineering@example.com','CHAUDHARI SMRUTI NILESH',6.60,0,0,'electrical engineering'),(513,'612205013','student13_electrical_engineering@example.com','DALVI ATHARVA SANJAY',7.92,0,0,'electrical engineering'),(514,'612205014','student14_electrical_engineering@example.com','DAMLE SHRUTEE VINAY',8.06,0,0,'electrical engineering'),(515,'612205015','student15_electrical_engineering@example.com','DESHMUKH YASHWANT VINAY',9.11,0,0,'electrical engineering'),(516,'612205016','student16_electrical_engineering@example.com','DESHPANDE SHREERANG RAJESH',8.84,0,0,'electrical engineering'),(517,'612205017','student17_electrical_engineering@example.com','DHIKALE TEJAS HIRAMAN',6.94,0,0,'electrical engineering'),(518,'612205018','student18_electrical_engineering@example.com','DIGRASKAR PRANAV PRAKASHRAO',7.98,0,0,'electrical engineering'),(519,'612205019','student19_electrical_engineering@example.com','DONGRE PRATIK RAGHUNATH',8.14,0,0,'electrical engineering'),(520,'612205020','student20_electrical_engineering@example.com','FARTADE YASH SANJAY',5.48,0,0,'electrical engineering'),(521,'612205021','student21_electrical_engineering@example.com','GHOTGALKAR TANVI DURGESH',8.30,0,0,'electrical engineering'),(522,'612205022','student22_electrical_engineering@example.com','HIMANSU SEKHAR HATI',5.17,0,0,'electrical engineering'),(523,'612205023','student23_electrical_engineering@example.com','IMTIYAZ B HUSSAIN',6.00,0,0,'electrical engineering'),(524,'612205024','student24_electrical_engineering@example.com','INWATE ADITYA JAGDISH',5.03,0,0,'electrical engineering'),(525,'612205025','student25_electrical_engineering@example.com','JADHAV NAMRATA BHIMRAO',5.86,0,0,'electrical engineering'),(526,'612205026','student26_electrical_engineering@example.com','JADHAV OMKAR DINESH',4.35,0,0,'electrical engineering'),(527,'612205027','student27_electrical_engineering@example.com','JOSHI MEGHA AMARENDRA',7.94,0,0,'electrical engineering'),(528,'612205028','student28_electrical_engineering@example.com','KAIVALYA B RAUT',6.59,0,0,'electrical engineering'),(529,'612205030','student29_electrical_engineering@example.com','KAMBLE PRANAV KIRAN',7.11,0,0,'electrical engineering'),(530,'612205031','student30_electrical_engineering@example.com','KARE SANIKA SARJERAO',7.13,0,0,'electrical engineering'),(901,'112109007','student1_instrumentation_engineering@example.com','GADEKAR VAISHNAVI VIJAY',4.87,0,0,'instrumentation engineering'),(902,'112109017','student2_instrumentation_engineering@example.com','KULMETHE SAHIL BHUJANGRAO',3.89,0,0,'instrumentation engineering'),(903,'112109040','student3_instrumentation_engineering@example.com','LANDE VEDANT VIJAY',6.41,0,0,'instrumentation engineering'),(904,'612209001','student4_instrumentation_engineering@example.com','ADITYA ANAND SINGH',7.81,0,0,'instrumentation engineering'),(905,'612209002','student5_instrumentation_engineering@example.com','AMAR JAGANNATH SANAP',5.68,0,0,'instrumentation engineering'),(906,'612209003','student6_instrumentation_engineering@example.com','ARORA VANSHIKA KAMAL',7.49,0,0,'instrumentation engineering'),(907,'612209004','student7_instrumentation_engineering@example.com','ARYAN KEDAR KULKARNI',6.40,0,0,'instrumentation engineering'),(908,'612209005','student8_instrumentation_engineering@example.com','BANKAR TUSHAR SOPAN',7.03,0,0,'instrumentation engineering'),(909,'612209006','student9_instrumentation_engineering@example.com','BURADKAR SATVIK SANDEEP',6.05,0,0,'instrumentation engineering'),(910,'612209007','student10_instrumentation_engineering@example.com','CHAUDHARY ABHAY NARESH',3.96,0,0,'instrumentation engineering'),(911,'612209008','student11_instrumentation_engineering@example.com','CHAURPAGAR VAIBHAVI SOPAN',7.43,0,0,'instrumentation engineering'),(912,'612209009','student12_instrumentation_engineering@example.com','DAMLE ADITYA VINAY',9.10,0,0,'instrumentation engineering'),(913,'612209010','student13_instrumentation_engineering@example.com','DANDEKAR PARAM RAHUL',8.97,0,0,'instrumentation engineering'),(914,'612209011','student14_instrumentation_engineering@example.com','DESAI JAASHAK DIVYESH',7.16,0,0,'instrumentation engineering'),(915,'612209012','student15_instrumentation_engineering@example.com','DHANGARE AMIT BALKRUSHNA',3.82,0,0,'instrumentation engineering'),(916,'612209013','student16_instrumentation_engineering@example.com','DHANWADE UDAY NARAYAN',5.98,0,0,'instrumentation engineering'),(917,'612209014','student17_instrumentation_engineering@example.com','DHORMARE VISHAL GORAKSHNATH',4.70,0,0,'instrumentation engineering'),(918,'612209015','student18_instrumentation_engineering@example.com','DISHA XYZ DIXIT',6.44,0,0,'instrumentation engineering'),(919,'612209016','student19_instrumentation_engineering@example.com','GHISAD ANEESH SANDEEP',8.79,0,0,'instrumentation engineering'),(920,'612209017','student20_instrumentation_engineering@example.com','GURAV ATHARVA RAJENDRA',8.79,0,0,'instrumentation engineering'),(921,'612209018','student21_instrumentation_engineering@example.com','HINGANE NANDINI PRAKASH',8.56,0,0,'instrumentation engineering'),(922,'612209019','student22_instrumentation_engineering@example.com','HITESH B SAMANTARAY',7.71,0,0,'instrumentation engineering'),(923,'612209020','student23_instrumentation_engineering@example.com','JAITIRTH VISHVESH PAGE',8.08,0,0,'instrumentation engineering'),(924,'612209021','student24_instrumentation_engineering@example.com','JOGIPETHKAR SANIKA SHRINIWAS',8.35,0,0,'instrumentation engineering'),(925,'612209022','student25_instrumentation_engineering@example.com','KADAM SHREERAM ASHOK',3.81,0,0,'instrumentation engineering'),(926,'612209023','student26_instrumentation_engineering@example.com','KESKAR SHRUTI AMOL',8.35,0,0,'instrumentation engineering'),(927,'612209024','student27_instrumentation_engineering@example.com','KHUSHAL B BANSAL',5.54,0,0,'instrumentation engineering'),(928,'612209025','student28_instrumentation_engineering@example.com','KORE VAIBHAVI RAVIKIRAN',5.35,0,0,'instrumentation engineering'),(929,'612209026','student29_instrumentation_engineering@example.com','KULKARNI AVDHUT VINAYAK',6.98,0,0,'instrumentation engineering'),(930,'612209028','student30_instrumentation_engineering@example.com','LUNKAD MOHAK PAWAN',8.76,0,0,'instrumentation engineering'),(1001,'112110024','student1_mechanical_engineering@example.com','CHAUDHARI PINAL NITIN',2.72,0,0,'mechanical engineering'),(1002,'112110034','student2_mechanical_engineering@example.com','DARADE HRUSHIKESH SHRIMANT',3.42,0,0,'mechanical engineering'),(1003,'112110070','student3_mechanical_engineering@example.com','MAHESHKAR MANAUTI BHOJRAJ',3.69,0,0,'mechanical engineering'),(1004,'112110082','student4_mechanical_engineering@example.com','MUSALE CHIRAG PRADIP',3.73,0,0,'mechanical engineering'),(1005,'112110089','student5_mechanical_engineering@example.com','PANDAV HARSHIKANT RAJESH',3.18,0,0,'mechanical engineering'),(1006,'112110126','student6_mechanical_engineering@example.com','SONAVANE AVADHOOT SHAILESH',4.29,0,0,'mechanical engineering'),(1007,'112110149','student7_mechanical_engineering@example.com','SONAWANE HARSH PRAKASH',3.63,0,0,'mechanical engineering'),(1008,'612210001','student8_mechanical_engineering@example.com','AAKRUTI XYZ TIWARI',6.92,0,0,'mechanical engineering'),(1009,'612210002','student9_mechanical_engineering@example.com','AARYA SANDEEP KENDALE',8.62,0,0,'mechanical engineering'),(1010,'612210003','student10_mechanical_engineering@example.com','ABHISHEK XYZ DESAI',5.89,0,0,'mechanical engineering'),(1011,'612210004','student11_mechanical_engineering@example.com','ADWAIT MILIND DIVEKAR',6.72,0,0,'mechanical engineering'),(1012,'612210005','student12_mechanical_engineering@example.com','AMBEKAR TEJ ANURAG',8.75,0,0,'mechanical engineering'),(1013,'612210006','student13_mechanical_engineering@example.com','ANIKET B NARAYAN',7.48,0,0,'mechanical engineering'),(1014,'612210007','student14_mechanical_engineering@example.com','ANMOL B RAINA',3.40,0,0,'mechanical engineering'),(1015,'612210008','student15_mechanical_engineering@example.com','ANSHIL XYZ EVEREN',8.63,0,0,'mechanical engineering'),(1016,'612210009','student16_mechanical_engineering@example.com','ARADHYE GIRISH ATUL',5.31,0,0,'mechanical engineering'),(1017,'612210010','student17_mechanical_engineering@example.com','ARYA PRADEEP THORAT',7.32,0,0,'mechanical engineering'),(1018,'612210011','student18_mechanical_engineering@example.com','ARYAN KUMAR BINDROO',7.23,0,0,'mechanical engineering'),(1019,'612210012','student19_mechanical_engineering@example.com','ATHARVA XYZ NENE',8.12,0,0,'mechanical engineering'),(1020,'612210013','student20_mechanical_engineering@example.com','ATHARVA B SOMAIYA',7.88,0,0,'mechanical engineering'),(1021,'612210016','student21_mechanical_engineering@example.com','AVHAD SIDDHI PRAMOD',7.82,0,0,'mechanical engineering'),(1022,'612210017','student22_mechanical_engineering@example.com','AYUSH XYZ PARASHAR',7.23,0,0,'mechanical engineering'),(1023,'612210018','student23_mechanical_engineering@example.com','AYUSH XYZ TOMAR',7.75,0,0,'mechanical engineering'),(1024,'612210019','student24_mechanical_engineering@example.com','BAGADE PRANAV PRADIP',6.49,0,0,'mechanical engineering'),(1025,'612210020','student25_mechanical_engineering@example.com','BANCHOD AADITYA VINAYAK',5.82,0,0,'mechanical engineering'),(1026,'612210021','student26_mechanical_engineering@example.com','BANKAR ASHWIN CHANDRAKANT',8.75,0,0,'mechanical engineering'),(1027,'612210022','student27_mechanical_engineering@example.com','BEJEKAR SOHAM SANTOSHKUMAR',6.17,0,0,'mechanical engineering'),(1028,'612210023','student28_mechanical_engineering@example.com','BHAGWAT DARSHAN MAHESH',9.15,0,0,'mechanical engineering'),(1029,'612210024','student29_mechanical_engineering@example.com','BHAGWAT MIHIKA PRASHANT',7.54,0,0,'mechanical engineering'),(1030,'612210025','student30_mechanical_engineering@example.com','BHALERAO SWAPNIL KIRAN',6.97,0,0,'mechanical engineering'),(1301,'112113031','student1_manufacturing_engineering@example.com','KHARAT SAMIKSHA SHAMRAO',4.22,0,0,'manufacturing engineering'),(1302,'112113037','student2_manufacturing_engineering@example.com','MAHAJAN SHRUTI GOPICHAND',3.00,0,0,'manufacturing engineering'),(1303,'112113055','student3_manufacturing_engineering@example.com','SOLANKE SAKSHI SANTOSH',3.63,0,0,'manufacturing engineering'),(1304,'112113058','student4_manufacturing_engineering@example.com','TAKALKAR ADITYA SWAMI',4.30,0,0,'manufacturing engineering'),(1305,'612213114','student5_manufacturing_engineering@example.com','ATUL BANWARILAL PODDAR',8.92,0,0,'manufacturing engineering'),(1306,'612213001','student6_manufacturing_engineering@example.com','AKSHAT CHANDRAKANT DAKHANE',7.88,0,0,'manufacturing engineering'),(1307,'612213002','student7_manufacturing_engineering@example.com','AMBEKAR ABHISHEK GANESH',7.48,0,0,'manufacturing engineering'),(1308,'612213003','student8_manufacturing_engineering@example.com','ARNAV KAVISH WARHADE',5.83,0,0,'manufacturing engineering'),(1309,'612213004','student9_manufacturing_engineering@example.com','ATHARVA PRAVIN SHINGANE',4.70,0,0,'manufacturing engineering'),(1310,'612213005','student10_manufacturing_engineering@example.com','AZEEM LIYAKAT MAGDUM',8.16,0,0,'manufacturing engineering'),(1311,'612213006','student11_manufacturing_engineering@example.com','BALDAWA ISHAAN RADHESHYAM',5.88,0,0,'manufacturing engineering'),(1312,'612213007','student12_manufacturing_engineering@example.com','BALLAL SHARDUL AVINASH',3.94,0,0,'manufacturing engineering'),(1313,'612213009','student13_manufacturing_engineering@example.com','BHAGAT UMEED SAMUDRA',6.59,0,0,'manufacturing engineering'),(1314,'612213010','student14_manufacturing_engineering@example.com','BHAISWAR SAHIL MUKESH',6.89,0,0,'manufacturing engineering'),(1315,'612213011','student15_manufacturing_engineering@example.com','BHANDARI HARSHALI SANJAY',8.27,0,0,'manufacturing engineering'),(1316,'612213012','student16_manufacturing_engineering@example.com','BHUTADA SHRAVAN VIJAY',5.33,0,0,'manufacturing engineering'),(1317,'612213013','student17_manufacturing_engineering@example.com','BIDKAR ANUSHKA PRALHAD',6.84,0,0,'manufacturing engineering'),(1318,'612213014','student18_manufacturing_engineering@example.com','BIRUTE YUVRAJ AJAY',5.49,0,0,'manufacturing engineering'),(1319,'612213015','student19_manufacturing_engineering@example.com','BIYANI NITYA KAMALKISHOR',8.39,0,0,'manufacturing engineering'),(1320,'612213016','student20_manufacturing_engineering@example.com','BORSE OM JEEVAN',6.47,0,0,'manufacturing engineering'),(1321,'612213017','student21_manufacturing_engineering@example.com','CHAURE ROHIT MADHUKAR',8.03,0,0,'manufacturing engineering'),(1322,'612213018','student22_manufacturing_engineering@example.com','CHAVAN KAUSTUBH RAKESH',4.53,0,0,'manufacturing engineering'),(1323,'612213019','student23_manufacturing_engineering@example.com','CHOPADE SAYALI SANDESH',5.92,0,0,'manufacturing engineering'),(1324,'612213020','student24_manufacturing_engineering@example.com','CHORE VARUN SUNIL',5.28,0,0,'manufacturing engineering'),(1325,'612213021','student25_manufacturing_engineering@example.com','DADGE SHUBHAM SHIVANAND',5.45,0,0,'manufacturing engineering'),(1326,'612213022','student26_manufacturing_engineering@example.com','DAHALE AADITYA ANNASAHEB',4.86,0,0,'manufacturing engineering'),(1327,'612213023','student27_manufacturing_engineering@example.com','DATAR AJAY BHARAT',5.36,0,0,'manufacturing engineering'),(1328,'612213024','student28_manufacturing_engineering@example.com','DEVASHISH PREMRAJ RADE',6.94,0,0,'manufacturing engineering'),(1329,'612213025','student29_manufacturing_engineering@example.com','DHODAMANI PRANAV GURABASAPPA',7.47,0,0,'manufacturing engineering'),(1330,'612213026','student30_manufacturing_engineering@example.com','DHOOT ATHARV PURUSHOTTAMDAS',7.13,0,0,'manufacturing engineering');
/*!40000 ALTER TABLE `registration_second_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_third_year`
--

DROP TABLE IF EXISTS `registration_third_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_third_year` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mis_no` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cgpa` decimal(4,2) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `selected` tinyint(1) NOT NULL,
  `branch` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_third_year`
--

LOCK TABLES `registration_third_year` WRITE;
/*!40000 ALTER TABLE `registration_third_year` DISABLE KEYS */;
INSERT INTO `registration_third_year` VALUES (101,'112101042','student1_civil_engineering@example.com','PARSAWAT TEJAS MANOJ',6.69,0,0,'civil engineering'),(102,'112101043','student2_civil_engineering@example.com','PATIL HARSHADA YUVRAJ',7.93,0,0,'civil engineering'),(103,'112101044','student3_civil_engineering@example.com','PATIL PIYUSH JITESH',6.92,0,0,'civil engineering'),(104,'112101045','student4_civil_engineering@example.com','PATIL RISHIKESH VILAS',6.11,0,0,'civil engineering'),(105,'112101046','student5_civil_engineering@example.com','PATIL RUSHIKESH YUVARAJ',7.06,0,0,'civil engineering'),(106,'112101047','student6_civil_engineering@example.com','PATIL SMITA PRAKASH',8.35,0,0,'civil engineering'),(107,'112101048','student7_civil_engineering@example.com','PATIL SWAPNIL DHANANJAY',7.27,0,0,'civil engineering'),(108,'112101049','student8_civil_engineering@example.com','PATIL VAISHNAVI SHARAD',8.30,0,0,'civil engineering'),(109,'112101050','student9_civil_engineering@example.com','PAWAR ADITYA VIKRAM',7.76,0,0,'civil engineering'),(110,'112101051','student10_civil_engineering@example.com','PEMA B TSOMU',6.64,0,0,'civil engineering'),(111,'112101052','student11_civil_engineering@example.com','PILLEWAR VAIBHAV RAJESHWAR',6.26,0,0,'civil engineering'),(112,'112101053','student12_civil_engineering@example.com','PRASAD GOPAL KUMAR',7.09,0,0,'civil engineering'),(113,'112101054','student13_civil_engineering@example.com','PRATHAMESH B DHOMSE',6.39,0,0,'civil engineering'),(114,'112101055','student14_civil_engineering@example.com','PRATIK B ROTHE',7.78,0,0,'civil engineering'),(115,'112101056','student15_civil_engineering@example.com','PRATIMA PRAKASHSINGH RAJPUT',7.86,0,0,'civil engineering'),(116,'112101057','student16_civil_engineering@example.com','RAMTEKE ANUSHKA AVINASH',6.84,0,0,'civil engineering'),(117,'112101058','student17_civil_engineering@example.com','RAMTEKE ARYAN DINESH',6.31,0,0,'civil engineering'),(118,'112101059','student18_civil_engineering@example.com','REVATI NAGOSING CHANDEL',7.30,0,0,'civil engineering'),(119,'112101061','student19_civil_engineering@example.com','SAHARE VAISHNAVI BABU',6.45,0,0,'civil engineering'),(120,'112101063','student20_civil_engineering@example.com','SHANTANU B KHANANDE',4.91,0,0,'civil engineering'),(121,'112101064','student21_civil_engineering@example.com','SHINDE ONKAR SHRIKANT',7.84,0,0,'civil engineering'),(122,'112101065','student22_civil_engineering@example.com','SHINDE RADHA SURYAKANT',8.03,0,0,'civil engineering'),(123,'112101066','student23_civil_engineering@example.com','SHUBHAM HANSRAJ AVHAD',7.70,0,0,'civil engineering'),(124,'112101067','student24_civil_engineering@example.com','SHWETGOURI SHIVAJIRAO JADHAV',7.73,0,0,'civil engineering'),(125,'112101068','student25_civil_engineering@example.com','SOMANI SANKALP ATUL',6.38,0,0,'civil engineering'),(126,'112101069','student26_civil_engineering@example.com','SUDE MAYURI BHALCHANDRA',7.27,0,0,'civil engineering'),(127,'112101071','student27_civil_engineering@example.com','TIRPUDE OJAS KARTIK',6.08,0,0,'civil engineering'),(128,'112101073','student28_civil_engineering@example.com','VARUN B GUPTA',7.73,0,0,'civil engineering'),(129,'112101074','student29_civil_engineering@example.com','WAGHMARE ARYAN SHASHIKANT',6.78,0,0,'civil engineering'),(130,'112101075','student30_civil_engineering@example.com','WANKHADE SAHIL PRADNYAKAR',6.55,0,0,'civil engineering'),(301,'112103001','student1_computer_engineering@example.com','AARYA ROHIT KAWALAY',7.07,0,0,'computer engineering'),(302,'112103002','student2_computer_engineering@example.com','AAYUSH SHRIKANT ATHAWALE',6.15,0,0,'computer engineering'),(303,'112103003','student3_computer_engineering@example.com','ABHANG ANUJ PRAVIN',6.65,0,0,'computer engineering'),(304,'112103004','student4_computer_engineering@example.com','ABHINAV B KURULE',9.31,0,0,'computer engineering'),(305,'112103006','student5_computer_engineering@example.com','AISHWARYA PRAKASH KOLI',6.45,0,0,'computer engineering'),(306,'112103007','student6_computer_engineering@example.com','AJABE VISHAL ASHOK',8.49,0,0,'computer engineering'),(307,'112103008','student7_computer_engineering@example.com','AMAAN NAYEEM JAMADAR',8.23,0,0,'computer engineering'),(308,'112103009','student8_computer_engineering@example.com','ANANTA DINESH HATWAR',6.02,0,0,'computer engineering'),(309,'112103010','student9_computer_engineering@example.com','ANAS NASIR SHAIKH',5.23,0,0,'computer engineering'),(310,'112103011','student10_computer_engineering@example.com','ANUSHKA VINOD MORE',7.65,0,0,'computer engineering'),(311,'112103012','student11_computer_engineering@example.com','APTE MOHIT PARAG',9.42,0,0,'computer engineering'),(312,'112103013','student12_computer_engineering@example.com','ARU PAWAN JAGANNATH',5.65,0,0,'computer engineering'),(313,'112103014','student13_computer_engineering@example.com','ARYAN SHIRISH THAKRE',7.86,0,0,'computer engineering'),(314,'112103015','student14_computer_engineering@example.com','ATHARVA ASHUTOSH MUTSADDI',9.32,0,0,'computer engineering'),(315,'112103016','student15_computer_engineering@example.com','AYUSH SAGAR AMBHORKAR',8.67,0,0,'computer engineering'),(316,'112103017','student16_computer_engineering@example.com','BADARKHE HARIOM DNYANESHWAR',7.18,0,0,'computer engineering'),(317,'112103018','student17_computer_engineering@example.com','BADGUJAR VAISHNAVI RAVINDRA',8.41,0,0,'computer engineering'),(318,'112103019','student18_computer_engineering@example.com','BAVISKAR ADITYA PRAMOD',7.20,0,0,'computer engineering'),(319,'112103020','student19_computer_engineering@example.com','BHAGYASHREE LOMESH PATIL',8.57,0,0,'computer engineering'),(320,'112103021','student20_computer_engineering@example.com','BHARGAVA DAKSHA NEERAJ',5.86,0,0,'computer engineering'),(321,'112103022','student21_computer_engineering@example.com','BHATKHANDE SHREYA SANDEEP',8.73,0,0,'computer engineering'),(322,'112103023','student22_computer_engineering@example.com','BHOPALE SNEHAL PANDURANG',6.22,0,0,'computer engineering'),(323,'112103024','student23_computer_engineering@example.com','BHOSALE ABHIJEET AVINASH',6.34,0,0,'computer engineering'),(324,'112103025','student24_computer_engineering@example.com','BHOSALE PARAS CHANDRAKANT',6.57,0,0,'computer engineering'),(325,'112103026','student25_computer_engineering@example.com','BONGIRWAR YASH MILIND',7.76,0,0,'computer engineering'),(326,'112103027','student26_computer_engineering@example.com','BOSE SNEHASISH SUBRATO',8.02,0,0,'computer engineering'),(327,'112103028','student27_computer_engineering@example.com','CHAUDHARI VIPUL SANJAY',8.76,0,0,'computer engineering'),(328,'112103029','student28_computer_engineering@example.com','CHIDRAWAR KRISHNA GAJANAN',7.47,0,0,'computer engineering'),(329,'112103030','student29_computer_engineering@example.com','CHOUDHARY ADITYA PRASHANT',9.51,0,0,'computer engineering'),(330,'112103031','student30_computer_engineering@example.com','DATAR PRANAV PARAG',7.58,0,0,'computer engineering'),(501,'111905073','student1_electrical_engineering@example.com','YOMDA B ORI',5.49,0,0,'electrical engineering'),(502,'112105062','student2_electrical_engineering@example.com','SHAIKH JUNAID ASLAM',8.69,0,0,'electrical engineering'),(503,'112105001','student3_electrical_engineering@example.com','AAKANKSHA SHRINIVAS ADONI',8.39,0,0,'electrical engineering'),(504,'112105002','student4_electrical_engineering@example.com','AGRE RUPALI BHAIRU',5.60,0,0,'electrical engineering'),(505,'112105003','student5_electrical_engineering@example.com','ANISH B PANDITH',5.54,0,0,'electrical engineering'),(506,'112105004','student6_electrical_engineering@example.com','ARYAN B KANSE',7.96,0,0,'electrical engineering'),(507,'112105005','student7_electrical_engineering@example.com','ATHARVA RAVINDRA JOSHI',8.29,0,0,'electrical engineering'),(508,'112105006','student8_electrical_engineering@example.com','AWCHAR DARSHANSINGH KAWARSINGH',7.91,0,0,'electrical engineering'),(509,'112105007','student9_electrical_engineering@example.com','BAGADE ABHISHEK VIJAY',3.58,0,0,'electrical engineering'),(510,'112105008','student10_electrical_engineering@example.com','BAGAL DIVYA RAMKRISHNA',6.72,0,0,'electrical engineering'),(511,'112105009','student11_electrical_engineering@example.com','BEHARE PRAJWAL RAJENDRA',7.16,0,0,'electrical engineering'),(512,'112105010','student12_electrical_engineering@example.com','BHAGWAT ANUJA AVINASH',7.47,0,0,'electrical engineering'),(513,'112105011','student13_electrical_engineering@example.com','BHAGWAT ATHARVA ULHAS',7.87,0,0,'electrical engineering'),(514,'112105015','student14_electrical_engineering@example.com','DHAIT ANIKET GIRISH',6.62,0,0,'electrical engineering'),(515,'112105016','student15_electrical_engineering@example.com','DIKKAR RUSHIKESH GOPAL',5.13,0,0,'electrical engineering'),(516,'112105017','student16_electrical_engineering@example.com','GACCHE SANCHI MILIND',6.20,0,0,'electrical engineering'),(517,'112105018','student17_electrical_engineering@example.com','GADEKAR SAKSHI BHASKAR',6.40,0,0,'electrical engineering'),(518,'112105019','student18_electrical_engineering@example.com','GAGANDEEP X Y',4.35,0,0,'electrical engineering'),(519,'112105020','student19_electrical_engineering@example.com','GAJANKUSH NIKIL VIJAY',4.48,0,0,'electrical engineering'),(520,'112105021','student20_electrical_engineering@example.com','GHADGE TANISHQ CHANDRAKANT',6.29,0,0,'electrical engineering'),(521,'112105022','student21_electrical_engineering@example.com','GHAYTIDAK SHIVRAJ MANOHAR',6.79,0,0,'electrical engineering'),(522,'112105023','student22_electrical_engineering@example.com','GHEJI SANJAY KASHAPA',8.04,0,0,'electrical engineering'),(523,'112105024','student23_electrical_engineering@example.com','GIRASE MOHIT RANJITSINGH',8.49,0,0,'electrical engineering'),(524,'112105025','student24_electrical_engineering@example.com','GODBOLE ATHARVA VINAY',9.22,0,0,'electrical engineering'),(525,'112105026','student25_electrical_engineering@example.com','HOLKAR SUMIT SUDHAKAR',7.98,0,0,'electrical engineering'),(526,'112105027','student26_electrical_engineering@example.com','INGALE YASHWANT RAJENDRA',5.75,0,0,'electrical engineering'),(527,'112105028','student27_electrical_engineering@example.com','JAWALE SAMEER SANJAY',4.45,0,0,'electrical engineering'),(528,'112105029','student28_electrical_engineering@example.com','KADAM VAISHNAVEE JAYSING',7.78,0,0,'electrical engineering'),(529,'112105030','student29_electrical_engineering@example.com','KAMBLE SWARNIM SURESH',7.31,0,0,'electrical engineering'),(530,'112105032','student30_electrical_engineering@example.com','KHAN IBRAHIM ANWAR',7.31,0,0,'electrical engineering'),(901,'112009040','student1_instrumentation_engineering@example.com','MADAKE ANUP AVINASH',5.72,0,0,'instrumentation engineering'),(902,'112109001','student2_instrumentation_engineering@example.com','ADITYA VIJAYKUMAR AGRE',7.33,0,0,'instrumentation engineering'),(903,'112109002','student3_instrumentation_engineering@example.com','AMBHORE ADITYA MADHAV',7.30,0,0,'instrumentation engineering'),(904,'112109003','student4_instrumentation_engineering@example.com','BADUGU B MEDHA',7.74,0,0,'instrumentation engineering'),(905,'112109004','student5_instrumentation_engineering@example.com','DAWANE UTKARSHA ASHOKKUMAR',7.03,0,0,'instrumentation engineering'),(906,'112109005','student6_instrumentation_engineering@example.com','DESHPANDE SHAUNAK PARESH',7.28,0,0,'instrumentation engineering'),(907,'112109006','student7_instrumentation_engineering@example.com','FATAK KIRTI CHANDRAKANT',7.10,0,0,'instrumentation engineering'),(908,'112109008','student8_instrumentation_engineering@example.com','GANDHI RAHUL RAJENDRA',8.26,0,0,'instrumentation engineering'),(909,'112109009','student9_instrumentation_engineering@example.com','GOKHALE SUYOG SUDHIR',6.38,0,0,'instrumentation engineering'),(910,'112109010','student10_instrumentation_engineering@example.com','HARODE CHAITRA LALIT',4.53,0,0,'instrumentation engineering'),(911,'112109011','student11_instrumentation_engineering@example.com','INDURKAR MOHIT MANOJ',8.12,0,0,'instrumentation engineering'),(912,'112109012','student12_instrumentation_engineering@example.com','INGALE PARTH KISHOR',6.09,0,0,'instrumentation engineering'),(913,'112109013','student13_instrumentation_engineering@example.com','INGOLE YATHARTH SANJAY',6.24,0,0,'instrumentation engineering'),(914,'112109014','student14_instrumentation_engineering@example.com','JADHAV SHWETA RAJENDRA',7.57,0,0,'instrumentation engineering'),(915,'112109015','student15_instrumentation_engineering@example.com','JANYAA ARIYA TIKOO',5.19,0,0,'instrumentation engineering'),(916,'112109016','student16_instrumentation_engineering@example.com','JOSHI HRISHIKESH SANDEEP',7.62,0,0,'instrumentation engineering'),(917,'112109020','student17_instrumentation_engineering@example.com','LOKHANDE SHRAVANI NAVNATH',6.49,0,0,'instrumentation engineering'),(918,'112109021','student18_instrumentation_engineering@example.com','LONEKAR GANGASAGAR SAYGONDA',7.45,0,0,'instrumentation engineering'),(919,'112109023','student19_instrumentation_engineering@example.com','NAIK CHINMAY SACHIN',8.07,0,0,'instrumentation engineering'),(920,'112109025','student20_instrumentation_engineering@example.com','NEGLUR ATHARVA RAVISHANKAR',7.44,0,0,'instrumentation engineering'),(921,'112109026','student21_instrumentation_engineering@example.com','PATARE HRUTUJA SANDEEP',6.49,0,0,'instrumentation engineering'),(922,'112109027','student22_instrumentation_engineering@example.com','RAI DEV RAJKUMAR',7.71,0,0,'instrumentation engineering'),(923,'112109028','student23_instrumentation_engineering@example.com','RAJPUT ABHAY BAHADUR',6.33,0,0,'instrumentation engineering'),(924,'112109029','student24_instrumentation_engineering@example.com','RATHOD TANMAYEE MURLIDHAR',6.14,0,0,'instrumentation engineering'),(925,'112109030','student25_instrumentation_engineering@example.com','SAHASRABUDHE NISHANT AMIT',9.36,0,0,'instrumentation engineering'),(926,'112109031','student26_instrumentation_engineering@example.com','SAROWARE AYUSH SANDIP',6.16,0,0,'instrumentation engineering'),(927,'112109032','student27_instrumentation_engineering@example.com','SATBADRE ANSHUL ANAND',7.44,0,0,'instrumentation engineering'),(928,'112109033','student28_instrumentation_engineering@example.com','SAURABH GAJANAN SHINDE',6.50,0,0,'instrumentation engineering'),(929,'112109034','student29_instrumentation_engineering@example.com','SHITIZ B RAJPUT',4.36,0,0,'instrumentation engineering'),(930,'112109035','student30_instrumentation_engineering@example.com','SURKULE PURVA LAXMAN',4.50,0,0,'instrumentation engineering'),(1001,'112010011','student1_mechanical_engineering@example.com','BHANDARE ABHISHEK SOPANRAO',5.52,0,0,'mechanical engineering'),(1002,'112010024','student2_mechanical_engineering@example.com','CHOUDHARY YOGESH PARMESHWAR',4.99,0,0,'mechanical engineering'),(1003,'112010058','student3_mechanical_engineering@example.com','KAMWAMANG B LYTTAND',4.99,0,0,'mechanical engineering'),(1004,'112110001','student4_mechanical_engineering@example.com','ABHYANKAR AMAN DEEPESH',7.57,0,0,'mechanical engineering'),(1005,'112110002','student5_mechanical_engineering@example.com','ADITI BHASKAR KARADE',6.94,0,0,'mechanical engineering'),(1006,'112110003','student6_mechanical_engineering@example.com','ADITYA SUKHDEO SAYAM',2.80,0,0,'mechanical engineering'),(1007,'112110004','student7_mechanical_engineering@example.com','ADVAITH B HARI',3.81,0,0,'mechanical engineering'),(1008,'112110005','student8_mechanical_engineering@example.com','AJINKYA PRAMOD NAIK',6.28,0,0,'mechanical engineering'),(1009,'112110006','student9_mechanical_engineering@example.com','ALDAR PRAVIN BIRA',5.67,0,0,'mechanical engineering'),(1010,'112110007','student10_mechanical_engineering@example.com','AMBEKAR MANASWI ARUN',3.31,0,0,'mechanical engineering'),(1011,'112110008','student11_mechanical_engineering@example.com','AMIT VIJAY PAWAR',6.64,0,0,'mechanical engineering'),(1012,'112110009','student12_mechanical_engineering@example.com','ANIKET B RAINA',7.08,0,0,'mechanical engineering'),(1013,'112110010','student13_mechanical_engineering@example.com','ANIKET VILAS KARALE',6.85,0,0,'mechanical engineering'),(1014,'112110011','student14_mechanical_engineering@example.com','ANISH BANDU RAMTEKE',5.15,0,0,'mechanical engineering'),(1015,'112110012','student15_mechanical_engineering@example.com','ANISH PRAKASH PATIL',6.55,0,0,'mechanical engineering'),(1016,'112110013','student16_mechanical_engineering@example.com','ANMOL RAVIKANT MARATHE',4.99,0,0,'mechanical engineering'),(1017,'112110014','student17_mechanical_engineering@example.com','ATTARDE KUNAL TRIMBAK',8.56,0,0,'mechanical engineering'),(1018,'112110015','student18_mechanical_engineering@example.com','AVHAD SAKSHI RAVINDRA',5.72,0,0,'mechanical engineering'),(1019,'112110016','student19_mechanical_engineering@example.com','AYUSH B GOYAL',4.41,0,0,'mechanical engineering'),(1020,'112110017','student20_mechanical_engineering@example.com','BACCHE PRATHAMESH SANJAY',7.73,0,0,'mechanical engineering'),(1021,'112110018','student21_mechanical_engineering@example.com','BANTHIA VEDANT HARSHAL',8.13,0,0,'mechanical engineering'),(1022,'112110019','student22_mechanical_engineering@example.com','BARVE UNNATI VAIBHAV',6.87,0,0,'mechanical engineering'),(1023,'112110020','student23_mechanical_engineering@example.com','BHANDARI SAMYAK SANJAY',6.91,0,0,'mechanical engineering'),(1024,'112110021','student24_mechanical_engineering@example.com','BHIDE ATHARVA HRISHIKESH',7.48,0,0,'mechanical engineering'),(1025,'112110022','student25_mechanical_engineering@example.com','BHOIR ANAY RAMDAS',4.12,0,0,'mechanical engineering'),(1026,'112110023','student26_mechanical_engineering@example.com','BHUJBAL YASHODHAN BALKRISHNA',7.08,0,0,'mechanical engineering'),(1027,'112110025','student27_mechanical_engineering@example.com','CHAUDHARI RUTVIK RAJESHWAR',8.10,0,0,'mechanical engineering'),(1028,'112110026','student28_mechanical_engineering@example.com','CHAVAN PARTH PRASHANT',7.41,0,0,'mechanical engineering'),(1029,'112110027','student29_mechanical_engineering@example.com','CHAVAN RUSHIKESH VILAS',6.95,0,0,'mechanical engineering'),(1030,'112110028','student30_mechanical_engineering@example.com','CHINMAY PRASHANT DESHPANDE',6.33,0,0,'mechanical engineering'),(1301,'112013024','student1_manufacturing_engineering@example.com','KARHALE GAJANAN RAMCHANDRA',4.30,0,0,'manufacturing engineering'),(1302,'112013035','student2_manufacturing_engineering@example.com','MANDAKE AISHWARYA VIJAY',4.55,0,0,'manufacturing engineering'),(1303,'112013068','student3_manufacturing_engineering@example.com','WAIRAGADE SUPREET NARENDRA',4.90,0,0,'manufacturing engineering'),(1304,'112113001','student4_manufacturing_engineering@example.com','ADITYA SURYAKANT RAUT',6.70,0,0,'manufacturing engineering'),(1305,'112113002','student5_manufacturing_engineering@example.com','ADITYAN B ARUMUGANAINAR',9.08,0,0,'manufacturing engineering'),(1306,'112113005','student6_manufacturing_engineering@example.com','BEDRE ANUJ ARUNRAO',7.69,0,0,'manufacturing engineering'),(1307,'112113006','student7_manufacturing_engineering@example.com','BHANDARI AAYUSH ANAND',7.33,0,0,'manufacturing engineering'),(1308,'112113007','student8_manufacturing_engineering@example.com','CHANDAK HARSHA ANAND',6.14,0,0,'manufacturing engineering'),(1309,'112113008','student9_manufacturing_engineering@example.com','DABADE VAIDEHI VITTHAL',7.13,0,0,'manufacturing engineering'),(1310,'112113009','student10_manufacturing_engineering@example.com','DAHALE PRATIK DEVENDRA',4.63,0,0,'manufacturing engineering'),(1311,'112113010','student11_manufacturing_engineering@example.com','DAWARE PRATOD ANIRUDDHA',6.72,0,0,'manufacturing engineering'),(1312,'112113011','student12_manufacturing_engineering@example.com','DEOBHANKAR ANUSHKA ANIL',6.58,0,0,'manufacturing engineering'),(1313,'112113012','student13_manufacturing_engineering@example.com','DESHMUKH ATHARAW MAHESH',6.60,0,0,'manufacturing engineering'),(1314,'112113014','student14_manufacturing_engineering@example.com','DHAKULKAR PRIYA PRADEEP',6.66,0,0,'manufacturing engineering'),(1315,'112113015','student15_manufacturing_engineering@example.com','DUMANA MANTHAN NAMDEV',4.88,0,0,'manufacturing engineering'),(1316,'112113016','student16_manufacturing_engineering@example.com','GAJANKUSH ANIKET VIJAY',4.90,0,0,'manufacturing engineering'),(1317,'112113017','student17_manufacturing_engineering@example.com','GONDASE KUNDAN MAHENDRA',5.80,0,0,'manufacturing engineering'),(1318,'112113019','student18_manufacturing_engineering@example.com','GUJARATHI BHAKTI MANISH',8.20,0,0,'manufacturing engineering'),(1319,'112113020','student19_manufacturing_engineering@example.com','HARDAS SOHAM HARSHAD',8.13,0,0,'manufacturing engineering'),(1320,'112113022','student20_manufacturing_engineering@example.com','HOLE PRANAV ASHOK',6.72,0,0,'manufacturing engineering'),(1321,'112113023','student21_manufacturing_engineering@example.com','HULYALKAR MUKTA SHRINIVAS',6.72,0,0,'manufacturing engineering'),(1322,'112113024','student22_manufacturing_engineering@example.com','JANE SOHAM NITIN',8.30,0,0,'manufacturing engineering'),(1323,'112113026','student23_manufacturing_engineering@example.com','JORI SAI MARTAND',6.06,0,0,'manufacturing engineering'),(1324,'112113027','student24_manufacturing_engineering@example.com','JOSHI ADITI ANAY',8.14,0,0,'manufacturing engineering'),(1325,'112113028','student25_manufacturing_engineering@example.com','KAJGIKAR RUGVED ASHISH',7.79,0,0,'manufacturing engineering'),(1326,'112113029','student26_manufacturing_engineering@example.com','KALE PRATHAMESH PURUSHOTTAM',5.26,0,0,'manufacturing engineering'),(1327,'112113030','student27_manufacturing_engineering@example.com','KASWA SAKET DHIRENDRA',8.16,0,0,'manufacturing engineering'),(1328,'112113032','student28_manufacturing_engineering@example.com','KOUSTUB VINOD PATIL',8.12,0,0,'manufacturing engineering'),(1329,'112113038','student29_manufacturing_engineering@example.com','MAINKAR MIHIR SUDHIR',6.23,0,0,'manufacturing engineering'),(1330,'112113039','student30_manufacturing_engineering@example.com','MANDHARE SMRUTI SUNIL',7.79,0,0,'manufacturing engineering');
/*!40000 ALTER TABLE `registration_third_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortlisting_room`
--

DROP TABLE IF EXISTS `shortlisting_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shortlisting_room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student1` varchar(10) DEFAULT NULL,
  `student2` varchar(10) DEFAULT NULL,
  `student3` varchar(10) DEFAULT NULL,
  `student4` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortlisting_room`
--

LOCK TABLES `shortlisting_room` WRITE;
/*!40000 ALTER TABLE `shortlisting_room` DISABLE KEYS */;
INSERT INTO `shortlisting_room` VALUES (1,'EN23167975','EN23108587',NULL,NULL),(2,'EN23131626','EN23177796',NULL,NULL);
/*!40000 ALTER TABLE `shortlisting_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortlisting_roommaterequest`
--

DROP TABLE IF EXISTS `shortlisting_roommaterequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shortlisting_roommaterequest` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sender_application_id` varchar(10) NOT NULL,
  `receiver_application_id` varchar(10) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortlisting_roommaterequest`
--

LOCK TABLES `shortlisting_roommaterequest` WRITE;
/*!40000 ALTER TABLE `shortlisting_roommaterequest` DISABLE KEYS */;
INSERT INTO `shortlisting_roommaterequest` VALUES (1,'EN23131626','EN23147051',0,'2024-03-28 06:24:27.217214'),(2,'EN23147051','EN23115055',0,'2024-03-28 23:36:57.932455'),(3,'EN23131626','EN23115055',0,'2024-03-28 23:40:23.170525'),(4,'EN23131626','EN23177796',1,'2024-03-28 23:48:01.546056'),(5,'EN23177796','EN23115055',0,'2024-03-29 00:27:21.026052'),(6,'EN23177796','EN23147051',0,'2024-03-29 00:27:40.305032'),(8,'EN23167975','EN23115055',0,'2024-04-01 04:17:32.929058'),(10,'EN23167975','EN23147051',0,'2024-04-01 04:18:44.678701'),(12,'EN23167975','EN23108587',1,'2024-04-01 04:22:27.139191'),(14,'EN23108587','EN23115055',0,'2024-04-01 04:29:06.646045'),(16,'EN23108587','EN23147051',0,'2024-04-01 07:50:31.946289');
/*!40000 ALTER TABLE `shortlisting_roommaterequest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 16:18:48
