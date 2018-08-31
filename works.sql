-- MySQL dump 10.13  Distrib 8.0.12, for Linux (x86_64)
--
-- Host: localhost    Database: works
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `works`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `works` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `works`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can add group',3,'add_group'),(9,'Can change group',3,'change_group'),(10,'Can delete group',3,'delete_group'),(11,'Can add user',4,'add_user'),(12,'Can change user',4,'change_user'),(13,'Can delete user',4,'delete_user'),(14,'Can view group',3,'view_group'),(15,'Can view permission',2,'view_permission'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Bookmark',7,'add_bookmark'),(26,'Can change Bookmark',7,'change_bookmark'),(27,'Can delete Bookmark',7,'delete_bookmark'),(28,'Can add User Setting',8,'add_usersettings'),(29,'Can change User Setting',8,'change_usersettings'),(30,'Can delete User Setting',8,'delete_usersettings'),(31,'Can add User Widget',9,'add_userwidget'),(32,'Can change User Widget',9,'change_userwidget'),(33,'Can delete User Widget',9,'delete_userwidget'),(34,'Can add log entry',10,'add_log'),(35,'Can change log entry',10,'change_log'),(36,'Can delete log entry',10,'delete_log'),(37,'Can view Bookmark',7,'view_bookmark'),(38,'Can view log entry',10,'view_log'),(39,'Can view User Setting',8,'view_usersettings'),(40,'Can view User Widget',9,'view_userwidget'),(41,'Can add 作品',11,'add_works'),(42,'Can change 作品',11,'change_works'),(43,'Can delete 作品',11,'delete_works'),(44,'Can view 作品',11,'view_works');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$ymjT7UlwbCmy$C9SuGZvYlpln8ZkpeoVZZiYPcLoPv/GXauo19/xnyMc=','2018-09-01 02:23:07.234418',1,'feihu1996x','','','gsx0312@qq.com',1,1,'2018-08-25 20:26:42.190365');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'main','works'),(6,'sessions','session'),(7,'xadmin','bookmark'),(10,'xadmin','log'),(8,'xadmin','usersettings'),(9,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-08-25 20:23:42.941671'),(2,'auth','0001_initial','2018-08-25 20:23:45.071911'),(3,'admin','0001_initial','2018-08-25 20:23:45.586726'),(4,'admin','0002_logentry_remove_auto_add','2018-08-25 20:23:45.636697'),(5,'contenttypes','0002_remove_content_type_name','2018-08-25 20:23:46.007096'),(6,'auth','0002_alter_permission_name_max_length','2018-08-25 20:23:46.214133'),(7,'auth','0003_alter_user_email_max_length','2018-08-25 20:23:46.404819'),(8,'auth','0004_alter_user_username_opts','2018-08-25 20:23:46.459110'),(9,'auth','0005_alter_user_last_login_null','2018-08-25 20:23:46.653554'),(10,'auth','0006_require_contenttypes_0002','2018-08-25 20:23:46.669400'),(11,'auth','0007_alter_validators_add_error_messages','2018-08-25 20:23:46.721321'),(12,'auth','0008_alter_user_username_max_length','2018-08-25 20:23:46.976138'),(13,'auth','0009_alter_user_last_name_max_length','2018-08-25 20:23:47.231957'),(14,'main','0001_initial','2018-08-25 20:23:47.346598'),(15,'main','0002_works_index','2018-08-25 20:23:47.463741'),(16,'sessions','0001_initial','2018-08-25 20:23:47.593734'),(17,'xadmin','0001_initial','2018-08-25 20:23:48.665275'),(18,'xadmin','0002_log','2018-08-25 20:23:49.186859'),(19,'xadmin','0003_auto_20160715_0100','2018-08-25 20:23:49.432213');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `django_session` VALUES ('39f738sj7wngr42py6yoc9nl7omfpc97','NTE2NDQxYTFmYTYwODg0OWIzZWRkYTFhMjIzMzExNDEwNjdlYTc0NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMDIzNTc2ZjQyZmE0OTk2MTQxMTg2YjUxMzg2NTY2YzRmODRmMTNkIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTRlM2JcdTg5ODFcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTRmNWNcdTU0YzFcIiwgXCJ1cmxcIjogXCIvd29ya3MvYWRtaW4vbWFpbi93b3Jrcy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZS1wb3dlcnBvaW50LW9cIiwgXCJvcmRlclwiOiA3fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWZpbGUtcG93ZXJwb2ludC1vXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3dvcmtzL2FkbWluL21haW4vd29ya3MvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwiLCBcInVybFwiOiBcIi93b3Jrcy9hZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi93b3Jrcy9hZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIvd29ya3MvYWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcIiwgXCJ1cmxcIjogXCIvd29ya3MvYWRtaW4vYXV0aC91c2VyL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCIsIFwidXJsXCI6IFwiL3dvcmtzL2FkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIvd29ya3MvYWRtaW4vYXV0aC9ncm91cC9cIn1dIiwiTElTVF9RVUVSWSI6W1sibWFpbiIsIndvcmtzIl0sIiJdfQ==','2018-09-10 07:29:30.430557'),('3g2en8yejdhvg36huoth9806tq9ijyni','ZjFiOGYzYzRkZjM1MzFlODIxZDkzMGRjNmI1ODYwZTA5NDM4Njk0Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMDIzNTc2ZjQyZmE0OTk2MTQxMTg2YjUxMzg2NTY2YzRmODRmMTNkIiwiTElTVF9RVUVSWSI6W1sibWFpbiIsIndvcmtzIl0sIiJdfQ==','2018-09-08 21:51:03.489718'),('9v87inao289xw8f3h1202b81kuwkkktg','NTE2NDQxYTFmYTYwODg0OWIzZWRkYTFhMjIzMzExNDEwNjdlYTc0NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMDIzNTc2ZjQyZmE0OTk2MTQxMTg2YjUxMzg2NTY2YzRmODRmMTNkIiwibmF2X21lbnUiOiJbe1widGl0bGVcIjogXCJcdTRlM2JcdTg5ODFcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTRmNWNcdTU0YzFcIiwgXCJ1cmxcIjogXCIvd29ya3MvYWRtaW4vbWFpbi93b3Jrcy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZmlsZS1wb3dlcnBvaW50LW9cIiwgXCJvcmRlclwiOiA3fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWZpbGUtcG93ZXJwb2ludC1vXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3dvcmtzL2FkbWluL21haW4vd29ya3MvXCJ9LCB7XCJ0aXRsZVwiOiBcIlx1N2JhMVx1NzQwNlwiLCBcIm1lbnVzXCI6IFt7XCJ0aXRsZVwiOiBcIlx1NjVlNVx1NWZkN1x1OGJiMFx1NWY1NVwiLCBcInVybFwiOiBcIi93b3Jrcy9hZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiA2fV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWNvZ1wiLCBcImZpcnN0X3VybFwiOiBcIi93b3Jrcy9hZG1pbi94YWRtaW4vbG9nL1wifSwge1widGl0bGVcIjogXCJcdThiYTRcdThiYzFcdTU0OGNcdTYzODhcdTY3NDNcIiwgXCJtZW51c1wiOiBbe1widGl0bGVcIjogXCJcdTdlYzRcIiwgXCJ1cmxcIjogXCIvd29ya3MvYWRtaW4vYXV0aC9ncm91cC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJvcmRlclwiOiAyfSwge1widGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcIiwgXCJ1cmxcIjogXCIvd29ya3MvYWRtaW4vYXV0aC91c2VyL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogM30sIHtcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCIsIFwidXJsXCI6IFwiL3dvcmtzL2FkbWluL2F1dGgvcGVybWlzc2lvbi9cIiwgXCJpY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcIm9yZGVyXCI6IDR9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtZ3JvdXBcIiwgXCJmaXJzdF91cmxcIjogXCIvd29ya3MvYWRtaW4vYXV0aC9ncm91cC9cIn1dIiwiTElTVF9RVUVSWSI6W1sibWFpbiIsIndvcmtzIl0sIiJdfQ==','2018-09-15 02:33:30.884629');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_works`
--

DROP TABLE IF EXISTS `main_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `main_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `source` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_works`
--

LOCK TABLES `main_works` WRITE;
/*!40000 ALTER TABLE `main_works` DISABLE KEYS */;
INSERT INTO `main_works` VALUES (16,'images/cover/2018/08/hpshsystem_31RsYer.png','大数据统计与可视化系统','技术栈: <br>\r\n- HTML/CSS/JavaScript/Echarts(数据可视化) <br>\r\n- Flask/(Web后端)/Python <br>\r\n- MySQL/MongoDB(请求数据缓存, 体积较大的数据)/Redis(请求数据缓存) <br>\r\n- Hadoop/Hive(海量数据处理与统计)/Sqoop(HDFS分布式文件系统与关系数据库之间数据互导) <br>\r\n- Crontab(定时调度)/Nginx(反向代理)/docker(应用容器)/Supervisor(进程管理) <br>','http://dev.feihu1996.cn/hpshSystem/','2018-08-25 20:57:00.000000',0),(17,'images/cover/2018/08/works.png','画廊式项目展示系统','技术栈: <br>\r\n- HTML/CSS(3)/JavaScript/Vue.js <br>\r\n- Django(Web 后端服务)/Xadmin(后台管理系统) <br>\r\n- MySQL <br>\r\n- Docker(容器端口映射) /Supervisor(进程管理)/Nginx(反向代理)','http://dev.feihu1996.cn/works','2018-08-26 21:04:00.000000',1),(18,'images/cover/2018/08/randomKey.png','随机密码生成器','技术栈: <br>\r\n- HTML/CSS/JavaScript(原生Ajax)  <br>\r\n- Python/Flask  <br>\r\n- Docker(端口映射)/Supervisor(进程管理)/Nginx(反向代理)','http://dev.feihu1996.cn/randomKey/','2018-08-27 00:32:00.000000',2),(19,'images/cover/2018/08/mmovie.png','仿豆瓣电影APP','技术栈: <br>\r\n- HTML/CSS/JavaScipt/MUI(高性能移动前端框架) /Vue.js <br>\r\n- Node.js/Express(网站后台框架) <br>\r\n- pm2(进程管理器) /Docker(端口映射) /Nginx(反向代理) <br>','http://dev.feihu1996.cn/MMovie/','2018-08-27 05:12:00.000000',3),(20,'images/cover/2018/08/WMovie.png','仿豆瓣电影微信小程序','技术栈: <br>\r\n- WXML/WXSS/JavaScript  <br>\r\n- BootStrap(网站前台)  <br>\r\n- Node.js/Express(网站后台框架)   <br>\r\n- Docker(端口映射)/Nginx(反向代理) /PM2(进程管理器)  <br>','http://dev.feihu1996.cn/WMovie/','2018-08-27 07:27:00.000000',4),(21,'images/cover/2018/09/qinxueonline.png','仿\"中国大学MOOC\"网站','技术栈： <br>\r\n- HTML/CSS/JavaScript/JQuery  <br>\r\n- Django(Web后端服务) /Xadmin(后台管理系统)   <br>\r\n- MySQL  <br>\r\n- Docker(容器端口映射) /Supervisor(进程管理) /Nginx(反向代理)   <br>\r\n- urllib/selenium/多线程/redis  <br>','http://dev.feihu1996.cn/qinXueOnLine/','2018-09-01 02:30:00.000000',5);
/*!40000 ALTER TABLE `main_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2018-08-25 20:51:12.267443','127.0.0.1','1','简易大数据统计与可视化系统','create','已添加。',11,1),(2,'2018-08-25 20:55:17.329109','127.0.0.1','1','简易大数据统计与可视化系统','change','修改 desc',11,1),(3,'2018-08-25 20:57:44.805738','127.0.0.1','1','简易大数据统计与可视化系统','change','修改 desc 和 add_time',11,1),(4,'2018-08-25 21:45:26.304328','127.0.0.1',NULL,'','delete','批量删除 15 个 作品',NULL,1),(5,'2018-08-26 21:08:32.024000','172.18.0.1','17','画廊式个人项目展示系统','create','已添加。',11,1),(6,'2018-08-26 21:09:01.934653','172.18.0.1',NULL,'','delete','批量删除 14 个 作品',NULL,1),(7,'2018-08-26 21:14:38.304475','172.18.0.1','17','画廊式项目展示系统','change','修改 title',11,1),(8,'2018-08-26 21:14:57.463969','172.18.0.1','16','大数据统计与可视化系统','change','修改 title',11,1),(9,'2018-08-26 21:24:50.840545','172.18.0.1','16','大数据统计与可视化系统','change','修改 source',11,1),(10,'2018-08-26 21:33:20.222528','172.18.0.1','16','大数据统计与可视化系统','change','修改 cover',11,1),(11,'2018-08-27 00:34:58.537329','172.18.0.1','18','随机密码生成器','create','已添加。',11,1),(12,'2018-08-27 05:15:58.748223','172.18.0.1','19','仿豆瓣电影APP','create','已添加。',11,1),(13,'2018-08-27 05:18:43.065152','172.18.0.1','17','画廊式项目展示系统','change','修改 desc',11,1),(14,'2018-08-27 05:18:55.874884','172.18.0.1','18','随机密码生成器','change','修改 desc',11,1),(15,'2018-08-27 05:19:13.132273','172.18.0.1','19','仿豆瓣电影APP','change','修改 desc',11,1),(16,'2018-08-27 07:15:45.575896','172.18.0.1','19','仿豆瓣电影APP','change','修改 desc',11,1),(17,'2018-08-27 07:29:30.168643','172.18.0.1','20','仿豆瓣电影微信小程序','create','已添加。',11,1),(18,'2018-09-01 02:33:30.704121','172.18.0.1','21','仿\"中国大学MOOC\"网站','create','已添加。',11,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-01  3:47:29
