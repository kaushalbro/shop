-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'UABs25l2UxkhvetdTqmGJj99JWL52AWQ',1,'2025-02-25 09:22:58','2025-02-25 09:22:58','2025-02-25 09:22:58');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2030-02-25 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2025-02-25 09:23:10','2025-02-25 09:23:10',1,NULL,NULL,'custom_ad',NULL),(2,'Ads 2','2030-02-25 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2025-02-25 09:23:10','2025-02-25 09:23:10',1,NULL,NULL,'custom_ad',NULL),(3,'Ads 3','2030-02-25 00:00:00','not_set','WXAUTIJV1QU0','fashion/banners/1.jpg','/products',0,3,'published','2025-02-25 09:23:10','2025-02-25 09:23:10',1,NULL,NULL,'custom_ad',NULL),(4,'Ads 4','2030-02-25 00:00:00','not_set','7Z5RXBBWV7J2','fashion/banners/2.jpg','/products',0,4,'published','2025-02-25 09:23:10','2025-02-25 09:23:10',1,NULL,NULL,'custom_ad',NULL),(5,'Ads 5','2030-02-25 00:00:00','not_set','JY08TDO8FG1E','fashion/banners/3.jpg','/products',0,5,'published','2025-02-25 09:23:10','2025-02-25 09:23:10',1,NULL,NULL,'custom_ad',NULL),(6,'Ads 6','2030-02-25 00:00:00','not_set','VKJNCBIBQC1O','fashion/banners/4.jpg','/products',0,6,'published','2025-02-25 09:23:10','2025-02-25 09:23:10',1,NULL,NULL,'custom_ad',NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2025-02-25 16:23:07',NULL,1,'2025-02-25 09:23:07','2025-02-25 09:23:07'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2025-02-25 16:23:07',NULL,1,'2025-02-25 09:23:07','2025-02-25 09:23:07'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2025-02-25 16:23:07',NULL,1,'2025-02-25 09:23:07','2025-02-25 09:23:07');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Et fugit officia soluta voluptatum laudantium ex. Doloremque qui necessitatibus quam in incidunt quis labore. Molestiae vitae fugit sit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(2,'Fashion',0,'Ea atque rerum repellat ex. Voluptatum nihil ut voluptate et corrupti et quasi. Quibusdam quidem totam et rerum. Porro maxime vero dicta ut inventore explicabo cupiditate.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(3,'Electronic',0,'Atque nisi atque unde labore maiores. Et dolore animi repellat omnis. Ea quo aut perspiciatis ipsam nam cupiditate. Saepe suscipit consectetur nesciunt quos fuga aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(4,'Commercial',0,'Soluta repellat sapiente eos id molestias ut quisquam. Illum ad et qui exercitationem quos. Est voluptas voluptatem sed quia possimus minus. Id quibusdam qui nihil pariatur molestiae labore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(5,'Organic Fruits',0,'Iste doloremque inventore repudiandae vitae. Harum eos earum dolorum quia eum velit. Repellendus voluptas veniam impedit officia quae deleniti itaque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(6,'Ecological',0,'Suscipit qui porro qui vero sed eum. Deserunt quis ullam itaque explicabo voluptatem qui vel quas. Ut ea esse incidunt laborum consequatur eligendi. Ad fuga soluta nulla.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-02-25 09:23:03','2025-02-25 09:23:03');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Miss Maymie Gleichner III','zroberts@example.com','336-571-3633','51847 Herman Crossing Apt. 879\nLake Brendatown, OK 93150','Dolor dolores qui ut.','Dolorem vel veniam tempora atque soluta rerum vitae tenetur. Nesciunt quia minima est voluptatum ut nihil numquam fugit. Iste nobis officiis aut. Sequi beatae non minus est voluptate consectetur est dolor. Repellendus saepe vel qui consectetur sed possimus. Eaque tempore ab tempore sint praesentium. Odit et odit temporibus aperiam voluptas. Deserunt nostrum quo et aut rerum. Et doloribus voluptatem quas nulla. Necessitatibus et recusandae voluptas. Sint harum facilis earum quis.',NULL,'unread','2025-02-25 09:23:02','2025-02-25 09:23:02'),(2,'Isom Robel','obosco@example.org','540.364.5284','2783 Larkin Groves Apt. 878\nChelseachester, MI 91276','Odio tempore quia nemo.','Delectus ipsam aut quo sint similique. Dolorem ab consectetur magnam et et. Id minima consequatur natus sunt. Perferendis maiores et aliquam. Minima atque ullam est nobis. Vel dolor est ut. Iure mollitia nulla veniam eos dolorem quos autem. Id omnis repudiandae sit facere. Veritatis pariatur quia vero sunt aut voluptatem et. Qui qui quae molestias eaque quia ex temporibus. Odio est repellendus qui veniam ea unde exercitationem reprehenderit. Sit sed voluptatibus illo consequuntur occaecati.',NULL,'read','2025-02-25 09:23:02','2025-02-25 09:23:02'),(3,'Kailey Dach','franz43@example.com','870.884.6337','5075 Elouise Summit Suite 863\nJodymouth, NE 60731-9344','Aut magnam et reiciendis natus quo.','Consequatur illum iure sint. Deserunt voluptatem ut dolore est dolorem ea voluptatem rerum. Aut quam non ab et. Necessitatibus voluptatum odit vel fugiat ad quia. Eos ea velit fugit culpa veniam quos. Labore rerum nihil soluta dolor officiis. Voluptates cumque aut qui cumque. Et possimus voluptatem fugiat praesentium. Nesciunt sequi impedit ea voluptatem architecto. Adipisci modi itaque facilis quo repellendus. Ea culpa nihil quam eveniet et ut magni. Quo consequuntur ea illum ut non non illum.',NULL,'read','2025-02-25 09:23:02','2025-02-25 09:23:02'),(4,'Marielle Krajcik','jamarcus11@example.org','+1 (757) 390-8753','85882 O\'Reilly Mill\nWest Shyanne, DE 84407-1710','Ipsa quas in aut nemo repudiandae quaerat qui.','Quasi qui ullam quo tempora quasi. Nesciunt voluptatum debitis odit debitis quia in nemo. Earum cum earum id. Possimus est quidem officiis quis recusandae dolore nobis. Harum nesciunt reprehenderit deleniti quaerat corporis omnis. Nulla recusandae quo ut debitis. Quam quam qui adipisci non voluptas. Vero ex odit aliquid eos consequatur. Et harum et dignissimos reiciendis nesciunt. Itaque consequatur exercitationem quo. Ad enim quas enim quae. Ut a id qui id aut non quo ab.',NULL,'unread','2025-02-25 09:23:02','2025-02-25 09:23:02'),(5,'Aron Metz','dmacejkovic@example.com','956.798.9614','2047 Stehr Trafficway Apt. 071\nPort Janisberg, OR 97787','Omnis tempora reprehenderit dolor doloremque.','Voluptas accusamus deleniti itaque dolores eveniet. Sit consequatur ut vel omnis illo et a inventore. Quia quibusdam dolorum possimus rem rerum et. Eveniet possimus molestiae eum consectetur sed molestiae. Dicta ut perspiciatis similique et accusantium. Aut non nesciunt alias ex dolores odio voluptas. Voluptatem et dolorem quisquam quia accusamus. Aut sed voluptatem tempore rerum. Tempore doloremque ea aut est beatae officia temporibus odit. Eos dolores eveniet id eum vel.',NULL,'read','2025-02-25 09:23:02','2025-02-25 09:23:02'),(6,'Nat Kohler','jorge84@example.com','(231) 421-4835','784 Kautzer Roads\nBoganhaven, WA 04694','Quod porro nostrum ipsa eaque sed.','Itaque quos illo non molestiae dolor et. Dolorem velit vel et tempore distinctio molestiae. Commodi animi nisi enim voluptas quia. Veritatis eius asperiores minima enim dolor vero. Explicabo ut earum dolore. Quo laudantium minus sed. Sint praesentium illum eos est. Molestias totam rerum dolor voluptatem ipsum voluptas. Est ipsa ipsa et rerum quis. Cum placeat magni qui vel autem. Atque commodi esse voluptas laborum. Perspiciatis ipsa magni in alias non enim autem.',NULL,'read','2025-02-25 09:23:02','2025-02-25 09:23:02'),(7,'Prof. Clifton Kutch','fbernhard@example.net','+1 (903) 929-0890','94661 Mazie Corner Apt. 746\nHandside, WA 26060-0008','Neque iure consequatur vel.','Mollitia fugiat et illo et excepturi velit. Reprehenderit ipsum fugiat aperiam facilis tempora aliquid aut. Eos sit ratione et et velit. Nobis asperiores incidunt qui nisi. Quisquam illo nostrum repellat repellendus. Minus dicta natus quo nobis culpa recusandae. Deleniti magnam repudiandae accusamus natus tempora. Et earum maxime aut.',NULL,'unread','2025-02-25 09:23:02','2025-02-25 09:23:02'),(8,'Mustafa Connelly','archibald.wiegand@example.org','+1.832.520.0453','732 Katelyn Land\nPort Faustino, CO 92598','Quisquam unde non ea.','Qui cum dolorem explicabo repudiandae est est. Laudantium enim et quia sit placeat. Error qui animi delectus eos fuga aut nulla vel. Optio explicabo nostrum natus est repellat. Quia nihil architecto incidunt omnis dolores omnis. Ea ut rem minima ut et tempore. Possimus adipisci dolorem eius dolorum in. Vel molestiae earum cum asperiores laborum ad. Tempore natus beatae saepe consectetur eius. Quaerat repellendus iusto totam dolor enim.',NULL,'read','2025-02-25 09:23:02','2025-02-25 09:23:02'),(9,'Shana Turner','bailee.barrows@example.org','586.397.3380','87787 Zemlak Locks\nNicolasmouth, SC 53471','Dolor porro sit aspernatur nemo consequatur et.','Ad et facere officiis. Dolorem veniam et provident neque veritatis. Fugiat est earum veritatis quos. Sed voluptas quam ratione dolorum nesciunt dolore quod. Dolorum quas nam consequatur nulla autem sint. Accusantium voluptates unde quis vel et facilis. Est ut laboriosam ut minima et. Odio qui cum quis ut culpa dolores omnis esse. Voluptatem molestiae omnis et omnis recusandae reprehenderit laboriosam. Tempora id tempore officiis id placeat itaque quo quod. Fugiat iste aut nam reprehenderit.',NULL,'unread','2025-02-25 09:23:02','2025-02-25 09:23:02'),(10,'Dr. Leopold Ortiz','efrain.windler@example.org','678-433-2184','77097 Kory Springs\nGiaport, AK 17364','Est ex aspernatur omnis facilis explicabo.','Quasi rerum in quis est. Dolores occaecati tempora nisi aut sit. Voluptatibus odio molestiae omnis neque. Officia a est iure rem nam quia. Exercitationem aut sequi dolores rerum. Sint quia qui architecto sit dicta. Voluptatem distinctio eius eos sed adipisci. Ut possimus aut earum atque molestiae. Distinctio sed voluptate aperiam aliquid. Asperiores sed reiciendis ut harum. Quas modi fugiat quibusdam neque facilis praesentium.',NULL,'unread','2025-02-25 09:23:02','2025-02-25 09:23:02');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2025-02-25 09:22:59','2025-02-25 09:22:59');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(2,'EUR','€',0,2,1,0,0.84,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(3,'VND','₫',0,0,2,0,23203,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(4,'NGN','₦',1,2,2,0,895.52,'2025-02-25 09:22:59','2025-02-25 09:22:59');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Prof. Lynn D\'Amore IV','customer@botble.com','+13318659455','BW','Delaware','Townetown','532 Bartell Springs',1,1,'2025-02-25 09:23:00','2025-02-25 09:23:00','89659-2585'),(2,'Prof. Lynn D\'Amore IV','customer@botble.com','+12163302755','OM','Rhode Island','North Crystel','893 Sipes Street Suite 169',1,0,'2025-02-25 09:23:00','2025-02-25 09:23:00','41759-6594'),(3,'Donnie Powlowski','vendor@botble.com','+13238740174','BT','Vermont','Murrayburgh','657 Silas Mountain',2,1,'2025-02-25 09:23:00','2025-02-25 09:23:00','36080'),(4,'Donnie Powlowski','vendor@botble.com','+13392728004','ZM','Illinois','New Ilianabury','5904 Mraz Streets',2,0,'2025-02-25 09:23:00','2025-02-25 09:23:00','29326-8157'),(5,'Noel Champlin','wyman.stan@example.net','+19853861481','MP','New Mexico','Itzelbury','907 McDermott Row Apt. 026',3,1,'2025-02-25 09:23:00','2025-02-25 09:23:00','52698'),(6,'Prof. Bernadine Runolfsson','elisabeth21@example.com','+18047605421','VC','South Dakota','South Tristiantown','5592 Dietrich Court',4,1,'2025-02-25 09:23:00','2025-02-25 09:23:00','02300'),(7,'Ms. Emmanuelle Feest','mkonopelski@example.net','+12295155052','AS','Mississippi','South Vilmafurt','684 Stokes Field',5,1,'2025-02-25 09:23:01','2025-02-25 09:23:01','12435'),(8,'Melody Brekke','heather.hahn@example.net','+15088606290','CX','Texas','Stehrview','7091 Kuvalis Burg',6,1,'2025-02-25 09:23:01','2025-02-25 09:23:01','62700'),(9,'Ms. Ashley Rosenbaum','meredith04@example.com','+12679209423','EC','Kentucky','West Roscoe','381 Providenci Circles Suite 797',7,1,'2025-02-25 09:23:01','2025-02-25 09:23:01','18451-7770'),(10,'Ms. Eleanore Bergnaum','weber.brannon@example.net','+18789699951','JM','District of Columbia','Cummingsview','16745 McClure Villages Suite 901',8,1,'2025-02-25 09:23:01','2025-02-25 09:23:01','83966'),(11,'Benjamin Green','keaton.robel@example.net','+13517690834','EC','Tennessee','Deanfurt','986 Jaida Bypass Apt. 229',9,1,'2025-02-25 09:23:02','2025-02-25 09:23:02','86460'),(12,'Mr. Esteban Cassin','burley95@example.com','+19032967873','BI','Connecticut','Krystelside','8607 Issac Ports Suite 635',10,1,'2025-02-25 09:23:02','2025-02-25 09:23:02','68161-8173');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Prof. Lynn D\'Amore IV','customer@botble.com','$2y$12$PbsCKhTUZ8CrzEEMpABtIucPo2kLszjcDbbLNWVsoMpF4FXrcObaS','main/customers/10.jpg','1980-02-12','+15615287174',NULL,'2025-02-25 09:23:00','2025-02-25 09:23:00','2025-02-25 16:22:59',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(2,'Donnie Powlowski','vendor@botble.com','$2y$12$yYIxo8G5XVthGq8r7T/Wf.yQs11s8WIIT4u17iaNvFjxNGaKwD47K','main/customers/6.jpg','1976-02-04','+15169280906',NULL,'2025-02-25 09:23:00','2025-02-25 09:23:05','2025-02-25 16:22:59',NULL,1,'2025-02-25 16:23:05','activated',NULL,NULL,NULL,0),(3,'Noel Champlin','wyman.stan@example.net','$2y$12$01jBEDTLdxWi44oxLJu1gOdI6L0iMR63ZECCB4gSNNMriD5yswlAO','main/customers/1.jpg','2003-01-26','+17722441480',NULL,'2025-02-25 09:23:00','2025-02-25 09:23:05','2025-02-25 16:22:59',NULL,1,'2025-02-25 16:23:05','activated',NULL,NULL,NULL,0),(4,'Prof. Bernadine Runolfsson','elisabeth21@example.com','$2y$12$c4M4VK8HrYML/JFQRNfn1ezyLdPDQ/FLEmy3yYDNUg31oQ6ZckJtK','main/customers/2.jpg','1996-01-29','+15167396922',NULL,'2025-02-25 09:23:00','2025-02-25 09:23:05','2025-02-25 16:22:59',NULL,1,'2025-02-25 16:23:05','activated',NULL,NULL,NULL,0),(5,'Ms. Emmanuelle Feest','mkonopelski@example.net','$2y$12$k7t7r4KbLgfEP3t23LkoquUPSBhNsnSrbDsyGAvhJoQfKVyD/h81u','main/customers/3.jpg','1985-02-03','+14158494365',NULL,'2025-02-25 09:23:01','2025-02-25 09:23:05','2025-02-25 16:22:59',NULL,1,'2025-02-25 16:23:05','activated',NULL,NULL,NULL,0),(6,'Melody Brekke','heather.hahn@example.net','$2y$12$ozGCCTTRNhDd.0P3o3W5/ORdYqGYdW4DdwIkLhzVLGCIJtMvvLVKC','main/customers/4.jpg','1976-02-22','+13017532122',NULL,'2025-02-25 09:23:01','2025-02-25 09:23:06','2025-02-25 16:22:59',NULL,1,'2025-02-25 16:23:05','activated',NULL,NULL,NULL,0),(7,'Ms. Ashley Rosenbaum','meredith04@example.com','$2y$12$FZ9SJd7gtZguGSYwuExvhezHhj0frZT/b4FutUJFSbB8BQWttHgxq','main/customers/5.jpg','1981-02-16','+17748825940',NULL,'2025-02-25 09:23:01','2025-02-25 09:23:06','2025-02-25 16:22:59',NULL,1,'2025-02-25 16:23:05','activated',NULL,NULL,NULL,0),(8,'Ms. Eleanore Bergnaum','weber.brannon@example.net','$2y$12$Nx9hlzrrVGuwdOxdevNJGOgUfjjtQP2DlZqh2zy5.q9sN3bvCzJt.','main/customers/6.jpg','1983-01-27','+12673240924',NULL,'2025-02-25 09:23:01','2025-02-25 09:23:06','2025-02-25 16:22:59',NULL,1,'2025-02-25 16:23:05','activated',NULL,NULL,NULL,0),(9,'Benjamin Green','keaton.robel@example.net','$2y$12$9kY420cpGAsiMtMUe13Tqe6gU6t58VYFcVjhBUX2viuZsvflznJX2','main/customers/7.jpg','1994-02-20','+16782695493',NULL,'2025-02-25 09:23:02','2025-02-25 09:23:06','2025-02-25 16:22:59',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(10,'Mr. Esteban Cassin','burley95@example.com','$2y$12$y.pHGioDc.Xecy9SwrtCUO/5O9rshj5YAb30OHRlBYtK7MpkLhAWm','main/customers/8.jpg','1997-02-05','+12702186967',NULL,'2025-02-25 09:23:02','2025-02-25 09:23:06','2025-02-25 16:22:59',NULL,0,NULL,'activated',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','WZWNP2WSYWWL','2025-02-24 16:23:04',NULL,NULL,0,799,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(2,'Discount 2','YL7HCSIJ0OXU','2025-02-24 16:23:04',NULL,NULL,0,560,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(3,'Discount 3','HPVQUXGT3JWE','2025-02-24 16:23:04',NULL,NULL,0,114,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(4,'Discount 4','MFVXCTLGVTDI','2025-02-24 16:23:04',NULL,NULL,0,282,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(5,'Discount 5','Q3ZVU4T15ZQY','2025-02-24 16:23:04','2025-03-18 16:23:04',NULL,0,622,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(6,'Discount 6','O4E1JGS1ZOHZ','2025-02-24 16:23:04','2025-03-24 16:23:04',NULL,0,892,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(7,'Discount 7','BMCQMP0IL3SX','2025-02-24 16:23:04','2025-03-07 16:23:04',NULL,0,47,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(8,'Discount 8','GDO1KDWARLD1','2025-02-24 16:23:04','2025-03-14 16:23:04',NULL,0,458,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(9,'Discount 9','ZQI4O5COJJDO','2025-02-24 16:23:04','2025-03-21 16:23:04',NULL,0,15,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL),(10,'Discount 10','SIGEK3D5FZRF','2025-02-24 16:23:04','2025-03-22 16:23:04',NULL,0,853,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,219.52,7,1),(1,2,708.18,7,5),(1,3,298.45,10,1),(1,4,741.37,10,2),(1,5,161.65,16,3),(1,6,477.02,16,5),(1,7,456.4,9,3),(1,8,630.54,17,4),(1,9,199.26,20,4),(1,10,283.8,8,3);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2025-03-11 00:00:00','published','2025-02-25 09:23:10','2025-02-25 09:23:10');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(2,1,'2 Year',10,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(3,1,'3 Year',20,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(4,2,'4GB',0,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(5,2,'8GB',10,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(6,2,'16GB',20,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(7,3,'Core i5',0,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(8,3,'Core i7',10,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(9,3,'Core i9',20,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(10,4,'128GB',0,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(11,4,'256GB',10,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(12,4,'512GB',20,9999,0,'2025-02-25 09:23:04','2025-02-25 09:23:04');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-02-25 09:23:04','2025-02-25 09:23:04');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-02-25 09:22:59','2025-02-25 09:22:59',0),(2,'Size','size','text',1,1,1,'published',1,'2025-02-25 09:22:59','2025-02-25 09:22:59',0),(3,'Weight','weight','text',1,1,1,'published',0,'2025-02-25 09:22:59','2025-02-25 09:22:59',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2025-02-25 09:22:59','2025-02-25 09:22:59',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(6,2,'S','s',NULL,NULL,1,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(7,2,'M','m',NULL,NULL,0,2,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(8,2,'L','l',NULL,NULL,0,3,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2025-02-25 09:22:59','2025-02-25 09:22:59'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2025-02-25 09:22:59','2025-02-25 09:22:59');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Bags',0,NULL,'published',0,'fashion/product-categories/1.jpg',1,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(2,'Clothing',0,NULL,'published',1,'fashion/product-categories/4.jpg',1,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(3,'Men\'s Clothing',2,NULL,'published',0,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(4,'T-Shirts',3,NULL,'published',0,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(5,'Jeans',3,NULL,'published',1,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(6,'Suits',3,NULL,'published',2,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(7,'Women\'s Clothing',2,NULL,'published',1,'fashion/product-categories/2.jpg',1,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(8,'Dresses',7,NULL,'published',0,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(9,'Blouses',7,NULL,'published',1,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(10,'Pants',7,NULL,'published',2,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(11,'Footwear',0,NULL,'published',2,'fashion/product-categories/6.jpg',1,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(12,'Accessories',0,NULL,'published',3,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(13,'Hats',12,NULL,'published',0,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(14,'Scarves',12,NULL,'published',1,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(15,'Jewelry',12,NULL,'published',2,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(16,'Sportswear',0,NULL,'published',4,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(17,'Activewear',16,NULL,'published',0,NULL,0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(18,'Running Shoes',16,NULL,'published',1,'fashion/product-categories/3.jpg',1,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL),(19,'Outerwear',0,NULL,'published',5,'fashion/product-categories/5.jpg',1,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,4),(1,9),(1,18),(1,28),(1,29),(1,35),(2,8),(2,10),(2,12),(2,21),(2,22),(2,23),(2,35),(2,38),(2,43),(3,6),(3,7),(3,8),(3,15),(3,18),(3,20),(3,22),(3,24),(3,31),(3,32),(3,36),(3,41),(3,43),(4,2),(4,4),(4,11),(4,14),(4,18),(4,25),(4,28),(4,35),(4,36),(4,37),(4,40),(4,42),(5,2),(5,3),(5,19),(5,24),(5,25),(5,30),(5,33),(5,37),(6,2),(6,5),(6,10),(6,14),(6,15),(6,18),(6,26),(6,34),(6,39),(6,40),(6,43),(7,8),(7,16),(7,26),(7,28),(7,29),(7,31),(7,32),(7,33),(7,35),(7,39),(8,3),(8,10),(8,14),(8,16),(8,31),(9,20),(9,21),(9,27),(9,29),(9,32),(9,34),(9,36),(9,37),(9,38),(9,39),(9,41),(10,1),(10,4),(10,7),(10,13),(10,16),(10,17),(10,23),(10,24),(10,25),(10,27),(10,28),(10,30),(10,34),(11,3),(11,5),(11,6),(11,12),(11,19),(11,30),(11,34),(11,41),(12,1),(12,2),(12,3),(12,4),(12,11),(12,13),(12,16),(12,17),(12,19),(12,21),(12,23),(12,33),(12,38),(12,40),(13,1),(13,10),(13,12),(13,24),(13,26),(13,29),(13,40),(13,42),(14,13),(14,15),(14,17),(14,22),(14,32),(14,33),(14,36),(14,42),(14,43),(15,7),(15,8),(15,9),(15,13),(15,27),(15,30),(16,5),(16,14),(16,19),(16,20),(16,37),(16,38),(16,41),(17,9),(17,11),(17,15),(17,17),(17,22),(18,5),(18,6),(18,7),(18,9),(18,11),(18,12),(18,20),(18,23),(18,25),(18,42),(19,1),(19,6),(19,21),(19,26),(19,27),(19,31),(19,39);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,3),(1,9),(1,14),(1,17),(1,19),(1,20),(1,27),(1,28),(1,29),(1,31),(1,40),(2,5),(2,8),(2,16),(2,21),(2,23),(2,26),(2,32),(2,33),(2,34),(2,35),(2,36),(2,41),(3,1),(3,4),(3,6),(3,11),(3,13),(3,15),(3,22),(3,38),(4,7),(4,10),(4,12),(4,18),(4,24),(4,25),(4,30),(4,37),(4,39),(4,42),(4,43);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Trendy Wardrobe Essentials','trendy-wardrobe-essentials',NULL,NULL,'published','2025-02-25 09:23:07','2025-02-25 09:23:07',0),(2,'Fashion Forward Finds','fashion-forward-finds',NULL,NULL,'published','2025-02-25 09:23:07','2025-02-25 09:23:07',0),(3,'Chic &amp; Stylish Collection','chic-stylish-collection',NULL,NULL,'published','2025-02-25 09:23:07','2025-02-25 09:23:07',0),(4,'Weekly Fashion Picks','weekly-fashion-picks',NULL,NULL,'published','2025-02-25 09:23:07','2025-02-25 09:23:07',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2,0,0.00,'fixed',1),(1,3,0,0.00,'fixed',1),(1,14,0,0.00,'fixed',1),(1,26,0,0.00,'fixed',1),(1,35,0,0.00,'fixed',1),(1,42,0,0.00,'fixed',1),(2,12,0,0.00,'fixed',1),(2,13,0,0.00,'fixed',1),(2,21,0,0.00,'fixed',1),(2,23,0,0.00,'fixed',1),(2,26,0,0.00,'fixed',1),(2,31,0,0.00,'fixed',1),(2,38,0,0.00,'fixed',1),(3,14,0,0.00,'fixed',1),(3,25,0,0.00,'fixed',1),(3,29,0,0.00,'fixed',1),(3,31,0,0.00,'fixed',1),(3,34,0,0.00,'fixed',1),(3,36,0,0.00,'fixed',1),(3,38,0,0.00,'fixed',1),(4,16,0,0.00,'fixed',1),(4,28,0,0.00,'fixed',1),(4,29,0,0.00,'fixed',1),(4,32,0,0.00,'fixed',1),(4,41,0,0.00,'fixed',1),(4,43,0,0.00,'fixed',1),(5,12,0,0.00,'fixed',1),(5,24,0,0.00,'fixed',1),(5,25,0,0.00,'fixed',1),(5,26,0,0.00,'fixed',1),(5,27,0,0.00,'fixed',1),(5,32,0,0.00,'fixed',1),(5,36,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,23,0,0.00,'fixed',1),(6,26,0,0.00,'fixed',1),(6,34,0,0.00,'fixed',1),(6,37,0,0.00,'fixed',1),(7,3,0,0.00,'fixed',1),(7,4,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,24,0,0.00,'fixed',1),(7,33,0,0.00,'fixed',1),(7,37,0,0.00,'fixed',1),(8,7,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(8,21,0,0.00,'fixed',1),(8,25,0,0.00,'fixed',1),(8,31,0,0.00,'fixed',1),(8,37,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,12,0,0.00,'fixed',1),(9,25,0,0.00,'fixed',1),(9,28,0,0.00,'fixed',1),(9,31,0,0.00,'fixed',1),(9,40,0,0.00,'fixed',1),(9,42,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,9,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,39,0,0.00,'fixed',1),(11,13,0,0.00,'fixed',1),(11,19,0,0.00,'fixed',1),(11,20,0,0.00,'fixed',1),(11,24,0,0.00,'fixed',1),(11,33,0,0.00,'fixed',1),(11,37,0,0.00,'fixed',1),(12,4,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,21,0,0.00,'fixed',1),(12,22,0,0.00,'fixed',1),(12,30,0,0.00,'fixed',1),(12,42,0,0.00,'fixed',1),(12,43,0,0.00,'fixed',1),(13,2,0,0.00,'fixed',1),(13,3,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,26,0,0.00,'fixed',1),(13,28,0,0.00,'fixed',1),(13,35,0,0.00,'fixed',1),(13,43,0,0.00,'fixed',1),(14,8,0,0.00,'fixed',1),(14,10,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,21,0,0.00,'fixed',1),(14,25,0,0.00,'fixed',1),(14,29,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,18,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(15,30,0,0.00,'fixed',1),(15,36,0,0.00,'fixed',1),(15,38,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,11,0,0.00,'fixed',1),(16,26,0,0.00,'fixed',1),(16,27,0,0.00,'fixed',1),(16,38,0,0.00,'fixed',1),(17,13,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,26,0,0.00,'fixed',1),(17,32,0,0.00,'fixed',1),(17,41,0,0.00,'fixed',1),(17,42,0,0.00,'fixed',1),(18,1,0,0.00,'fixed',1),(18,7,0,0.00,'fixed',1),(18,8,0,0.00,'fixed',1),(18,33,0,0.00,'fixed',1),(18,38,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,8,0,0.00,'fixed',1),(19,21,0,0.00,'fixed',1),(19,22,0,0.00,'fixed',1),(19,26,0,0.00,'fixed',1),(19,34,0,0.00,'fixed',1),(19,35,0,0.00,'fixed',1),(20,3,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,12,0,0.00,'fixed',1),(20,23,0,0.00,'fixed',1),(20,24,0,0.00,'fixed',1),(20,39,0,0.00,'fixed',1),(20,42,0,0.00,'fixed',1),(21,4,0,0.00,'fixed',1),(21,12,0,0.00,'fixed',1),(21,16,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(21,38,0,0.00,'fixed',1),(21,40,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,18,0,0.00,'fixed',1),(22,28,0,0.00,'fixed',1),(22,30,0,0.00,'fixed',1),(22,35,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,6,0,0.00,'fixed',1),(23,15,0,0.00,'fixed',1),(23,20,0,0.00,'fixed',1),(23,27,0,0.00,'fixed',1),(23,43,0,0.00,'fixed',1),(24,1,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,18,0,0.00,'fixed',1),(24,22,0,0.00,'fixed',1),(24,23,0,0.00,'fixed',1),(24,26,0,0.00,'fixed',1),(25,1,0,0.00,'fixed',1),(25,7,0,0.00,'fixed',1),(25,28,0,0.00,'fixed',1),(25,31,0,0.00,'fixed',1),(25,32,0,0.00,'fixed',1),(25,41,0,0.00,'fixed',1),(25,43,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,10,0,0.00,'fixed',1),(26,11,0,0.00,'fixed',1),(26,19,0,0.00,'fixed',1),(26,42,0,0.00,'fixed',1),(26,43,0,0.00,'fixed',1),(27,2,0,0.00,'fixed',1),(27,6,0,0.00,'fixed',1),(27,11,0,0.00,'fixed',1),(27,29,0,0.00,'fixed',1),(27,33,0,0.00,'fixed',1),(27,38,0,0.00,'fixed',1),(27,39,0,0.00,'fixed',1),(28,14,0,0.00,'fixed',1),(28,15,0,0.00,'fixed',1),(28,18,0,0.00,'fixed',1),(28,21,0,0.00,'fixed',1),(28,35,0,0.00,'fixed',1),(28,39,0,0.00,'fixed',1),(28,42,0,0.00,'fixed',1),(29,10,0,0.00,'fixed',1),(29,11,0,0.00,'fixed',1),(29,12,0,0.00,'fixed',1),(29,26,0,0.00,'fixed',1),(29,34,0,0.00,'fixed',1),(29,39,0,0.00,'fixed',1),(30,2,0,0.00,'fixed',1),(30,6,0,0.00,'fixed',1),(30,7,0,0.00,'fixed',1),(30,14,0,0.00,'fixed',1),(30,28,0,0.00,'fixed',1),(30,35,0,0.00,'fixed',1),(30,38,0,0.00,'fixed',1),(31,12,0,0.00,'fixed',1),(31,13,0,0.00,'fixed',1),(31,23,0,0.00,'fixed',1),(31,25,0,0.00,'fixed',1),(31,26,0,0.00,'fixed',1),(31,36,0,0.00,'fixed',1),(31,42,0,0.00,'fixed',1),(32,2,0,0.00,'fixed',1),(32,10,0,0.00,'fixed',1),(32,21,0,0.00,'fixed',1),(32,22,0,0.00,'fixed',1),(32,23,0,0.00,'fixed',1),(32,24,0,0.00,'fixed',1),(32,35,0,0.00,'fixed',1),(33,13,0,0.00,'fixed',1),(33,20,0,0.00,'fixed',1),(33,22,0,0.00,'fixed',1),(33,32,0,0.00,'fixed',1),(33,41,0,0.00,'fixed',1),(34,1,0,0.00,'fixed',1),(34,6,0,0.00,'fixed',1),(34,7,0,0.00,'fixed',1),(34,14,0,0.00,'fixed',1),(34,15,0,0.00,'fixed',1),(34,24,0,0.00,'fixed',1),(34,43,0,0.00,'fixed',1),(35,1,0,0.00,'fixed',1),(35,5,0,0.00,'fixed',1),(35,11,0,0.00,'fixed',1),(35,18,0,0.00,'fixed',1),(35,22,0,0.00,'fixed',1),(35,26,0,0.00,'fixed',1),(36,5,0,0.00,'fixed',1),(36,14,0,0.00,'fixed',1),(36,18,0,0.00,'fixed',1),(36,19,0,0.00,'fixed',1),(36,22,0,0.00,'fixed',1),(36,41,0,0.00,'fixed',1),(36,43,0,0.00,'fixed',1),(37,4,0,0.00,'fixed',1),(37,6,0,0.00,'fixed',1),(37,11,0,0.00,'fixed',1),(37,16,0,0.00,'fixed',1),(37,25,0,0.00,'fixed',1),(37,32,0,0.00,'fixed',1),(37,39,0,0.00,'fixed',1),(38,1,0,0.00,'fixed',1),(38,4,0,0.00,'fixed',1),(38,8,0,0.00,'fixed',1),(38,9,0,0.00,'fixed',1),(38,27,0,0.00,'fixed',1),(38,28,0,0.00,'fixed',1),(38,40,0,0.00,'fixed',1),(39,1,0,0.00,'fixed',1),(39,4,0,0.00,'fixed',1),(39,12,0,0.00,'fixed',1),(39,16,0,0.00,'fixed',1),(39,36,0,0.00,'fixed',1),(39,41,0,0.00,'fixed',1),(39,42,0,0.00,'fixed',1),(40,3,0,0.00,'fixed',1),(40,14,0,0.00,'fixed',1),(40,16,0,0.00,'fixed',1),(40,19,0,0.00,'fixed',1),(40,21,0,0.00,'fixed',1),(40,25,0,0.00,'fixed',1),(40,32,0,0.00,'fixed',1),(41,1,0,0.00,'fixed',1),(41,18,0,0.00,'fixed',1),(41,26,0,0.00,'fixed',1),(41,27,0,0.00,'fixed',1),(41,28,0,0.00,'fixed',1),(41,43,0,0.00,'fixed',1),(42,4,0,0.00,'fixed',1),(42,6,0,0.00,'fixed',1),(42,13,0,0.00,'fixed',1),(42,16,0,0.00,'fixed',1),(42,38,0,0.00,'fixed',1),(43,1,0,0.00,'fixed',1),(43,5,0,0.00,'fixed',1),(43,9,0,0.00,'fixed',1),(43,19,0,0.00,'fixed',1),(43,20,0,0.00,'fixed',1),(43,32,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(2,4,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(3,8,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(4,8,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(5,12,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(6,12,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(7,16,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(8,16,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(9,20,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(10,20,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(11,24,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(12,24,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(13,28,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(14,28,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(15,32,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(16,32,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(17,36,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(18,36,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(19,40,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(20,40,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(21,58,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(22,59,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(23,60,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(24,62,'ecommerce/digital-product-files/product-15.jpg','{\"filename\":\"product-15.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-15.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-15\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(25,63,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(26,73,'ecommerce/digital-product-files/product-14.jpg','{\"filename\":\"product-14.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-14.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-14\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(27,74,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09'),(28,75,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-02-25 16:23:09\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2025-02-25 09:23:09','2025-02-25 09:23:09');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,12),(1,30),(1,39),(1,42),(2,3),(2,6),(2,9),(2,15),(2,36),(3,18),(3,21),(3,24),(3,27),(3,33);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL),(2,'New','#006554','published','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL),(3,'Sale','#9A3B00','published','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,1,'74.47 cm',0,0),(1,2,'56.73 cm',0,0),(1,3,'54.35 cm',0,0),(1,4,'13.06 cm',0,0),(1,5,'49.89 cm',0,0),(2,1,'41.06 cm',0,0),(2,2,'46.59 cm',0,0),(2,3,'96.21 cm',0,0),(2,4,'76.01 cm',0,0),(2,5,'43.35 cm',0,0),(3,1,'13.41 cm',0,0),(3,2,'31.12 cm',0,0),(3,3,'42.07 cm',0,0),(3,4,'15.86 cm',0,0),(3,5,'68.56 cm',0,0),(4,1,'81.92 cm',0,0),(4,2,'36.54 cm',0,0),(4,3,'48.82 cm',0,0),(4,4,'92.79 cm',0,0),(4,5,'65.71 cm',0,0),(5,1,'89.42 cm',0,0),(5,2,'52.26 cm',0,0),(5,3,'68.1 cm',0,0),(5,4,'35.27 cm',0,0),(5,5,'99.24 cm',0,0),(6,6,'3.52 cm',0,0),(6,7,'99.1 cm',0,0),(6,8,'3840x2160',0,0),(7,6,'86.68 cm',0,0),(7,7,'70.99 cm',0,0),(7,8,'1920x1080',0,0),(8,1,'17.09 cm',0,0),(8,2,'38.98 cm',0,0),(8,3,'51.48 cm',0,0),(8,4,'86.11 cm',0,0),(8,5,'15.28 cm',0,0),(9,1,'22.42 cm',0,0),(9,2,'84.91 cm',0,0),(9,3,'19.42 cm',0,0),(9,4,'41.4 cm',0,0),(9,5,'16.46 cm',0,0),(10,6,'64.17 cm',0,0),(10,7,'77.73 cm',0,0),(10,8,'1920x1080',0,0),(11,6,'49.5 cm',0,0),(11,7,'72.59 cm',0,0),(11,8,'3840x2160',0,0),(12,6,'74.82 cm',0,0),(12,7,'24.09 cm',0,0),(12,8,'2560x1440',0,0),(13,6,'76.06 cm',0,0),(13,7,'27.44 cm',0,0),(13,8,'3840x2160',0,0),(14,1,'87.45 cm',0,0),(14,2,'48.9 cm',0,0),(14,3,'21.56 cm',0,0),(14,4,'9.71 cm',0,0),(14,5,'57.64 cm',0,0),(15,6,'30.61 cm',0,0),(15,7,'14.82 cm',0,0),(15,8,'1920x1080',0,0),(16,6,'72.03 cm',0,0),(16,7,'63.96 cm',0,0),(16,8,'2560x1440',0,0),(17,6,'72.7 cm',0,0),(17,7,'21.87 cm',0,0),(17,8,'1920x1080',0,0),(18,6,'49.95 cm',0,0),(18,7,'15.76 cm',0,0),(18,8,'1920x1080',0,0),(19,1,'68.76 cm',0,0),(19,2,'80.87 cm',0,0),(19,3,'44.47 cm',0,0),(19,4,'77.84 cm',0,0),(19,5,'36.61 cm',0,0),(20,1,'50.94 cm',0,0),(20,2,'26.17 cm',0,0),(20,3,'72.09 cm',0,0),(20,4,'81.31 cm',0,0),(20,5,'54.68 cm',0,0),(21,6,'29.39 cm',0,0),(21,7,'96.3 cm',0,0),(21,8,'1920x1080',0,0),(22,1,'55.31 cm',0,0),(22,2,'5.48 cm',0,0),(22,3,'24.64 cm',0,0),(22,4,'79.31 cm',0,0),(22,5,'76.81 cm',0,0),(23,1,'19.47 cm',0,0),(23,2,'86.39 cm',0,0),(23,3,'49.17 cm',0,0),(23,4,'58.62 cm',0,0),(23,5,'21.07 cm',0,0),(24,1,'13.08 cm',0,0),(24,2,'36.17 cm',0,0),(24,3,'98.78 cm',0,0),(24,4,'44.7 cm',0,0),(24,5,'77.51 cm',0,0),(25,6,'81.66 cm',0,0),(25,7,'72.28 cm',0,0),(25,8,'3840x2160',0,0),(26,1,'21.98 cm',0,0),(26,2,'57.26 cm',0,0),(26,3,'12.01 cm',0,0),(26,4,'96.31 cm',0,0),(26,5,'83.16 cm',0,0),(27,6,'25.31 cm',0,0),(27,7,'39.78 cm',0,0),(27,8,'2560x1440',0,0),(28,6,'37.86 cm',0,0),(28,7,'49.71 cm',0,0),(28,8,'1920x1080',0,0),(29,6,'74.9 cm',0,0),(29,7,'50.38 cm',0,0),(29,8,'1920x1080',0,0),(30,6,'33.75 cm',0,0),(30,7,'22 cm',0,0),(30,8,'2560x1440',0,0),(31,1,'16.53 cm',0,0),(31,2,'38.45 cm',0,0),(31,3,'28.63 cm',0,0),(31,4,'79.99 cm',0,0),(31,5,'76.5 cm',0,0),(32,6,'19.01 cm',0,0),(32,7,'69.81 cm',0,0),(32,8,'2560x1440',0,0),(33,1,'19.75 cm',0,0),(33,2,'67.77 cm',0,0),(33,3,'34.04 cm',0,0),(33,4,'33.21 cm',0,0),(33,5,'1.26 cm',0,0),(34,6,'1.7 cm',0,0),(34,7,'5.17 cm',0,0),(34,8,'2560x1440',0,0),(35,1,'66.01 cm',0,0),(35,2,'16.02 cm',0,0),(35,3,'49.75 cm',0,0),(35,4,'86.29 cm',0,0),(35,5,'59.57 cm',0,0),(36,1,'39.65 cm',0,0),(36,2,'77.35 cm',0,0),(36,3,'34.79 cm',0,0),(36,4,'88.8 cm',0,0),(36,5,'67.48 cm',0,0),(37,1,'58.32 cm',0,0),(37,2,'68.93 cm',0,0),(37,3,'86.78 cm',0,0),(37,4,'77.48 cm',0,0),(37,5,'82.26 cm',0,0),(38,6,'32.71 cm',0,0),(38,7,'40.16 cm',0,0),(38,8,'1920x1080',0,0),(39,1,'15.24 cm',0,0),(39,2,'79.17 cm',0,0),(39,3,'24.24 cm',0,0),(39,4,'32.59 cm',0,0),(39,5,'1.23 cm',0,0),(40,6,'7.98 cm',0,0),(40,7,'32.81 cm',0,0),(40,8,'3840x2160',0,0),(41,6,'5.18 cm',0,0),(41,7,'19.6 cm',0,0),(41,8,'1920x1080',0,0),(42,1,'29.95 cm',0,0),(42,2,'96.17 cm',0,0),(42,3,'35.86 cm',0,0),(42,4,'14.68 cm',0,0),(42,5,'90.51 cm',0,0),(43,1,'35.33 cm',0,0),(43,2,'95.13 cm',0,0),(43,3,'45.95 cm',0,0),(43,4,'49.26 cm',0,0),(43,5,'98.76 cm',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,4),(1,6),(2,3),(2,5),(2,6),(3,2),(3,5),(3,6),(4,2),(4,4),(4,6),(5,1),(5,2),(5,5),(6,2),(6,5),(6,6),(7,2),(7,3),(7,6),(8,1),(8,5),(8,6),(9,1),(9,5),(9,6),(10,1),(10,2),(10,6),(11,1),(11,2),(11,3),(12,1),(12,3),(12,6),(13,3),(13,5),(13,6),(14,2),(14,4),(14,5),(15,1),(15,2),(15,3),(16,1),(16,2),(16,3),(17,1),(17,3),(17,4),(18,2),(18,3),(18,4),(19,1),(19,2),(19,3),(20,1),(20,2),(20,3),(21,3),(21,4),(21,6),(22,1),(22,2),(22,6),(23,2),(23,3),(23,6),(24,1),(24,4),(24,6),(25,1),(25,2),(25,6),(26,1),(26,3),(26,6),(27,2),(27,3),(27,6),(28,2),(28,4),(28,5),(29,1),(29,2),(29,4),(30,2),(30,3),(30,4),(31,1),(31,2),(31,6),(32,1),(32,3),(32,6),(33,3),(33,4),(33,6),(34,1),(34,2),(34,4),(35,1),(35,3),(35,4),(36,2),(36,3),(36,5),(37,1),(37,3),(37,5),(38,1),(38,3),(38,5),(39,2),(39,3),(39,5),(40,1),(40,3),(40,5),(41,1),(41,2),(41,5),(42,2),(42,4),(42,6),(43,1),(43,2),(43,3);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-02-25 09:23:02','2025-02-25 09:23:02'),(2,'Mobile',NULL,'published','2025-02-25 09:23:02','2025-02-25 09:23:02'),(3,'Iphone',NULL,'published','2025-02-25 09:23:02','2025-02-25 09:23:02'),(4,'Printer',NULL,'published','2025-02-25 09:23:02','2025-02-25 09:23:02'),(5,'Office',NULL,'published','2025-02-25 09:23:02','2025-02-25 09:23:02'),(6,'IT',NULL,'published','2025-02-25 09:23:02','2025-02-25 09:23:02');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (11,1,6),(21,1,11),(31,1,16),(1,2,1),(7,2,4),(9,2,5),(13,2,7),(17,2,9),(25,2,13),(27,2,14),(29,2,15),(35,2,18),(37,2,19),(39,2,20),(3,3,2),(33,3,17),(5,4,3),(15,4,8),(19,4,10),(23,4,12),(6,6,3),(14,6,7),(16,6,8),(24,6,12),(4,7,2),(10,7,5),(12,7,6),(28,7,14),(30,7,15),(32,7,16),(34,7,17),(36,7,18),(38,7,19),(18,8,9),(20,9,10),(26,9,13),(2,10,1),(8,10,4),(22,10,11),(40,10,20),(41,11,21),(55,11,28),(59,11,30),(57,12,29),(65,12,33),(69,12,35),(71,12,36),(73,12,37),(79,12,40),(49,13,25),(53,13,27),(43,14,22),(63,14,32),(75,14,38),(77,14,39),(45,15,23),(47,15,24),(51,15,26),(61,15,31),(67,15,34),(46,16,23),(48,16,24),(56,16,28),(66,16,33),(68,16,34),(76,16,38),(78,16,39),(80,16,40),(42,17,21),(44,17,22),(62,17,31),(74,17,37),(52,18,26),(54,18,27),(58,18,29),(60,18,30),(70,18,35),(50,19,25),(64,20,32),(72,20,36);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,44,1,1),(2,45,2,1),(3,46,2,0),(4,47,6,1),(5,48,6,0),(6,49,6,0),(7,50,6,0),(8,51,7,1),(9,52,7,0),(10,53,11,1),(11,54,14,1),(12,55,14,0),(13,56,14,0),(14,57,14,0),(15,58,16,1),(16,59,16,0),(17,60,16,0),(18,61,17,1),(19,62,20,1),(20,63,20,0),(21,64,23,1),(22,65,23,0),(23,66,25,1),(24,67,25,0),(25,68,25,0),(26,69,27,1),(27,70,27,0),(28,71,27,0),(29,72,27,0),(30,73,28,1),(31,74,28,0),(32,75,28,0),(33,76,33,1),(34,77,33,0),(35,78,34,1),(36,79,34,0),(37,80,38,1),(38,81,38,0),(39,82,41,1),(40,83,42,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-02-25',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,11,0),(2,11,0),(1,14,0),(2,14,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,20,0),(2,20,0),(3,23,0),(4,23,0),(3,25,0),(4,25,0),(3,27,0),(4,27,0),(3,28,0),(4,28,0),(3,33,0),(4,33,0),(3,34,0),(4,34,0),(3,38,0),(4,38,0),(3,41,0),(4,41,0),(3,42,0),(4,42,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Vintage Denim Jacket','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-1.jpg\"]','[]','EF-160-A1',0,12,0,1,'in_stock',0,4,0,0,392,NULL,NULL,NULL,13,10,16,727,NULL,50054,'2025-02-25 09:23:08','2025-02-25 09:23:09',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(2,'Floral Maxi Dress','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-20.jpg\"]','[]','Y8-112-A1',0,12,0,1,'in_stock',1,5,0,0,1914,NULL,NULL,NULL,17,12,11,553,NULL,176473,'2025-02-25 09:23:08','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(3,'Leather Ankle Boots','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','JQ-111',0,11,0,1,'in_stock',1,4,0,0,693,635,NULL,NULL,11,10,20,837,NULL,198304,'2025-02-25 09:23:08','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(4,'Knit Turtleneck Sweater (Digital)','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','5J-100',0,10,0,1,'in_stock',1,1,0,0,1222,833,NULL,NULL,17,19,20,617,NULL,17638,'2025-02-25 09:23:08','2025-02-25 09:23:09',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(5,'Classic Aviator Sunglasses','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','UY-115',0,19,0,1,'in_stock',1,3,0,0,1515,305,NULL,NULL,13,19,20,783,NULL,22246,'2025-02-25 09:23:08','2025-02-25 09:23:09',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(6,'Tailored Wool Blazer','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-1.jpg\"]','[]','GQ-103-A1',0,17,0,1,'in_stock',1,1,0,0,1403,NULL,NULL,NULL,20,16,19,882,NULL,72826,'2025-02-25 09:23:08','2025-02-25 09:23:09',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(7,'Bohemian Fringe Handbag','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-7.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','TY-131-A1',0,11,0,1,'in_stock',0,5,0,0,652,NULL,NULL,NULL,12,14,16,684,NULL,155537,'2025-02-25 09:23:08','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(8,'Silk Scarf with Geometric Print (Digital)','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[]','2V-151',0,13,0,1,'in_stock',0,5,0,0,1824,1017,NULL,NULL,13,13,16,703,NULL,22859,'2025-02-25 09:23:08','2025-02-25 09:23:09',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(9,'High-Waisted Wide Leg Trousers','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','BI-172',0,11,0,1,'in_stock',0,2,0,0,774,246,NULL,NULL,13,10,18,660,NULL,17668,'2025-02-25 09:23:08','2025-02-25 09:23:09',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(10,'Embroidered Boho Blouse','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','TS-165',0,10,0,1,'in_stock',1,3,0,0,438,330,NULL,NULL,10,19,20,715,NULL,120440,'2025-02-25 09:23:08','2025-02-25 09:23:09',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(11,'Statement Chunky Necklace','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','FB-119-A1',0,12,0,1,'in_stock',0,3,0,0,2099,NULL,NULL,NULL,13,15,18,724,NULL,79830,'2025-02-25 09:23:08','2025-02-25 09:23:09',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(12,'Chic Fedora Hat (Digital)','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-11.jpg\"]','[]','CE-193',0,14,0,1,'in_stock',0,3,0,0,796,655,NULL,NULL,18,19,15,870,NULL,30480,'2025-02-25 09:23:08','2025-02-25 09:23:09',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(13,'Strappy Block Heel Sandals','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[]','OK-126',0,15,0,1,'in_stock',0,3,0,0,659,600,NULL,NULL,10,15,10,872,NULL,116063,'2025-02-25 09:23:08','2025-02-25 09:23:09',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(14,'Velvet Evening Gown','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-7.jpg\"]','[]','QS-136-A1',0,11,0,1,'in_stock',0,3,0,0,2016,NULL,NULL,NULL,16,17,10,712,NULL,114109,'2025-02-25 09:23:08','2025-02-25 09:23:09',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(15,'Quilted Crossbody Bag','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-2.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','SR-138',0,12,0,1,'in_stock',0,1,0,0,756,666,NULL,NULL,19,15,14,796,NULL,43725,'2025-02-25 09:23:08','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(16,'Distressed Skinny Jeans (Digital)','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-14.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','MB-115-A1',0,13,0,1,'in_stock',0,4,0,0,1192,929.76,NULL,NULL,13,18,13,744,NULL,55154,'2025-02-25 09:23:08','2025-02-25 09:23:09',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(17,'Lace-Up Combat Boots','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[]','8P-129-A1',0,14,0,1,'in_stock',1,3,0,0,1521,NULL,NULL,NULL,18,20,18,805,NULL,166585,'2025-02-25 09:23:08','2025-02-25 09:23:09',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(18,'Cotton Striped T-Shirt Dress','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','LE-170',0,16,0,1,'in_stock',1,1,0,0,1430,1034,NULL,NULL,11,16,14,810,NULL,176071,'2025-02-25 09:23:08','2025-02-25 09:23:09',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(19,'Printed Palazzo Pants','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\"]','[]','K2-152',0,14,0,1,'in_stock',0,4,0,0,1529,440,NULL,NULL,10,14,18,875,NULL,82415,'2025-02-25 09:23:08','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(20,'Structured Satchel Bag (Digital)','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-8.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','7B-197-A1',0,12,0,1,'in_stock',1,5,0,0,781,609.18,NULL,NULL,12,13,11,511,NULL,129539,'2025-02-25 09:23:08','2025-02-25 09:23:09',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(21,'Off-Shoulder Ruffle Top','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-4.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','MR-104',0,10,0,1,'in_stock',0,3,0,0,2248,166,NULL,NULL,11,20,16,599,NULL,147268,'2025-02-25 09:23:08','2025-02-25 09:23:09',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(22,'Suede Pointed-Toe Pumps','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','W6-100',0,12,0,1,'in_stock',1,5,0,0,1343,128,NULL,NULL,11,19,19,569,NULL,150421,'2025-02-25 09:23:08','2025-02-25 09:23:09',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(23,'Cropped Cable Knit Sweater','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-8.jpg\"]','[]','DH-118-A1',0,12,0,1,'in_stock',0,4,0,0,2140,NULL,NULL,NULL,20,11,11,508,NULL,173173,'2025-02-25 09:23:08','2025-02-25 09:23:09',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(24,'Athleisure Jogger Pants (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','ZY-102',0,14,0,1,'in_stock',0,2,0,0,584,435,NULL,NULL,14,10,15,613,NULL,191247,'2025-02-25 09:23:08','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(25,'Leopard Print Midi Skirt','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-3.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','FK-181-A1',0,14,0,1,'in_stock',0,3,0,0,1633,NULL,NULL,NULL,17,17,19,876,NULL,80191,'2025-02-25 09:23:08','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(26,'Retro Cat-Eye Sunglasses','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-1.jpg\"]','[]','6G-162',0,15,0,1,'in_stock',0,1,0,0,289,150,NULL,NULL,20,18,13,656,NULL,15178,'2025-02-25 09:23:08','2025-02-25 09:23:09',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(27,'Faux Fur Trimmed Coat','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','XJ-185-A1',0,16,0,1,'in_stock',0,1,0,0,721,NULL,NULL,NULL,12,13,13,829,NULL,153193,'2025-02-25 09:23:09','2025-02-25 09:23:09',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(28,'Boho Fringed Kimono (Digital)','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','PJ-140-A1',0,20,0,1,'in_stock',0,2,0,0,1382,1160.88,NULL,NULL,19,11,14,711,NULL,72397,'2025-02-25 09:23:09','2025-02-25 09:23:09',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(29,'Ruffled Wrap Dress','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','WS-130',0,19,0,1,'in_stock',1,2,0,0,814,170,NULL,NULL,14,10,11,506,NULL,112579,'2025-02-25 09:23:09','2025-02-25 09:23:09',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(30,'Beaded Evening Clutch','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-11.jpg\"]','[]','NA-157',0,17,0,1,'in_stock',0,4,0,0,584,306,NULL,NULL,13,14,15,752,NULL,131389,'2025-02-25 09:23:09','2025-02-25 09:23:09',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(31,'Wide Brim Floppy Hat','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','YU-115',0,14,0,1,'in_stock',0,4,0,0,1046,461,NULL,NULL,14,19,12,663,NULL,110622,'2025-02-25 09:23:09','2025-02-25 09:23:09',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(32,'Denim Overall Jumpsuit (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-16.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','NB-184',0,10,0,1,'in_stock',0,5,0,0,321,291,NULL,NULL,18,18,13,751,NULL,115756,'2025-02-25 09:23:09','2025-02-25 09:23:09',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(33,'Embellished Ballet Flats','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-3.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','NU-119-A1',0,19,0,1,'in_stock',1,1,0,0,1418,NULL,NULL,NULL,15,20,17,511,NULL,124430,'2025-02-25 09:23:09','2025-02-25 09:23:09',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(34,'Pleated Midi Skirt','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-4.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','IH-155-A1',0,17,0,1,'in_stock',0,5,0,0,1399,NULL,NULL,NULL,11,16,17,585,NULL,83600,'2025-02-25 09:23:09','2025-02-25 09:23:09',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(35,'Velour Tracksuit Set','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-15.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','SF-197',0,19,0,1,'in_stock',0,4,0,0,1830,457,NULL,NULL,14,12,10,658,NULL,122852,'2025-02-25 09:23:09','2025-02-25 09:23:09',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(36,'Geometric Patterned Cardigan (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','UD-136',0,12,0,1,'in_stock',0,3,0,0,1958,363,NULL,NULL,10,17,17,739,NULL,170119,'2025-02-25 09:23:09','2025-02-25 09:23:09',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,1),(37,'Buckle Detail Ankle Booties','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','LV-190',0,10,0,1,'in_stock',1,2,0,0,1290,300,NULL,NULL,11,20,17,595,NULL,114361,'2025-02-25 09:23:09','2025-02-25 09:23:09',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(38,'Embroidered Bomber Jacket','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-19.jpg\"]','[]','FJ-131-A1',0,19,0,1,'in_stock',0,3,0,0,670,NULL,NULL,NULL,17,10,10,578,NULL,97376,'2025-02-25 09:23:09','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(39,'Cowl Neck Knit Poncho','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-9.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','SE-148',0,19,0,1,'in_stock',1,4,0,0,1564,1487,NULL,NULL,14,14,10,653,NULL,45289,'2025-02-25 09:23:09','2025-02-25 09:23:09',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(40,'Chunky Knit Infinity Scarf (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-2.jpg\"]','[]','1B-146',0,20,0,1,'in_stock',1,5,0,0,2355,275,NULL,NULL,14,16,10,629,NULL,144103,'2025-02-25 09:23:09','2025-02-25 09:23:09',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,2),(41,'Retro High-Top Sneakers','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-20.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','GX-133-A1',0,17,0,1,'in_stock',1,1,0,0,953,NULL,NULL,NULL,17,16,20,538,NULL,38230,'2025-02-25 09:23:09','2025-02-25 09:23:09',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,2),(42,'Faux Leather Leggings','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','PK-121-A1',0,15,0,1,'in_stock',1,1,0,0,2300,NULL,NULL,NULL,17,19,19,828,NULL,149304,'2025-02-25 09:23:09','2025-02-25 09:23:09',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(43,'Metallic Pleated Maxi Skirt','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-13.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','TV-174',0,11,0,1,'in_stock',0,5,0,0,608,40,NULL,NULL,19,15,12,724,NULL,70676,'2025-02-25 09:23:09','2025-02-25 09:23:09',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,1),(44,'Vintage Denim Jacket',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'EF-160-A1',0,12,0,1,'in_stock',0,4,1,0,392,NULL,NULL,NULL,13,10,16,727,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(45,'Floral Maxi Dress',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'Y8-112-A1',0,12,0,1,'in_stock',0,5,1,0,1914,NULL,NULL,NULL,17,12,11,553,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(46,'Floral Maxi Dress',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'Y8-112-A1-A2',0,12,0,1,'in_stock',0,5,1,0,1914,NULL,NULL,NULL,17,12,11,553,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(47,'Tailored Wool Blazer',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'GQ-103-A1',0,17,0,1,'in_stock',0,1,1,0,1403,NULL,NULL,NULL,20,16,19,882,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(48,'Tailored Wool Blazer',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'GQ-103-A1-A2',0,17,0,1,'in_stock',0,1,1,0,1403,NULL,NULL,NULL,20,16,19,882,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(49,'Tailored Wool Blazer',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'GQ-103-A1-A3',0,17,0,1,'in_stock',0,1,1,0,1403,NULL,NULL,NULL,20,16,19,882,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(50,'Tailored Wool Blazer',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'GQ-103-A1-A4',0,17,0,1,'in_stock',0,1,1,0,1403,NULL,NULL,NULL,20,16,19,882,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(51,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'TY-131-A1',0,11,0,1,'in_stock',0,5,1,0,652,NULL,NULL,NULL,12,14,16,684,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(52,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-2.jpg\"]',NULL,'TY-131-A1-A2',0,11,0,1,'in_stock',0,5,1,0,652,NULL,NULL,NULL,12,14,16,684,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(53,'Statement Chunky Necklace',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]',NULL,'FB-119-A1',0,12,0,1,'in_stock',0,3,1,0,2099,NULL,NULL,NULL,13,15,18,724,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(54,'Velvet Evening Gown',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'QS-136-A1',0,11,0,1,'in_stock',0,3,1,0,2016,NULL,NULL,NULL,16,17,10,712,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(55,'Velvet Evening Gown',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'QS-136-A1-A2',0,11,0,1,'in_stock',0,3,1,0,2016,NULL,NULL,NULL,16,17,10,712,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(56,'Velvet Evening Gown',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'QS-136-A1-A3',0,11,0,1,'in_stock',0,3,1,0,2016,NULL,NULL,NULL,16,17,10,712,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(57,'Velvet Evening Gown',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'QS-136-A1-A4',0,11,0,1,'in_stock',0,3,1,0,2016,NULL,NULL,NULL,16,17,10,712,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(58,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'MB-115-A1',0,13,0,1,'in_stock',0,4,1,0,1192,929.76,NULL,NULL,13,18,13,744,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(59,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]',NULL,'MB-115-A1-A2',0,13,0,1,'in_stock',0,4,1,0,1192,894,NULL,NULL,13,18,13,744,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(60,'Distressed Skinny Jeans (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'MB-115-A1-A3',0,13,0,1,'in_stock',0,4,1,0,1192,977.44,NULL,NULL,13,18,13,744,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(61,'Lace-Up Combat Boots',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'8P-129-A1',0,14,0,1,'in_stock',0,3,1,0,1521,NULL,NULL,NULL,18,20,18,805,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(62,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'7B-197-A1',0,12,0,1,'in_stock',0,5,1,0,781,609.18,NULL,NULL,12,13,11,511,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(63,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'7B-197-A1-A2',0,12,0,1,'in_stock',0,5,1,0,781,577.94,NULL,NULL,12,13,11,511,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(64,'Cropped Cable Knit Sweater',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'DH-118-A1',0,12,0,1,'in_stock',0,4,1,0,2140,NULL,NULL,NULL,20,11,11,508,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(65,'Cropped Cable Knit Sweater',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'DH-118-A1-A2',0,12,0,1,'in_stock',0,4,1,0,2140,NULL,NULL,NULL,20,11,11,508,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(66,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'FK-181-A1',0,14,0,1,'in_stock',0,3,1,0,1633,NULL,NULL,NULL,17,17,19,876,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(67,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'FK-181-A1-A2',0,14,0,1,'in_stock',0,3,1,0,1633,NULL,NULL,NULL,17,17,19,876,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(68,'Leopard Print Midi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'FK-181-A1-A3',0,14,0,1,'in_stock',0,3,1,0,1633,NULL,NULL,NULL,17,17,19,876,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(69,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'XJ-185-A1',0,16,0,1,'in_stock',0,1,1,0,721,NULL,NULL,NULL,12,13,13,829,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(70,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]',NULL,'XJ-185-A1-A2',0,16,0,1,'in_stock',0,1,1,0,721,NULL,NULL,NULL,12,13,13,829,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(71,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'XJ-185-A1-A3',0,16,0,1,'in_stock',0,1,1,0,721,NULL,NULL,NULL,12,13,13,829,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(72,'Faux Fur Trimmed Coat',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'XJ-185-A1-A4',0,16,0,1,'in_stock',0,1,1,0,721,NULL,NULL,NULL,12,13,13,829,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(73,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-14.jpg\"]',NULL,'PJ-140-A1',0,20,0,1,'in_stock',0,2,1,0,1382,1160.88,NULL,NULL,19,11,14,711,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(74,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'PJ-140-A1-A2',0,20,0,1,'in_stock',0,2,1,0,1382,1077.96,NULL,NULL,19,11,14,711,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(75,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'PJ-140-A1-A3',0,20,0,1,'in_stock',0,2,1,0,1382,1229.98,NULL,NULL,19,11,14,711,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0,NULL),(76,'Embellished Ballet Flats',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'NU-119-A1',0,19,0,1,'in_stock',0,1,1,0,1418,NULL,NULL,NULL,15,20,17,511,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(77,'Embellished Ballet Flats',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'NU-119-A1-A2',0,19,0,1,'in_stock',0,1,1,0,1418,NULL,NULL,NULL,15,20,17,511,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(78,'Pleated Midi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'IH-155-A1',0,17,0,1,'in_stock',0,5,1,0,1399,NULL,NULL,NULL,11,16,17,585,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(79,'Pleated Midi Skirt',NULL,NULL,'published','[\"main\\/products\\/product-18.jpg\"]',NULL,'IH-155-A1-A2',0,17,0,1,'in_stock',0,5,1,0,1399,NULL,NULL,NULL,11,16,17,585,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(80,'Embroidered Bomber Jacket',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'FJ-131-A1',0,19,0,1,'in_stock',0,3,1,0,670,NULL,NULL,NULL,17,10,10,578,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(81,'Embroidered Bomber Jacket',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'FJ-131-A1-A2',0,19,0,1,'in_stock',0,3,1,0,670,NULL,NULL,NULL,17,10,10,578,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(82,'Retro High-Top Sneakers',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'GX-133-A1',0,17,0,1,'in_stock',0,1,1,0,953,NULL,NULL,NULL,17,16,20,538,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL),(83,'Faux Leather Leggings',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'PK-121-A1',0,15,0,1,'in_stock',0,1,1,0,2300,NULL,NULL,NULL,17,19,19,828,NULL,0,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,1,NULL,NULL,31,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(2,7,NULL,NULL,12,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(3,3,NULL,NULL,6,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(4,8,NULL,NULL,12,5,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(5,8,NULL,NULL,30,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(6,3,NULL,NULL,12,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(7,7,NULL,NULL,34,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(8,9,NULL,NULL,15,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(9,8,NULL,NULL,4,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(10,3,NULL,NULL,5,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(11,9,NULL,NULL,2,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(12,2,NULL,NULL,14,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(13,9,NULL,NULL,18,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(14,5,NULL,NULL,20,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(15,9,NULL,NULL,33,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(16,1,NULL,NULL,11,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\"]'),(17,6,NULL,NULL,35,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(18,1,NULL,NULL,5,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(19,9,NULL,NULL,21,3,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(20,1,NULL,NULL,17,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(21,5,NULL,NULL,32,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(22,10,NULL,NULL,11,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(23,2,NULL,NULL,39,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(24,3,NULL,NULL,26,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(25,6,NULL,NULL,22,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]'),(26,8,NULL,NULL,13,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\"]'),(27,5,NULL,NULL,28,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(28,4,NULL,NULL,21,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(29,3,NULL,NULL,33,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(30,1,NULL,NULL,43,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(31,5,NULL,NULL,17,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(32,5,NULL,NULL,5,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(33,5,NULL,NULL,43,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(35,6,NULL,NULL,17,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(36,4,NULL,NULL,25,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(37,8,NULL,NULL,20,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(38,7,NULL,NULL,13,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(39,6,NULL,NULL,37,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(40,7,NULL,NULL,18,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(41,3,NULL,NULL,42,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(42,2,NULL,NULL,8,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(43,6,NULL,NULL,14,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\"]'),(44,10,NULL,NULL,22,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(45,10,NULL,NULL,5,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(46,1,NULL,NULL,19,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(47,9,NULL,NULL,4,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(48,5,NULL,NULL,42,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(49,1,NULL,NULL,6,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(50,1,NULL,NULL,15,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\"]'),(51,4,NULL,NULL,24,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(52,5,NULL,NULL,14,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(53,7,NULL,NULL,15,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(54,6,NULL,NULL,7,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(55,3,NULL,NULL,28,4,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(57,7,NULL,NULL,42,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(59,8,NULL,NULL,34,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(60,7,NULL,NULL,36,5,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(61,7,NULL,NULL,1,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(62,5,NULL,NULL,37,2,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(63,9,NULL,NULL,3,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(64,7,NULL,NULL,7,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(65,3,NULL,NULL,43,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(66,8,NULL,NULL,5,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(67,6,NULL,NULL,42,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(68,6,NULL,NULL,30,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(69,3,NULL,NULL,16,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(70,3,NULL,NULL,39,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(71,2,NULL,NULL,38,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(72,2,NULL,NULL,12,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(73,2,NULL,NULL,41,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(74,9,NULL,NULL,7,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(75,1,NULL,NULL,30,2,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(76,4,NULL,NULL,11,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(77,10,NULL,NULL,26,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(78,3,NULL,NULL,18,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(79,3,NULL,NULL,17,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(81,10,NULL,NULL,42,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(82,2,NULL,NULL,36,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(83,6,NULL,NULL,25,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\"]'),(84,7,NULL,NULL,10,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(85,5,NULL,NULL,31,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(86,8,NULL,NULL,22,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(87,8,NULL,NULL,18,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(88,8,NULL,NULL,31,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\"]'),(89,2,NULL,NULL,20,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(90,8,NULL,NULL,33,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(91,2,NULL,NULL,27,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(93,7,NULL,NULL,5,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(94,9,NULL,NULL,37,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(95,9,NULL,NULL,1,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(96,10,NULL,NULL,14,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(98,5,NULL,NULL,36,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(99,5,NULL,NULL,38,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(100,2,NULL,NULL,17,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(102,9,NULL,NULL,13,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(103,1,NULL,NULL,26,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(105,1,NULL,NULL,24,3,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(106,6,NULL,NULL,5,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(107,10,NULL,NULL,32,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(108,1,NULL,NULL,29,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(109,6,NULL,NULL,3,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(111,3,NULL,NULL,37,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(112,4,NULL,NULL,18,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(113,9,NULL,NULL,34,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(114,3,NULL,NULL,15,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(115,8,NULL,NULL,3,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(116,5,NULL,NULL,23,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(117,2,NULL,NULL,21,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(119,4,NULL,NULL,37,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(120,2,NULL,NULL,34,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(121,3,NULL,NULL,11,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(122,8,NULL,NULL,1,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(123,2,NULL,NULL,4,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(124,3,NULL,NULL,32,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(125,5,NULL,NULL,19,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(126,1,NULL,NULL,21,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(127,8,NULL,NULL,8,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]'),(128,1,NULL,NULL,22,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(130,1,NULL,NULL,28,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(131,10,NULL,NULL,9,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(132,2,NULL,NULL,1,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(134,8,NULL,NULL,11,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(136,10,NULL,NULL,16,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(137,3,NULL,NULL,10,2,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(138,4,NULL,NULL,33,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(140,10,NULL,NULL,7,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(141,9,NULL,NULL,19,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(144,8,NULL,NULL,26,1,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(146,5,NULL,NULL,33,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(147,10,NULL,NULL,25,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(148,9,NULL,NULL,24,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(152,6,NULL,NULL,43,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(153,4,NULL,NULL,38,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(154,2,NULL,NULL,11,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(155,5,NULL,NULL,27,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(157,2,NULL,NULL,35,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\"]'),(158,9,NULL,NULL,16,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(160,7,NULL,NULL,35,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(164,8,NULL,NULL,43,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(165,5,NULL,NULL,9,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(166,3,NULL,NULL,38,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(168,7,NULL,NULL,4,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(169,4,NULL,NULL,10,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(171,5,NULL,NULL,8,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(172,4,NULL,NULL,32,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(173,4,NULL,NULL,14,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\"]'),(174,8,NULL,NULL,32,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(175,1,NULL,NULL,10,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(176,10,NULL,NULL,1,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(178,5,NULL,NULL,1,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(179,4,NULL,NULL,1,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(180,3,NULL,NULL,41,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(181,5,NULL,NULL,7,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(182,10,NULL,NULL,19,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(183,6,NULL,NULL,34,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(184,5,NULL,NULL,3,1,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(185,7,NULL,NULL,41,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(186,2,NULL,NULL,6,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(188,9,NULL,NULL,28,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(189,3,NULL,NULL,25,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(190,2,NULL,NULL,22,4,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(191,8,NULL,NULL,41,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(192,6,NULL,NULL,29,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(196,10,NULL,NULL,27,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(197,7,NULL,NULL,29,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(199,4,NULL,NULL,26,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\"]'),(200,1,NULL,NULL,42,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(201,8,NULL,NULL,16,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(203,2,NULL,NULL,25,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(204,10,NULL,NULL,37,3,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(205,7,NULL,NULL,20,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(207,6,NULL,NULL,20,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(208,1,NULL,NULL,12,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(210,8,NULL,NULL,10,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(211,9,NULL,NULL,41,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(212,4,NULL,NULL,8,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(213,8,NULL,NULL,23,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(214,1,NULL,NULL,4,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(215,3,NULL,NULL,20,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(217,4,NULL,NULL,12,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(219,3,NULL,NULL,19,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(221,6,NULL,NULL,26,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(224,5,NULL,NULL,11,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(226,9,NULL,NULL,11,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(228,5,NULL,NULL,29,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(231,4,NULL,NULL,19,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(234,7,NULL,NULL,23,3,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(238,5,NULL,NULL,30,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(239,3,NULL,NULL,8,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(242,1,NULL,NULL,27,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(246,10,NULL,NULL,28,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(247,6,NULL,NULL,36,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(248,4,NULL,NULL,42,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(249,7,NULL,NULL,11,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(253,1,NULL,NULL,1,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(254,1,NULL,NULL,41,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(255,1,NULL,NULL,14,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(257,1,NULL,NULL,20,3,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(258,3,NULL,NULL,9,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(259,9,NULL,NULL,5,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(261,4,NULL,NULL,2,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(263,2,NULL,NULL,13,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(264,10,NULL,NULL,34,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(265,10,NULL,NULL,18,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(266,2,NULL,NULL,30,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(267,10,NULL,NULL,21,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(269,4,NULL,NULL,23,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(271,2,NULL,NULL,43,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(272,7,NULL,NULL,26,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(273,5,NULL,NULL,26,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(275,7,NULL,NULL,32,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(276,7,NULL,NULL,25,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(277,6,NULL,NULL,6,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(279,9,NULL,NULL,32,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(282,4,NULL,NULL,27,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(283,10,NULL,NULL,2,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(288,10,NULL,NULL,40,1,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(292,2,NULL,NULL,9,3,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(294,8,NULL,NULL,17,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\"]'),(296,9,NULL,NULL,26,3,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(297,4,NULL,NULL,15,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(299,9,NULL,NULL,43,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(303,2,NULL,NULL,2,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(305,6,NULL,NULL,12,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(306,7,NULL,NULL,24,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\"]'),(307,8,NULL,NULL,37,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(308,1,NULL,NULL,40,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(309,8,NULL,NULL,6,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(312,9,NULL,NULL,8,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(313,7,NULL,NULL,19,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(314,6,NULL,NULL,11,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(316,4,NULL,NULL,3,5,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(317,9,NULL,NULL,38,2,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\"]'),(320,8,NULL,NULL,24,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(325,10,NULL,NULL,41,1,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(326,5,NULL,NULL,18,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(335,1,NULL,NULL,16,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(337,2,NULL,NULL,40,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(341,4,NULL,NULL,13,5,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(343,2,NULL,NULL,29,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(344,6,NULL,NULL,41,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(347,7,NULL,NULL,17,5,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(351,2,NULL,NULL,16,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(353,7,NULL,NULL,43,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(354,4,NULL,NULL,36,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(357,5,NULL,NULL,39,3,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(358,2,NULL,NULL,32,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(359,9,NULL,NULL,42,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(360,8,NULL,NULL,35,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(364,5,NULL,NULL,10,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(368,9,NULL,NULL,29,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(369,8,NULL,NULL,19,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(370,7,NULL,NULL,28,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(372,1,NULL,NULL,33,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(374,10,NULL,NULL,38,4,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(376,8,NULL,NULL,27,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(377,1,NULL,NULL,34,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(378,1,NULL,NULL,3,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(382,8,NULL,NULL,2,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(385,4,NULL,NULL,34,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(387,10,NULL,NULL,43,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(388,6,NULL,NULL,2,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(395,7,NULL,NULL,16,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(396,5,NULL,NULL,24,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(398,3,NULL,NULL,1,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(400,5,NULL,NULL,4,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(402,3,NULL,NULL,4,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(403,10,NULL,NULL,3,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(404,7,NULL,NULL,2,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(405,1,NULL,NULL,39,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(407,1,NULL,NULL,9,2,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(409,6,NULL,NULL,9,5,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(412,2,NULL,NULL,19,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(417,7,NULL,NULL,3,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(421,7,NULL,NULL,6,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(422,9,NULL,NULL,23,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(423,6,NULL,NULL,13,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(425,4,NULL,NULL,40,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(427,5,NULL,NULL,16,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(428,10,NULL,NULL,13,1,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(429,6,NULL,NULL,19,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(431,6,NULL,NULL,10,5,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(433,4,NULL,NULL,6,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(438,9,NULL,NULL,10,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(440,5,NULL,NULL,40,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(445,7,NULL,NULL,31,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(449,8,NULL,NULL,29,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(450,4,NULL,NULL,41,2,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(454,6,NULL,NULL,39,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(455,5,NULL,NULL,12,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(458,7,NULL,NULL,9,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(459,4,NULL,NULL,7,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(461,4,NULL,NULL,39,5,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(463,4,NULL,NULL,5,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(469,10,NULL,NULL,4,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(473,10,NULL,NULL,10,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(482,2,NULL,NULL,42,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(485,2,NULL,NULL,18,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(487,10,NULL,NULL,24,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(491,5,NULL,NULL,22,3,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(494,4,NULL,NULL,4,5,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(497,5,NULL,NULL,2,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(516,2,NULL,NULL,33,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(518,5,NULL,NULL,35,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(521,4,NULL,NULL,20,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(523,9,NULL,NULL,39,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(525,9,NULL,NULL,14,4,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(526,3,NULL,NULL,3,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(527,3,NULL,NULL,13,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(530,3,NULL,NULL,35,2,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(531,10,NULL,NULL,39,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(532,3,NULL,NULL,23,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(534,6,NULL,NULL,23,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(535,2,NULL,NULL,24,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(536,3,NULL,NULL,31,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(538,7,NULL,NULL,40,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(539,5,NULL,NULL,25,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(545,4,NULL,NULL,17,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(547,10,NULL,NULL,17,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(551,9,NULL,NULL,25,5,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(564,1,NULL,NULL,8,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(575,2,NULL,NULL,28,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(580,9,NULL,NULL,12,2,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\"]'),(582,7,NULL,NULL,38,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(583,8,NULL,NULL,25,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(594,8,NULL,NULL,15,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(598,6,NULL,NULL,16,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(625,1,NULL,NULL,25,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(626,1,NULL,NULL,38,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(627,3,NULL,NULL,24,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(630,10,NULL,NULL,12,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(636,9,NULL,NULL,40,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(639,10,NULL,NULL,35,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(643,10,NULL,NULL,23,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(645,8,NULL,NULL,14,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(650,8,NULL,NULL,42,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(651,5,NULL,NULL,34,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(653,4,NULL,NULL,16,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(659,3,NULL,NULL,29,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(660,5,NULL,NULL,15,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(662,1,NULL,NULL,32,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(666,4,NULL,NULL,30,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(674,1,NULL,NULL,13,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(675,5,NULL,NULL,13,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(690,2,NULL,NULL,7,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(695,8,NULL,NULL,39,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(700,9,NULL,NULL,36,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(706,9,NULL,NULL,31,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(713,6,NULL,NULL,32,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(714,10,NULL,NULL,8,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(716,3,NULL,NULL,22,2,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(724,1,NULL,NULL,37,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\"]'),(732,10,NULL,NULL,36,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\"]'),(744,9,NULL,NULL,30,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(750,7,NULL,NULL,14,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\"]'),(758,1,NULL,NULL,18,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(763,3,NULL,NULL,7,3,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(765,7,NULL,NULL,27,1,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(767,10,NULL,NULL,15,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(769,4,NULL,NULL,28,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(776,9,NULL,NULL,17,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(780,4,NULL,NULL,43,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(782,7,NULL,NULL,33,4,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(783,8,NULL,NULL,21,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(790,6,NULL,NULL,18,5,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(798,9,NULL,NULL,9,3,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(802,8,NULL,NULL,28,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(820,4,NULL,NULL,9,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(821,6,NULL,NULL,21,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(830,9,NULL,NULL,22,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(860,8,NULL,NULL,9,1,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(865,8,NULL,NULL,38,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(875,7,NULL,NULL,22,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(876,6,NULL,NULL,24,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(877,8,NULL,NULL,36,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(880,1,NULL,NULL,7,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(885,2,NULL,NULL,31,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(890,1,NULL,NULL,36,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\"]'),(901,6,NULL,NULL,28,1,'Clean & perfect source code','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(910,1,NULL,NULL,23,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(911,2,NULL,NULL,23,1,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(916,3,NULL,NULL,40,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(920,8,NULL,NULL,7,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(941,9,NULL,NULL,27,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\"]'),(947,10,NULL,NULL,29,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-7.png\"]'),(954,9,NULL,NULL,20,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-8.png\"]'),(984,10,NULL,NULL,33,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(992,5,NULL,NULL,21,4,'Best ecommerce CMS online store!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(995,1,NULL,NULL,2,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(999,9,NULL,NULL,35,5,'Good app, good backup service and support. Good documentation.','published','2025-02-25 09:23:11','2025-02-25 09:23:11','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-02-25 09:23:02','2025-02-25 09:23:02');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-02-25 09:23:02','2025-02-25 09:23:02'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-02-25 09:23:02','2025-02-25 09:23:02'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-02-25 09:23:02','2025-02-25 09:23:02');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(2,'Performance',NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(3,'Battery',NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(4,'Display',NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL),(2,'Technical Specification',NULL,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,11),(1,15),(1,16),(1,17),(1,18),(1,20),(1,23),(1,28),(1,29),(1,30),(1,35),(1,39),(1,41),(2,2),(2,3),(2,5),(2,6),(2,8),(2,9),(2,10),(2,13),(2,19),(2,22),(2,25),(2,31),(2,33),(2,34),(2,36),(2,38),(2,40),(2,42),(2,43),(3,4),(3,7),(3,12),(3,14),(3,21),(3,24),(3,26),(3,27),(3,32),(3,37);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-02-25 09:23:02','2025-02-25 09:23:02'),(2,'None',0,2,'published','2025-02-25 09:23:02','2025-02-25 09:23:02'),(3,'Import Tax',15,3,'published','2025-02-25 09:23:02','2025-02-25 09:23:02');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL),(2,'Payment',1,'published','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL),(3,'Order &amp; Returns',2,'published','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-02-25 09:22:59','2025-02-25 09:22:59'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-02-25 09:22:59','2025-02-25 09:22:59');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Bill\'s place for a rabbit! I suppose I ought to have him with them,\' the Mock Turtle in the distance would take the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\' (a loud.',1,0,'fashion/galleries/1.jpg',1,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(2,'New Day','WOULD not remember ever having seen in her pocket) till she got used to say it any longer than that,\' said Alice. \'Did you say pig, or fig?\' said the cook. \'Treacle,\' said the Mock Turtle at last.',1,0,'fashion/galleries/2.jpg',1,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(3,'Happy Day','King said, turning to Alice: he had never had to pinch it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched Hatter trembled so, that he shook both his shoes off. \'Give your.',1,0,'fashion/galleries/3.jpg',1,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(4,'Nature','King, \'and don\'t look at all know whether it was YOUR table,\' said Alice; \'you needn\'t be afraid of them!\' \'And who are THESE?\' said the Cat. \'I don\'t see how he can thoroughly enjoy The pepper when.',1,0,'fashion/galleries/4.jpg',1,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(5,'Morning','The poor little feet, I wonder who will put on one knee as he wore his crown over the list, feeling very glad she had sat down with wonder at the Hatter, who turned pale and fidgeted. \'Give your.',1,0,'fashion/galleries/5.jpg',1,'published','2025-02-25 09:23:10','2025-02-25 09:23:10');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"And he got up and ran the faster, while more and more sounds of broken glass. \'What a curious appearance in the grass, merely remarking as it went, \'One side of the fact. \'I keep them to sell,\' the.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on growing, and, as the game was going off into a chrysalis--you will some day, you.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"Alice, \'a great girl like you,\' (she might well say this), \'to go on till you come and join the dance?\\\"\' \'Thank you, sir, for your interesting story,\' but she could not remember ever having seen in.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2025-02-25 09:23:10','2025-02-25 09:23:10'),(2,'[{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"And he got up and ran the faster, while more and more sounds of broken glass. \'What a curious appearance in the grass, merely remarking as it went, \'One side of the fact. \'I keep them to sell,\' the.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on growing, and, as the game was going off into a chrysalis--you will some day, you.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"Alice, \'a great girl like you,\' (she might well say this), \'to go on till you come and join the dance?\\\"\' \'Thank you, sir, for your interesting story,\' but she could not remember ever having seen in.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2025-02-25 09:23:10','2025-02-25 09:23:10'),(3,'[{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"And he got up and ran the faster, while more and more sounds of broken glass. \'What a curious appearance in the grass, merely remarking as it went, \'One side of the fact. \'I keep them to sell,\' the.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on growing, and, as the game was going off into a chrysalis--you will some day, you.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"Alice, \'a great girl like you,\' (she might well say this), \'to go on till you come and join the dance?\\\"\' \'Thank you, sir, for your interesting story,\' but she could not remember ever having seen in.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2025-02-25 09:23:10','2025-02-25 09:23:10'),(4,'[{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"And he got up and ran the faster, while more and more sounds of broken glass. \'What a curious appearance in the grass, merely remarking as it went, \'One side of the fact. \'I keep them to sell,\' the.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on growing, and, as the game was going off into a chrysalis--you will some day, you.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"Alice, \'a great girl like you,\' (she might well say this), \'to go on till you come and join the dance?\\\"\' \'Thank you, sir, for your interesting story,\' but she could not remember ever having seen in.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2025-02-25 09:23:10','2025-02-25 09:23:10'),(5,'[{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"And he got up and ran the faster, while more and more sounds of broken glass. \'What a curious appearance in the grass, merely remarking as it went, \'One side of the fact. \'I keep them to sell,\' the.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on growing, and, as the game was going off into a chrysalis--you will some day, you.\"},{\"img\":\"fashion\\/galleries\\/5.jpg\",\"description\":\"Alice, \'a great girl like you,\' (she might well say this), \'to go on till you come and join the dance?\\\"\' \'Thank you, sir, for your interesting story,\' but she could not remember ever having seen in.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2025-02-25 09:23:10','2025-02-25 09:23:10');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','a4d16915e3f6a48b6e87a0a5aba284a8',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','f8c172471c41397141fc115edb93edf1',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','fba2d6901e9259de49774fac47ad6062',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','5a053c3aeec917c1c20ea6346b25e4ec',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','fac6372059a647153a2a9c4e4e854ef3',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',16004,'main/general/404.png','[]','2025-02-25 09:22:56','2025-02-25 09:22:56',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2025-02-25 09:22:56','2025-02-25 09:22:56',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2025-02-25 09:22:56','2025-02-25 09:22:56',NULL,'public'),(4,0,'auth-banner','auth-banner',2,'image/png',48468,'main/general/auth-banner.png','[]','2025-02-25 09:22:56','2025-02-25 09:22:56',NULL,'public'),(5,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2025-02-25 09:22:56','2025-02-25 09:22:56',NULL,'public'),(6,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2025-02-25 09:22:56','2025-02-25 09:22:56',NULL,'public'),(7,0,'cta-shape-1','cta-shape-1',2,'image/png',20314,'main/general/cta-shape-1.png','[]','2025-02-25 09:22:56','2025-02-25 09:22:56',NULL,'public'),(8,0,'cta-shape-2','cta-shape-2',2,'image/png',14564,'main/general/cta-shape-2.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(9,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',1778,'main/general/favicon.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(11,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(12,0,'logo-white','logo-white',2,'image/png',17446,'main/general/logo-white.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(13,0,'logo','logo',2,'image/png',18022,'main/general/logo.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/jpeg',7434,'main/general/newsletter-popup.jpg','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(15,0,'placeholder','placeholder',2,'image/png',2334,'main/general/placeholder.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(16,0,'preloader-icon','preloader-icon',2,'image/png',3923,'main/general/preloader-icon.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(17,0,'signature','signature',2,'image/png',2122,'main/general/signature.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(18,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(19,0,'cod','cod',3,'image/png',12121,'payments/cod.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(20,0,'bank-transfer','bank-transfer',3,'image/png',29089,'payments/bank-transfer.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(21,0,'stripe','stripe',3,'image/webp',7516,'payments/stripe.webp','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(22,0,'paypal','paypal',3,'image/png',3001,'payments/paypal.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(23,0,'mollie','mollie',3,'image/png',8968,'payments/mollie.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(24,0,'paystack','paystack',3,'image/png',31015,'payments/paystack.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(25,0,'razorpay','razorpay',3,'image/png',8489,'payments/razorpay.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(26,0,'sslcommerz','sslcommerz',3,'image/png',3482,'payments/sslcommerz.png','[]','2025-02-25 09:22:57','2025-02-25 09:22:57',NULL,'public'),(37,0,'1','1',5,'image/png',948,'main/brands/1.png','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(38,0,'2','2',5,'image/png',948,'main/brands/2.png','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(39,0,'3','3',5,'image/png',948,'main/brands/3.png','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(40,0,'4','4',5,'image/png',948,'main/brands/4.png','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(41,0,'5','5',5,'image/png',948,'main/brands/5.png','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(42,0,'1','1',6,'image/jpeg',4294,'main/customers/1.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(43,0,'10','10',6,'image/jpeg',4294,'main/customers/10.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(44,0,'2','2',6,'image/jpeg',4294,'main/customers/2.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(45,0,'3','3',6,'image/jpeg',4294,'main/customers/3.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(46,0,'4','4',6,'image/jpeg',4294,'main/customers/4.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(47,0,'5','5',6,'image/jpeg',4294,'main/customers/5.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(48,0,'6','6',6,'image/jpeg',4294,'main/customers/6.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(49,0,'7','7',6,'image/jpeg',4294,'main/customers/7.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(50,0,'8','8',6,'image/jpeg',4294,'main/customers/8.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(51,0,'9','9',6,'image/jpeg',4294,'main/customers/9.jpg','[]','2025-02-25 09:22:59','2025-02-25 09:22:59',NULL,'public'),(52,0,'blog-big-1','blog-big-1',7,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2025-02-25 09:23:02','2025-02-25 09:23:02',NULL,'public'),(53,0,'blog-details-sm-1','blog-details-sm-1',7,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2025-02-25 09:23:02','2025-02-25 09:23:02',NULL,'public'),(54,0,'post-1','post-1',7,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2025-02-25 09:23:02','2025-02-25 09:23:02',NULL,'public'),(55,0,'post-10','post-10',7,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2025-02-25 09:23:02','2025-02-25 09:23:02',NULL,'public'),(56,0,'post-11','post-11',7,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2025-02-25 09:23:02','2025-02-25 09:23:02',NULL,'public'),(57,0,'post-12','post-12',7,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2025-02-25 09:23:02','2025-02-25 09:23:02',NULL,'public'),(58,0,'post-2','post-2',7,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2025-02-25 09:23:02','2025-02-25 09:23:02',NULL,'public'),(59,0,'post-3','post-3',7,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2025-02-25 09:23:02','2025-02-25 09:23:02',NULL,'public'),(60,0,'post-4','post-4',7,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(61,0,'post-5','post-5',7,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(62,0,'post-6','post-6',7,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(63,0,'post-7','post-7',7,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(64,0,'post-8','post-8',7,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(65,0,'post-9','post-9',7,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(66,0,'1','1',4,'image/jpeg',4068,'main/users/1.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(67,0,'10','10',4,'image/jpeg',7599,'main/users/10.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(68,0,'2','2',4,'image/jpeg',7599,'main/users/2.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(69,0,'3','3',4,'image/jpeg',6387,'main/users/3.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(70,0,'4','4',4,'image/jpeg',7599,'main/users/4.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(71,0,'5','5',4,'image/jpeg',6387,'main/users/5.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(72,0,'6','6',4,'image/jpeg',7599,'main/users/6.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(73,0,'7','7',4,'image/jpeg',6387,'main/users/7.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(74,0,'8','8',4,'image/jpeg',7599,'main/users/8.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(75,0,'9','9',4,'image/jpeg',6387,'main/users/9.jpg','[]','2025-02-25 09:23:03','2025-02-25 09:23:03',NULL,'public'),(76,0,'1','1',8,'image/png',9022,'main/stores/1.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(77,0,'10','10',8,'image/png',4384,'main/stores/10.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(78,0,'11','11',8,'image/png',4706,'main/stores/11.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(79,0,'12','12',8,'image/png',5075,'main/stores/12.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(80,0,'13','13',8,'image/png',3700,'main/stores/13.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(81,0,'14','14',8,'image/png',4239,'main/stores/14.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(82,0,'15','15',8,'image/png',5304,'main/stores/15.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(83,0,'16','16',8,'image/png',4796,'main/stores/16.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(84,0,'17','17',8,'image/png',4919,'main/stores/17.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(85,0,'2','2',8,'image/png',8598,'main/stores/2.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(86,0,'3','3',8,'image/png',7888,'main/stores/3.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(87,0,'4','4',8,'image/png',8393,'main/stores/4.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(88,0,'5','5',8,'image/png',10159,'main/stores/5.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(89,0,'6','6',8,'image/png',10312,'main/stores/6.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(90,0,'7','7',8,'image/png',3764,'main/stores/7.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(91,0,'8','8',8,'image/png',4237,'main/stores/8.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(92,0,'9','9',8,'image/png',4096,'main/stores/9.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(93,0,'cover-1','cover-1',8,'image/png',4208,'main/stores/cover-1.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(94,0,'cover-2','cover-2',8,'image/png',8798,'main/stores/cover-2.png','[]','2025-02-25 09:23:04','2025-02-25 09:23:04',NULL,'public'),(95,0,'cover-3','cover-3',8,'image/png',3888,'main/stores/cover-3.png','[]','2025-02-25 09:23:05','2025-02-25 09:23:05',NULL,'public'),(96,0,'cover-4','cover-4',8,'image/png',11893,'main/stores/cover-4.png','[]','2025-02-25 09:23:05','2025-02-25 09:23:05',NULL,'public'),(97,0,'cover-5','cover-5',8,'image/png',8798,'main/stores/cover-5.png','[]','2025-02-25 09:23:05','2025-02-25 09:23:05',NULL,'public'),(98,0,'shape-1','shape-1',10,'image/png',1842,'fashion/sliders/shape-1.png','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(99,0,'shape-2','shape-2',10,'image/png',489,'fashion/sliders/shape-2.png','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(100,0,'shape-3','shape-3',10,'image/png',221,'fashion/sliders/shape-3.png','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(101,0,'slider-1','slider-1',10,'image/png',10444,'fashion/sliders/slider-1.png','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(102,0,'slider-2','slider-2',10,'image/png',9843,'fashion/sliders/slider-2.png','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(103,0,'slider-3','slider-3',10,'image/png',11768,'fashion/sliders/slider-3.png','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(104,0,'1','1',11,'image/jpeg',4294,'fashion/product-categories/1.jpg','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(105,0,'2','2',11,'image/jpeg',4294,'fashion/product-categories/2.jpg','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(106,0,'3','3',11,'image/jpeg',4294,'fashion/product-categories/3.jpg','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(107,0,'4','4',11,'image/jpeg',4294,'fashion/product-categories/4.jpg','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(108,0,'5','5',11,'image/jpeg',4294,'fashion/product-categories/5.jpg','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(109,0,'6','6',11,'image/jpeg',4294,'fashion/product-categories/6.jpg','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(110,0,'product-1','product-1',12,'image/png',9803,'fashion/products/product-1.png','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(111,0,'product-2','product-2',12,'image/png',9803,'fashion/products/product-2.png','[]','2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,'public'),(112,0,'product-3','product-3',12,'image/png',9803,'fashion/products/product-3.png','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(113,0,'product-4','product-4',12,'image/png',9803,'fashion/products/product-4.png','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(114,0,'product-5','product-5',12,'image/png',9803,'fashion/products/product-5.png','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(115,0,'product-6','product-6',12,'image/png',9803,'fashion/products/product-6.png','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(116,0,'product-7','product-7',12,'image/png',9803,'fashion/products/product-7.png','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(117,0,'product-8','product-8',12,'image/png',9803,'fashion/products/product-8.png','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(118,0,'1','1',13,'image/jpeg',14146,'main/video/1.jpg','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(119,0,'2','2',13,'image/jpeg',18262,'main/video/2.jpg','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(120,0,'video-1','video-1',13,'video/mp4',4959871,'main/video/video-1.mp4','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(121,0,'video-2','video-2',13,'video/mp4',1077550,'main/video/video-2.mp4','[]','2025-02-25 09:23:08','2025-02-25 09:23:08',NULL,'public'),(122,0,'1','1',14,'image/jpeg',6309,'main/banners/1.jpg','[]','2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,'public'),(123,0,'2','2',14,'image/jpeg',6275,'main/banners/2.jpg','[]','2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,'public'),(124,0,'slider-1','slider-1',14,'image/png',8207,'main/banners/slider-1.png','[]','2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,'public'),(125,0,'slider-2','slider-2',14,'image/png',8497,'main/banners/slider-2.png','[]','2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,'public'),(126,0,'slider-3','slider-3',14,'image/png',6239,'main/banners/slider-3.png','[]','2025-02-25 09:23:09','2025-02-25 09:23:09',NULL,'public'),(127,0,'1','1',15,'image/jpeg',6287,'fashion/banners/1.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(128,0,'2','2',15,'image/jpeg',5975,'fashion/banners/2.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(129,0,'3','3',15,'image/jpeg',5975,'fashion/banners/3.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(130,0,'4','4',15,'image/jpeg',9052,'fashion/banners/4.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(131,0,'1','1',16,'image/jpeg',4294,'fashion/galleries/1.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(132,0,'2','2',16,'image/jpeg',4294,'fashion/galleries/2.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(133,0,'3','3',16,'image/jpeg',4294,'fashion/galleries/3.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(134,0,'4','4',16,'image/jpeg',4294,'fashion/galleries/4.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(135,0,'5','5',16,'image/jpeg',4294,'fashion/galleries/5.jpg','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(136,0,'icon-1','icon-1',17,'image/png',4492,'main/contact/icon-1.png','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(137,0,'icon-2','icon-2',17,'image/png',5753,'main/contact/icon-2.png','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(138,0,'icon-3','icon-3',17,'image/png',5987,'main/contact/icon-3.png','[]','2025-02-25 09:23:10','2025-02-25 09:23:10',NULL,'public'),(139,0,'line','line',18,'image/png',6598,'main/shapes/line.png','[]','2025-02-25 09:23:11','2025-02-25 09:23:11',NULL,'public'),(140,0,'quote','quote',18,'image/png',592,'main/shapes/quote.png','[]','2025-02-25 09:23:11','2025-02-25 09:23:11',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2025-02-25 09:22:56','2025-02-25 09:22:56',NULL),(2,0,'general',NULL,'general',1,'2025-02-25 09:22:56','2025-02-25 09:22:56',NULL),(3,0,'payments',NULL,'payments',0,'2025-02-25 09:22:57','2025-02-25 09:22:57',NULL),(4,0,'users',NULL,'users',1,'2025-02-25 09:22:58','2025-02-25 09:22:58',NULL),(5,0,'brands',NULL,'brands',1,'2025-02-25 09:22:59','2025-02-25 09:22:59',NULL),(6,0,'customers',NULL,'customers',1,'2025-02-25 09:22:59','2025-02-25 09:22:59',NULL),(7,0,'blog',NULL,'blog',1,'2025-02-25 09:23:02','2025-02-25 09:23:02',NULL),(8,0,'stores',NULL,'stores',1,'2025-02-25 09:23:04','2025-02-25 09:23:04',NULL),(9,0,'fashion',NULL,'fashion',0,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL),(10,0,'sliders',NULL,'sliders',9,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL),(11,0,'product-categories',NULL,'product-categories',9,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL),(12,0,'products',NULL,'products',9,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL),(13,0,'video',NULL,'video',1,'2025-02-25 09:23:08','2025-02-25 09:23:08',NULL),(14,0,'banners',NULL,'banners',1,'2025-02-25 09:23:09','2025-02-25 09:23:09',NULL),(15,0,'banners',NULL,'banners',9,'2025-02-25 09:23:10','2025-02-25 09:23:10',NULL),(16,0,'galleries',NULL,'galleries',9,'2025-02-25 09:23:10','2025-02-25 09:23:10',NULL),(17,0,'contact',NULL,'contact',1,'2025-02-25 09:23:10','2025-02-25 09:23:10',NULL),(18,0,'shapes',NULL,'shapes',1,'2025-02-25 09:23:11','2025-02-25 09:23:11',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-02-25 09:23:10','2025-02-25 09:23:10');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(8,1,7,2,'Botble\\Page\\Models\\Page','/categories',NULL,0,'Shop Categories',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(9,1,7,3,'Botble\\Page\\Models\\Page','/brands',NULL,0,'Shop Brands',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(10,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(11,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(12,1,7,NULL,NULL,'/products/chunky-knit-infinity-scarf',NULL,0,'Product Detail',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(13,1,7,4,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(14,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(15,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(16,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(17,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(18,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(19,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(20,1,19,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(21,1,19,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(22,1,19,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(23,1,19,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(24,1,19,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(25,1,19,NULL,NULL,'/coming-soon',NULL,0,'Coming Soon',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(26,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(27,1,26,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(28,1,26,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(29,1,26,NULL,NULL,'/blog/heres-the-first-valentinos-new-makeup-collection',NULL,0,'Blog Detail',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(30,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(31,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(32,2,0,11,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(33,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(34,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(35,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(36,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(37,3,0,9,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(38,3,0,10,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(39,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11'),(40,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:10'),(41,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2025-02-25 09:23:10','2025-02-25 09:23:11');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(2,'My Account','my-account','published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(3,'Information','information','published','2025-02-25 09:23:10','2025-02-25 09:23:10');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Shop Collection\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-02-25 09:23:07','2025-02-25 09:23:07'),(2,'button_label','[\"Shop Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-02-25 09:23:07','2025-02-25 09:23:07'),(3,'button_label','[\"Shop Collection\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-02-25 09:23:07','2025-02-25 09:23:07'),(4,'faq_ids','[[4,5,7,8,10]]',1,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(5,'faq_ids','[[4,5,6,8,9]]',2,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(6,'faq_ids','[[5,6,7,9,10]]',3,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(7,'faq_ids','[[1,5,6,8,10]]',4,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(8,'faq_ids','[[3,5,6,8,10]]',5,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(9,'faq_ids','[[2,3,6,9,10]]',6,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(10,'faq_ids','[[1,2,4,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(11,'faq_ids','[[1,3,4,6,9]]',8,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(12,'faq_ids','[[1,3,6,7,8]]',9,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(13,'faq_ids','[[1,4,8,9,10]]',10,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(14,'faq_ids','[[3,5,6,7,10]]',11,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(15,'faq_ids','[[4,5,6,8,10]]',12,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(16,'faq_ids','[[1,2,4,6,9]]',13,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(17,'faq_ids','[[2,4,6,7,9]]',14,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(18,'faq_ids','[[2,6,8,9,10]]',15,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(19,'faq_ids','[[1,2,3,7,10]]',16,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(20,'faq_ids','[[3,6,8,9,10]]',17,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(21,'faq_ids','[[1,2,3,4,5]]',18,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(22,'faq_ids','[[1,3,6,7,8]]',19,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(23,'faq_ids','[[1,2,4,5,10]]',20,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(24,'faq_ids','[[2,4,6,9,10]]',21,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(25,'faq_ids','[[4,5,6,9,10]]',22,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(26,'faq_ids','[[2,3,5,7,10]]',23,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(27,'faq_ids','[[3,4,5,6,10]]',24,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(28,'faq_ids','[[2,3,8,9,10]]',25,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:08','2025-02-25 09:23:08'),(29,'faq_ids','[[2,4,6,8,10]]',26,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(30,'faq_ids','[[2,3,7,8,9]]',27,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(31,'faq_ids','[[1,5,7,8,10]]',28,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(32,'faq_ids','[[1,2,4,8,9]]',29,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(33,'faq_ids','[[1,3,6,9,10]]',30,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(34,'faq_ids','[[2,4,5,7,10]]',31,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(35,'faq_ids','[[1,5,7,8,9]]',32,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(36,'faq_ids','[[1,2,5,7,8]]',33,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(37,'faq_ids','[[2,3,6,7,10]]',34,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(38,'faq_ids','[[1,2,5,7,8]]',35,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(39,'faq_ids','[[2,3,5,6,9]]',36,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(40,'faq_ids','[[1,5,8,9,10]]',37,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(41,'faq_ids','[[1,2,4,5,10]]',38,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(42,'faq_ids','[[3,5,6,8,9]]',39,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(43,'faq_ids','[[1,3,7,8,10]]',40,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(44,'faq_ids','[[1,3,7,8,9]]',41,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(45,'faq_ids','[[1,5,6,9,10]]',42,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(46,'faq_ids','[[1,2,3,6,7]]',43,'Botble\\Ecommerce\\Models\\Product','2025-02-25 09:23:09','2025-02-25 09:23:09'),(47,'title','[\"Smartphone \\\\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(48,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(49,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(50,'title','[\"HyperX Cloud II \\\\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(51,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(52,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(53,'title','[\"T-Shirt Tunic \\n Tops Blouse\"]',3,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(54,'button_label','[\"Shop Now\"]',3,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(55,'title','[\"Satchel Tote \\n Cross-body Bags\"]',4,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(56,'button_label','[\"Shop Now\"]',4,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(57,'title','[\"Men\'s Tennis \\n Walking Shoes\"]',5,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(58,'button_label','[\"Shop Now\"]',5,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(59,'title','[\"Short Sleeve Tunic \\n Tops Casual Swing\"]',6,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(60,'button_label','[\"Explore More\"]',6,'Botble\\Ads\\Models\\Ads','2025-02-25 09:23:10','2025-02-25 09:23:10'),(61,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2025-02-25 09:23:10','2025-02-25 09:23:10'),(62,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2025-02-25 09:23:10','2025-02-25 09:23:10'),(63,'breadcrumb_style','[\"align-center\"]',7,'Botble\\Page\\Models\\Page','2025-02-25 09:23:10','2025-02-25 09:23:10');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2015_06_18_033822_create_blog_table',1),(7,'2015_06_29_025744_create_audit_history',1),(8,'2016_05_28_112028_create_system_request_logs_table',1),(9,'2016_06_10_230148_create_acl_tables',1),(10,'2016_06_14_230857_create_menus_table',1),(11,'2016_06_17_091537_create_contacts_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_03_032336_create_languages_table',1),(14,'2016_10_05_074239_create_setting_table',1),(15,'2016_10_07_193005_create_translations_table',1),(16,'2016_10_13_150201_create_galleries_table',1),(17,'2016_11_28_032840_create_dashboard_widget_tables',1),(18,'2016_12_16_084601_create_widgets_table',1),(19,'2017_05_09_070343_create_media_tables',1),(20,'2017_05_18_080441_create_payment_tables',1),(21,'2017_07_11_140018_create_simple_slider_table',1),(22,'2017_10_24_154832_create_newsletter_table',1),(23,'2017_11_03_070450_create_slug_table',1),(24,'2018_07_09_214610_create_testimonial_table',1),(25,'2018_07_09_221238_create_faq_table',1),(26,'2019_01_05_053554_create_jobs_table',1),(27,'2019_08_19_000000_create_failed_jobs_table',1),(28,'2019_11_18_061011_create_country_table',1),(29,'2019_12_14_000001_create_personal_access_tokens_table',1),(30,'2020_03_05_041139_create_ecommerce_tables',1),(31,'2020_11_18_150916_ads_create_ads_table',1),(32,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(33,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(34,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(35,'2021_02_16_092633_remove_default_value_for_author_type',1),(36,'2021_02_18_073505_update_table_ec_reviews',1),(37,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(38,'2021_03_10_025153_change_column_tax_amount',1),(39,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(40,'2021_03_27_144913_add_customer_type_into_table_payments',1),(41,'2021_04_28_074008_ecommerce_create_product_label_table',1),(42,'2021_05_24_034720_make_column_currency_nullable',1),(43,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(44,'2021_07_06_030002_create_marketplace_table',1),(45,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(46,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(47,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(48,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(49,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(50,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(51,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(52,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(53,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(54,'2021_10_19_020859_update_metadata_field',1),(55,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(56,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(57,'2021_11_23_071403_correct_languages_for_product_variations',1),(58,'2021_11_28_031808_add_product_tags_translations',1),(59,'2021_12_01_031123_add_featured_image_to_ec_products',1),(60,'2021_12_02_035301_add_ads_translations_table',1),(61,'2021_12_03_030600_create_blog_translations',1),(62,'2021_12_03_075608_create_page_translations',1),(63,'2021_12_03_082134_create_faq_translations',1),(64,'2021_12_03_082953_create_gallery_translations',1),(65,'2021_12_03_083642_create_testimonials_translations',1),(66,'2021_12_03_084118_create_location_translations',1),(67,'2021_12_03_094518_migrate_old_location_data',1),(68,'2021_12_06_031304_update_table_mp_customer_revenues',1),(69,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(70,'2022_01_01_033107_update_table_ec_shipments',1),(71,'2022_01_16_085908_improve_plugin_location',1),(72,'2022_02_16_042457_improve_product_attribute_sets',1),(73,'2022_03_22_075758_correct_product_name',1),(74,'2022_04_19_113334_add_index_to_ec_products',1),(75,'2022_04_19_113923_add_index_to_table_posts',1),(76,'2022_04_20_100851_add_index_to_media_table',1),(77,'2022_04_20_101046_add_index_to_menu_table',1),(78,'2022_04_28_144405_remove_unused_table',1),(79,'2022_04_30_034048_create_gallery_meta_translations_table',1),(80,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(81,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(82,'2022_06_16_095633_add_index_to_some_tables',1),(83,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(84,'2022_06_30_035148_create_order_referrals_table',1),(85,'2022_07_07_153354_update_charge_id_in_table_payments',1),(86,'2022_07_10_034813_move_lang_folder_to_root',1),(87,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(88,'2022_08_04_051940_add_missing_column_expires_at',1),(89,'2022_08_04_052122_delete_location_backup_tables',1),(90,'2022_08_14_032836_create_ec_order_returns_table',1),(91,'2022_08_14_033554_create_ec_order_return_items_table',1),(92,'2022_08_15_040324_add_billing_address',1),(93,'2022_08_30_091114_support_digital_products_table',1),(94,'2022_09_01_000001_create_admin_notifications_tables',1),(95,'2022_09_13_095744_create_options_table',1),(96,'2022_09_13_104347_create_option_value_table',1),(97,'2022_10_05_163518_alter_table_ec_order_product',1),(98,'2022_10_12_041517_create_invoices_table',1),(99,'2022_10_12_142226_update_orders_table',1),(100,'2022_10_13_024916_update_table_order_returns',1),(101,'2022_10_14_024629_drop_column_is_featured',1),(102,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(103,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(104,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(105,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(106,'2022_11_02_071413_add_more_info_for_store',1),(107,'2022_11_02_080444_add_tax_info',1),(108,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(109,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(110,'2022_11_19_041643_add_ec_tax_product_table',1),(111,'2022_12_02_093615_update_slug_index_columns',1),(112,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(113,'2022_12_17_041532_fix_address_in_order_invoice',1),(114,'2022_12_26_070329_create_ec_product_views_table',1),(115,'2023_01_04_033051_fix_product_categories',1),(116,'2023_01_09_050400_add_ec_global_options_translations_table',1),(117,'2023_01_10_093754_add_missing_option_value_id',1),(118,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(119,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(120,'2023_01_30_024431_add_alt_to_media_table',1),(121,'2023_02_01_062030_add_store_translations',1),(122,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(123,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(124,'2023_02_16_042611_drop_table_password_resets',1),(125,'2023_02_17_023648_fix_store_prefix',1),(126,'2023_02_27_095752_remove_duplicate_reviews',1),(127,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(128,'2023_04_17_062645_add_open_in_new_tab',1),(129,'2023_04_21_082427_create_ec_product_categorizables_table',1),(130,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(131,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(132,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(133,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(134,'2023_05_17_025812_fix_invoice_issue',1),(135,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(136,'2023_05_27_144611_fix_exchange_rate_setting',1),(137,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(138,'2023_06_30_042512_create_ec_order_tax_information_table',1),(139,'2023_07_06_011444_create_slug_translations_table',1),(140,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(141,'2023_07_26_041451_add_more_columns_to_location_table',1),(142,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(143,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(144,'2023_08_11_060908_create_announcements_table',1),(145,'2023_08_15_064505_create_ec_tax_rules_table',1),(146,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(147,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(148,'2023_08_21_090810_make_page_content_nullable',1),(149,'2023_08_22_094114_drop_unique_for_barcode',1),(150,'2023_08_29_074620_make_column_author_id_nullable',1),(151,'2023_08_29_075308_make_column_user_id_nullable',1),(152,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(153,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(154,'2023_09_14_021936_update_index_for_slugs_table',1),(155,'2023_09_14_022423_add_index_for_language_table',1),(156,'2023_09_19_024955_create_discount_product_categories_table',1),(157,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(158,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(159,'2023_11_07_023805_add_tablet_mobile_image',1),(160,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(161,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(162,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(163,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(164,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(165,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(166,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(167,'2023_12_12_105220_drop_translations_table',1),(168,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(169,'2023_12_25_040604_ec_create_review_replies_table',1),(170,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(171,'2024_01_16_070706_fix_translation_tables',1),(172,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(173,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(174,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(175,'2024_03_21_100334_update_section_title_shape',1),(176,'2024_03_25_000001_update_captcha_settings_for_contact',1),(177,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(178,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(179,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(180,'2024_03_29_042242_migrate_old_captcha_settings',1),(181,'2024_03_29_093946_create_ec_order_return_histories_table',1),(182,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(183,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(184,'2024_04_03_062451_add_cover_image_to_table_mp_stores',1),(185,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(186,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(187,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1),(188,'2024_04_19_063914_create_custom_fields_table',1),(189,'2024_04_27_100730_improve_analytics_setting',1),(190,'2024_05_07_073153_improve_table_wishlist',1),(191,'2024_05_07_082630_create_mp_messages_table',1),(192,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',1),(193,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(194,'2024_05_15_021503_fix_invoice_path',1),(195,'2024_06_20_160724_create_ec_shared_wishlists_table',1),(196,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',1),(197,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',1),(198,'2024_07_04_083133_create_payment_logs_table',1),(199,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(200,'2024_07_12_100000_change_random_hash_for_media',1),(201,'2024_07_14_071826_make_customer_email_nullable',1),(202,'2024_07_15_104916_add_video_media_column_to_ec_products_table',1),(203,'2024_07_19_131849_add_documents_to_mp_stores_table',1),(204,'2024_07_26_052530_add_percentage_to_tax_rules_table',1),(205,'2024_07_30_091615_fix_order_column_in_categories_table',1),(206,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',1),(207,'2024_08_17_094600_add_image_into_countries',1),(208,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',1),(209,'2024_08_19_132849_create_specification_tables',1),(210,'2024_08_27_141244_add_block_reason_to_ec_customers_table',1),(211,'2024_09_07_060744_add_author_column_to_specification_tables',1),(212,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',1),(213,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',1),(214,'2024_09_17_125408_add_square_logo_to_stores_table',1),(215,'2024_09_25_073928_remove_wrong_product_slugs',1),(216,'2024_09_30_024515_create_sessions_table',1),(217,'2025_01_06_033807_add_default_value_for_categories_author_type',1),(218,'2025_01_08_093652_add_zip_code_to_cities',1),(219,'2025_01_12_094943_correct_blog_posts_images',1),(220,'2025_01_15_050230_migrate_old_theme_options',1),(221,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',1),(222,'2025_01_24_044641_migrate_old_country_data',1),(223,'2025_01_28_233602_add_private_notes_into_ec_orders_table',1),(224,'2025_02_11_153025_add_action_label_to_announcement_translations',1),(225,'2025_02_13_021247_add_tax_translations',1),(226,'2025_02_24_152621_add_text_color_to_product_labels_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','benjamin.watsica@example.net','+16098447489','1098 Constantin Points','BJ','New Hampshire','North Tatum',2,'main/stores/1.png',NULL,'main/stores/cover-4.png','Similique libero deleniti voluptatem sed architecto unde quia iste. Deserunt molestiae saepe incidunt aliquam et expedita. Et voluptatum dignissimos rerum corporis totam sunt repellat quos. Provident aut et velit facere magni. In temporibus rem ea necessitatibus quidem eligendi vel maxime. Voluptas officia dolores mollitia necessitatibus soluta ut. Et voluptatem voluptatem numquam.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','ali.wisozk@example.net','+17246763060','36783 Katrine Rapids','NE','Alabama','South Kelvinfurt',6,'main/stores/2.png',NULL,'main/stores/cover-1.png','Est dolorum non quo ut qui. Hic aspernatur impedit error possimus fuga. Enim quisquam eveniet deleniti. Aut blanditiis temporibus eius reprehenderit voluptatem sunt. Voluptate voluptatem qui soluta incidunt animi. Facilis cumque tenetur sequi et omnis consequatur laboriosam. Voluptatem non quod corporis rerum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','pamela.larkin@example.com','+19307028102','84590 Vena River Apt. 642','CN','Virginia','New Nathanaelhaven',7,'main/stores/3.png',NULL,'main/stores/cover-1.png','Repudiandae dolor et voluptas id quis necessitatibus. In minima laborum dolorum. Placeat eligendi voluptatem et unde non totam. Aut atque et sit rerum iure possimus et est. Quo qui qui eius consequatur dolores. Nulla ipsum quae odio ratione. Et commodi ut quaerat consequatur autem sed repellat. Sit aut error et facere. Nihil consequatur voluptatum qui omnis voluptas possimus recusandae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','ahmad30@example.org','+17738453979','2672 Jayde Fall','CV','California','Jalenville',6,'main/stores/4.png',NULL,'main/stores/cover-3.png','Commodi nemo autem beatae ex. Nam fugiat modi animi aliquam a et. Qui aspernatur aut aspernatur nobis impedit non odit. Labore porro quibusdam saepe occaecati eum unde laboriosam. Ipsa voluptas eligendi rerum ipsum. Ab iste aut corrupti necessitatibus in doloribus. Aliquid odio tempore et eum est accusantium voluptatem. Illum nostrum dolores repellendus rerum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','okon.cayla@example.net','+17438740788','43510 Eichmann Circle Apt. 362','MN','New Mexico','Berniestad',7,'main/stores/5.png',NULL,'main/stores/cover-4.png','Nihil earum nisi nisi quam. Velit nemo tempore quae minima ut. Reprehenderit deleniti qui sed voluptatem aperiam sunt aspernatur. Rerum aperiam doloribus vel facere porro ut dolorem. Quam atque aliquid saepe vel eos harum. Doloremque id quaerat a repudiandae explicabo. Quia qui placeat et voluptas. Ipsum enim nobis dolorem sit. Voluptate atque illo similique ratione quia occaecati.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','raymond.moore@example.net','+16066263766','91804 Schuster Unions Apt. 026','PR','North Dakota','Pansybury',3,'main/stores/6.png',NULL,'main/stores/cover-4.png','Dicta aut voluptatem voluptas quis sint. Tempore veniam omnis unde quae laboriosam. Consequatur enim qui et et. Voluptatem animi et id et suscipit inventore quas. Velit voluptas quibusdam consequatur explicabo repellendus harum. Aut ex reprehenderit omnis sit consequuntur eum repellat.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','okon.fiona@example.org','+16154265505','932 Lorna Heights','PR','Indiana','Ernserchester',5,'main/stores/7.png',NULL,'main/stores/cover-4.png','At qui voluptatibus ut inventore. Quisquam exercitationem dolores id ullam incidunt voluptas voluptates. Est ut doloremque inventore accusamus dolores. Praesentium id et sequi voluptatibus. A consequatur et dolore mollitia. Rerum in earum doloremque iusto delectus explicabo consequatur.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','schroeder.nigel@example.com','+18437384820','3524 Macejkovic Trail','CI','Michigan','North Ellen',7,'main/stores/8.png',NULL,'main/stores/cover-1.png','Impedit occaecati necessitatibus sequi laborum. Neque consequatur maxime nam odit qui. Sequi debitis ut autem soluta a est quidem quia. Fugit repellendus rerum et quis voluptas harum et. Eos dolorem sequi voluptatem et et ea dolore omnis. Et voluptas earum non fuga. Molestias ipsa accusantium exercitationem eius accusantium et.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2025-02-25 09:23:07','2025-02-25 09:23:07',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$8/ibnjoJJCBHACDmOXrDTOOnHrEqQ0x8UTOh3DGoJmwhT8Q4SOJPC','{\"name\":\"Elissa Flatley\",\"number\":\"+17859600811\",\"full_name\":\"Ms. Estefania Williamson I\",\"description\":\"Montana Welch PhD\"}','2025-02-25 09:23:05','2025-02-25 09:23:05','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$yChA7Iy/HGvrzjbhuXh0iuKYmAndw2fGhraQmUDm3Shsk7LIJfWGi','{\"name\":\"Alessandro Pagac\",\"number\":\"+16197556408\",\"full_name\":\"Prof. Aniya Vandervort III\",\"description\":\"Prof. Warren Ondricka V\"}','2025-02-25 09:23:05','2025-02-25 09:23:05','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$kyvdkUbxyEBy.BMiPc.pHewE0yv68hU6d3ufUftOGY2K47kfkldV.','{\"name\":\"Yesenia Emmerich\",\"number\":\"+18319480518\",\"full_name\":\"Lee Schuster DDS\",\"description\":\"Maryjane Tromp\"}','2025-02-25 09:23:05','2025-02-25 09:23:05','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$o9W8g3Yh/YiHXHr1Rm9bsexiwlRWiTEX5sJhz4PKDk.kt6NNjk/dm','{\"name\":\"Trevion Herman\",\"number\":\"+13307794605\",\"full_name\":\"Leila Schaden\",\"description\":\"Garret Mohr II\"}','2025-02-25 09:23:06','2025-02-25 09:23:06','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$In.GZ3A8NzI9YHoY.PLbne2ENTQ4kG6ouwpM96hvZfOa18NuUmwG2','{\"name\":\"Prof. Sonny Wisoky V\",\"number\":\"+17255287507\",\"full_name\":\"Lue Schultz MD\",\"description\":\"Tevin Cartwright\"}','2025-02-25 09:23:06','2025-02-25 09:23:06','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$Lyq1laua0P4pa0o0pRjou.odeZpJhC1d4QI1KqoB6MEs83pJ9O0AO','{\"name\":\"Ms. Samantha Ferry\",\"number\":\"+17262273490\",\"full_name\":\"Marlen Nienow IV\",\"description\":\"Benny Goodwin\"}','2025-02-25 09:23:06','2025-02-25 09:23:06','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$J.kKjEvdCdGpSl2Z856W7usEmriqMDILkoA.KKuH0dvOnWYCDjC86','{\"name\":\"Mr. Noel Buckridge III\",\"number\":\"+15746525439\",\"full_name\":\"Savanna Huels\",\"description\":\"Cleo Armstrong\"}','2025-02-25 09:23:06','2025-02-25 09:23:06','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"2\" key=\"home-slider\" shape_1=\"fashion/sliders/shape-1.png\" shape_2=\"fashion/sliders/shape-2.png\" shape_3=\"fashion/sliders/shape-3.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ads style=\"2\" key_1=\"WXAUTIJV1QU0\" key_2=\"7Z5RXBBWV7J2\" key_3=\"JY08TDO8FG1E\" full_width=\"1\" enable_lazy_loading=\"no\"][/ads][ecommerce-categories style=\"slider\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" category_ids=\"1,2,7,11,18,19\" enable_lazy_loading=\"no\"][/ecommerce-categories][ecommerce-product-groups title=\"Customer Favorite Style Product\" subtitle=\"All Product Shop\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ecommerce-products style=\"slider-full-width\" title=\"This Week\'s Featured\" subtitle=\"Shop by Category\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"1\" background_color=\"#EFF1F5\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products title=\"Trending Arrivals\" subtitle=\"More to Discover\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"1\" ads_ids=\"6\" style=\"slider\" ads=\"VKJNCBIBQC1O\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products title=\"This Week\'s Featured\" subtitle=\"Best Seller This Week\'s\" by=\"specify\" product_ids=\"3,4,5,6\" limit=\"12\" style=\"grid\" button_label=\"Shop All Now\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-products][testimonials style=\"1\" title=\"The Review Are In\" testimonial_ids=\"2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][blog-posts title=\"Latest News & Articles\" subtitle=\"Our Blog & News\" type=\"recent\" limit=\"3\" button_label=\"Discover More\" button_url=\"/blog\" enable_lazy_loading=\"yes\"][/blog-posts][site-features style=\"2\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][gallery style=\"2\" limit=\"5\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(2,'Categories','[ads style=\"2\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-categories style=\"slider\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" category_ids=\"1,2,7,11,18,19\" background_color=\"#F3F5F7\" enable_lazy_loading=\"yes\"][/ecommerce-categories]',1,NULL,'full-width',NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(3,'Brands','[ecommerce-brands show_brand_name=\"1\" enable_lazy_loading=\"yes\"][/ecommerce-brands]',1,NULL,NULL,NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(4,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(5,'Blog',NULL,1,NULL,'full-width',NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(6,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(7,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(9,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(10,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(11,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(12,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2025-09-13\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10'),(13,'Return Policy','<h1>Return Policy</h1>\n<p>Thank you for shopping at [Your Company Name]. We are committed to ensuring that you are completely satisfied with\n    your purchase. If for any reason you are not entirely happy with your purchase, we\'re here to help.</p>\n\n<h2>Returns</h2>\n<p>You have [X] calendar days to return an item from the date you received it.</p>\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. Your item must\n    be in the original packaging.</p>\n<p>Your item needs to have the receipt or proof of purchase.</p>\n\n<h2>Refunds</h2>\n<p>Once we receive your item, we will inspect it and notify you that we have received your returned item. We will\n    immediately notify you on the status of your refund after inspecting the item.</p>\n<p>If your return is approved, we will initiate a refund to your credit card (or original method of payment). You will\n    receive the credit within a certain amount of days, depending on your card issuer\'s policies.</p>\n\n<h2>Shipping</h2>\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are\n    non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n\n<h2>Contact Us</h2>\n<p>If you have any questions on how to return your item to us, contact us at:</p>\n<ul>\n    <li>Email: [Your Email Address]</li>\n    <li>Phone: [Your Phone Number]</li>\n    <li>Address: [Your Physical Address]</li>\n</ul>\n',1,NULL,NULL,NULL,'published','2025-02-25 09:23:10','2025-02-25 09:23:10');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (3,1),(2,1),(5,2),(6,2),(1,3),(4,3),(2,4),(3,4),(2,5),(4,5),(3,6),(5,7),(2,7),(4,8),(6,8),(6,9),(2,9),(4,10),(2,11),(6,12),(6,13),(2,13),(3,14),(4,14),(1,15),(4,15),(2,16),(6,16),(3,17),(6,17),(6,18),(2,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (8,1),(1,1),(4,2),(2,2),(7,2),(4,3),(2,3),(7,4),(1,4),(8,4),(1,5),(4,5),(6,5),(8,6),(3,6),(2,6),(2,7),(5,7),(6,7),(7,8),(8,8),(3,8),(7,9),(4,9),(8,9),(2,10),(8,10),(3,10),(2,11),(1,11),(7,11),(8,12),(1,12),(7,13),(4,13),(1,14),(3,14),(1,15),(6,15),(5,16),(1,16),(3,16),(1,17),(8,17),(4,17),(6,18),(7,18),(4,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','I\'m a hatter.\' Here the Dormouse fell asleep instantly, and Alice was so large in the window, I only wish they COULD! I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said Alice. \'Exactly so,\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',1603,NULL,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Lizard\'s slate-pencil, and the jury consider their verdict,\' the King repeated angrily, \'or I\'ll have you executed on the breeze that followed them, the melancholy words:-- \'Soo--oop of the others.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',1807,NULL,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(3,'The Top 2020 Handbag Trends to Know','The further off from England the nearer is to find herself talking familiarly with them, as if nothing had happened. \'How am I to get to,\' said the Dodo, pointing to the door, and tried to open them.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',2260,NULL,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(4,'How to Match the Color of Your Handbag With an Outfit','Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and the whole thing, and longed to get us dry would be the use of a procession,\' thought she, \'what would become.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',1998,NULL,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(5,'How to Care for Leather Bags','Alice as he could think of what sort it was) scratching and scrambling about in the pool, and the little door, so she took courage, and went to the voice of thunder, and people began running about.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',1117,NULL,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','Queen till she had forgotten the Duchess said after a minute or two she stood looking at them with large eyes like a star-fish,\' thought Alice. \'Now we shall get on better.\' \'I\'d rather finish my.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',1486,NULL,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(7,'Essential Qualities of Highly Successful Music','Alice, and she was as steady as ever; Yet you finished the first to speak. \'What size do you know about it, even if my head would go round and swam slowly back to the confused clamour of the garden.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',1625,NULL,'2025-02-25 09:23:03','2025-02-25 09:23:03'),(8,'9 Things I Love About Shaving My Head','After a time she had hurt the poor little juror (it was Bill, I fancy--Who\'s to go near the door, staring stupidly up into the garden with one finger, as he spoke, \'we were trying--\' \'I see!\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',2410,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(9,'Why Teamwork Really Makes The Dream Work','And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she had succeeded in curving it down.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',506,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(10,'The World Caters to Average People','Adventures of hers that you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'I daresay it\'s a very hopeful tone though), \'I won\'t interrupt again. I dare say you never tasted an.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',2156,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(11,'The litigants on the screen are not actors','It was opened by another footman in livery came running out of a good deal on where you want to get an opportunity of adding, \'You\'re looking for it, you know.\' \'Not at all,\' said the Mock Turtle.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',849,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(12,'Hiring the Right Sales Team at the Right Time','She stretched herself up on to himself in an impatient tone: \'explanations take such a dear quiet thing,\' Alice went on in the air: it puzzled her very much to-night, I should like it put more.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',332,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(13,'Fully Embrace the Return of 90s fashion','CHAPTER VI. Pig and Pepper For a minute or two, which gave the Pigeon had finished. \'As if it makes me grow larger, I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',954,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(14,'Exploring the English Countryside','Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess sneezed occasionally; and as for the Dormouse,\' thought Alice; but she remembered that she began thinking over.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',807,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(15,'Here’s the First Valentino’s New Makeup Collection','Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a capital one for catching mice--oh, I beg your pardon,\' said Alice timidly. \'Would you tell me, please, which way it was a general.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',1593,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(16,'Follow Your own Design process, whatever gets','I\'ve finished.\' So they got settled down again in a dreamy sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then added them up, and reduced the answer to shillings and pence. \'Take.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',627,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(17,'Freelancer Days 2024, What’s new?','And the moral of that is--\"Oh, \'tis love, that makes them so shiny?\' Alice looked all round her, about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',1540,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04'),(18,'Quality Foods Requirments For Every Human Body’s','I see\"!\' \'You might just as she was terribly frightened all the time he had never been so much contradicted in her French lesson-book. The Mouse looked at it gloomily: then he dipped it into his.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',1673,NULL,'2025-02-25 09:23:04','2025-02-25 09:23:04');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-02-25 09:22:58','2025-02-25 09:22:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','717b497585cd1811eb7194ed374f1c40',NULL,'2025-02-25 09:23:11'),(2,'api_enabled','0',NULL,'2025-02-25 09:23:11'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"testimonial\",\"translation\"]',NULL,'2025-02-25 09:23:11'),(6,'theme','shofy-fashion',NULL,'2025-02-25 09:23:11'),(7,'show_admin_bar','1',NULL,'2025-02-25 09:23:11'),(8,'admin_favicon','main/general/favicon.png',NULL,'2025-02-25 09:23:11'),(9,'admin_logo','main/general/logo-white.png',NULL,'2025-02-25 09:23:11'),(10,'announcement_lazy_loading','1',NULL,'2025-02-25 09:23:11'),(11,'marketplace_requires_vendor_documentations_verification','0',NULL,'2025-02-25 09:23:11'),(12,'payment_cod_status','1',NULL,'2025-02-25 09:23:11'),(13,'payment_bank_transfer_status','1',NULL,'2025-02-25 09:23:11'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-02-25 09:23:11'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-02-25 09:23:11'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-02-25 09:23:11'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-02-25 09:23:11'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-02-25 09:23:11'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-02-25 09:23:11'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-02-25 09:23:11'),(21,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-02-25 09:23:11'),(22,'ecommerce_store_order_prefix','SF',NULL,'2025-02-25 09:23:11'),(23,'ecommerce_enable_product_specification','1',NULL,'2025-02-25 09:23:11'),(24,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-02-25 09:23:11'),(25,'payment_cod_logo','payments/cod.png',NULL,'2025-02-25 09:23:11'),(26,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-02-25 09:23:11'),(27,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-02-25 09:23:11'),(28,'payment_paypal_logo','payments/paypal.png',NULL,'2025-02-25 09:23:11'),(29,'payment_mollie_logo','payments/mollie.png',NULL,'2025-02-25 09:23:11'),(30,'payment_paystack_logo','payments/paystack.png',NULL,'2025-02-25 09:23:11'),(31,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-02-25 09:23:11'),(32,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-02-25 09:23:11'),(33,'permalink-botble-blog-models-post','blog',NULL,'2025-02-25 09:23:11'),(34,'permalink-botble-blog-models-category','blog',NULL,'2025-02-25 09:23:11'),(35,'language_hide_default','1',NULL,'2025-02-25 09:23:11'),(36,'language_switcher_display','dropdown',NULL,'2025-02-25 09:23:11'),(37,'language_display','all',NULL,'2025-02-25 09:23:11'),(38,'language_hide_languages','[]',NULL,'2025-02-25 09:23:11'),(39,'ecommerce_store_name','Shofy',NULL,'2025-02-25 09:23:11'),(40,'ecommerce_store_phone','1800979769',NULL,'2025-02-25 09:23:11'),(41,'ecommerce_store_address','502 New Street',NULL,'2025-02-25 09:23:11'),(42,'ecommerce_store_state','Brighton VIC',NULL,'2025-02-25 09:23:11'),(43,'ecommerce_store_city','Brighton VIC',NULL,'2025-02-25 09:23:11'),(44,'ecommerce_store_country','AU',NULL,'2025-02-25 09:23:11'),(45,'announcement_max_width','1390',NULL,'2025-02-25 09:23:11'),(46,'announcement_text_color','#010f1c',NULL,'2025-02-25 09:23:11'),(47,'announcement_background_color','transparent',NULL,'2025-02-25 09:23:11'),(48,'announcement_placement','theme',NULL,'2025-02-25 09:23:11'),(49,'announcement_text_alignment','start',NULL,'2025-02-25 09:23:11'),(50,'announcement_dismissible','0',NULL,'2025-02-25 09:23:11'),(51,'simple_slider_using_assets','0',NULL,'2025-02-25 09:23:11'),(52,'theme-shofy-fashion-site_name','Shofy',NULL,NULL),(53,'theme-shofy-fashion-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(54,'theme-shofy-fashion-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(55,'theme-shofy-fashion-copyright','© %Y All Rights Reserved.',NULL,NULL),(56,'theme-shofy-fashion-tp_primary_font','Jost',NULL,NULL),(57,'theme-shofy-fashion-primary_color','#821F40',NULL,NULL),(58,'theme-shofy-fashion-favicon','main/general/favicon.png',NULL,NULL),(59,'theme-shofy-fashion-logo','main/general/logo.png',NULL,NULL),(60,'theme-shofy-fashion-logo_light','main/general/logo-white.png',NULL,NULL),(61,'theme-shofy-fashion-header_style','2',NULL,NULL),(62,'theme-shofy-fashion-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(63,'theme-shofy-fashion-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(64,'theme-shofy-fashion-hotline','8 800 332 65-66',NULL,NULL),(65,'theme-shofy-fashion-email','contact@fartmart.co',NULL,NULL),(66,'theme-shofy-fashion-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(67,'theme-shofy-fashion-homepage_id','1',NULL,NULL),(68,'theme-shofy-fashion-blog_page_id','5',NULL,NULL),(69,'theme-shofy-fashion-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(70,'theme-shofy-fashion-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(71,'theme-shofy-fashion-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(72,'theme-shofy-fashion-number_of_products_per_page','24',NULL,NULL),(73,'theme-shofy-fashion-number_of_cross_sale_product','6',NULL,NULL),(74,'theme-shofy-fashion-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(75,'theme-shofy-fashion-ecommerce_product_item_style','2',NULL,NULL),(76,'theme-shofy-fashion-404_page_image','main/general/404.png',NULL,NULL),(77,'theme-shofy-fashion-newsletter_popup_enable','1',NULL,NULL),(78,'theme-shofy-fashion-newsletter_popup_image','main/general/newsletter-popup.jpg',NULL,NULL),(79,'theme-shofy-fashion-newsletter_popup_title','Subscribe Now',NULL,NULL),(80,'theme-shofy-fashion-newsletter_popup_subtitle','Newsletter',NULL,NULL),(81,'theme-shofy-fashion-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(82,'theme-shofy-fashion-lazy_load_images','1',NULL,NULL),(83,'theme-shofy-fashion-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(84,'theme-shofy-fashion-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(85,'theme-shofy-fashion-section_title_shape_decorated','style-3',NULL,NULL),(86,'theme-shofy-fashion-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(87,'theme-shofy-fashion-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(88,'theme-shofy-fashion-login_background','main/general/auth-banner.png',NULL,NULL),(89,'theme-shofy-fashion-register_background','main/general/auth-banner.png',NULL,NULL),(90,'theme-shofy-fashion-merchant_return_policy_url','return-policy',NULL,NULL),(91,'theme-shofy-fashion-term_and_privacy_policy_url','privacy-policy',NULL,NULL),(92,'theme-shofy-fashion-header_main_background_color','#fff',NULL,NULL),(93,'theme-shofy-fashion-header_main_text_color','#010f1c',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The Clothing Collection','fashion/sliders/slider-1.png','/products','New Arrivals 2023',0,'2025-02-25 09:23:07','2025-02-25 09:23:07'),(2,1,'The Summer Collection','fashion/sliders/slider-2.png','/products','Best Selling 2023',1,'2025-02-25 09:23:07','2025-02-25 09:23:07'),(3,1,'Amazing New designs','fashion/sliders/slider-3.png','/products','Winter Has Arrived',2,'2025-02-25 09:23:07','2025-02-25 09:23:07');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-02-25 09:23:07','2025-02-25 09:23:07');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-02-25 09:22:59','2025-02-25 09:22:59'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-02-25 09:22:59','2025-02-25 09:22:59'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-02-25 09:22:59','2025-02-25 09:22:59'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-02-25 09:22:59','2025-02-25 09:22:59'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-02-25 09:22:59','2025-02-25 09:22:59'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-02-25 09:23:02','2025-02-25 09:23:02'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-02-25 09:23:02','2025-02-25 09:23:02'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-02-25 09:23:02','2025-02-25 09:23:02'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-02-25 09:23:02','2025-02-25 09:23:02'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-02-25 09:23:02','2025-02-25 09:23:02'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-02-25 09:23:02','2025-02-25 09:23:02'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-02-25 09:23:03','2025-02-25 09:23:03'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-02-25 09:23:03','2025-02-25 09:23:03'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-02-25 09:23:03','2025-02-25 09:23:03'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-02-25 09:23:03','2025-02-25 09:23:03'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-02-25 09:23:03','2025-02-25 09:23:03'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2025-02-25 09:23:03','2025-02-25 09:23:03'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2025-02-25 09:23:03','2025-02-25 09:23:03'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2025-02-25 09:23:03','2025-02-25 09:23:03'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:03','2025-02-25 09:23:03'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2025-02-25 09:23:04','2025-02-25 09:23:04'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-02-25 09:23:07','2025-02-25 09:23:07'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-02-25 09:23:07','2025-02-25 09:23:07'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-02-25 09:23:07','2025-02-25 09:23:07'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-02-25 09:23:07','2025-02-25 09:23:07'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2025-02-25 09:23:07','2025-02-25 09:23:07'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2025-02-25 09:23:07','2025-02-25 09:23:07'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2025-02-25 09:23:07','2025-02-25 09:23:07'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2025-02-25 09:23:07','2025-02-25 09:23:07'),(52,'bags',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(53,'clothing',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(54,'mens-clothing',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(55,'t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(56,'jeans',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(57,'suits',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(58,'womens-clothing',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(59,'dresses',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(60,'blouses',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(61,'pants',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(62,'footwear',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(63,'accessories',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(64,'hats',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(65,'scarves',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(66,'jewelry',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(67,'sportswear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(68,'activewear',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(69,'running-shoes',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(70,'outerwear',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-02-25 09:23:07','2025-02-25 09:23:07'),(71,'vintage-denim-jacket',1,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(72,'floral-maxi-dress',2,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(73,'leather-ankle-boots',3,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(74,'knit-turtleneck-sweater-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:11'),(75,'classic-aviator-sunglasses',5,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(76,'tailored-wool-blazer',6,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(77,'bohemian-fringe-handbag',7,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(78,'silk-scarf-with-geometric-print-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:11'),(79,'high-waisted-wide-leg-trousers',9,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(80,'embroidered-boho-blouse',10,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(81,'statement-chunky-necklace',11,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(82,'chic-fedora-hat-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:11'),(83,'strappy-block-heel-sandals',13,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(84,'velvet-evening-gown',14,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(85,'quilted-crossbody-bag',15,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(86,'distressed-skinny-jeans-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:11'),(87,'lace-up-combat-boots',17,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(88,'cotton-striped-t-shirt-dress',18,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(89,'printed-palazzo-pants',19,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(90,'structured-satchel-bag-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:11'),(91,'off-shoulder-ruffle-top',21,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(92,'suede-pointed-toe-pumps',22,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(93,'cropped-cable-knit-sweater',23,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(94,'athleisure-jogger-pants-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:11'),(95,'leopard-print-midi-skirt',25,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(96,'retro-cat-eye-sunglasses',26,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:08','2025-02-25 09:23:08'),(97,'faux-fur-trimmed-coat',27,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(98,'boho-fringed-kimono-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:11'),(99,'ruffled-wrap-dress',29,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(100,'beaded-evening-clutch',30,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(101,'wide-brim-floppy-hat',31,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(102,'denim-overall-jumpsuit-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:11'),(103,'embellished-ballet-flats',33,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(104,'pleated-midi-skirt',34,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(105,'velour-tracksuit-set',35,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(106,'geometric-patterned-cardigan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:11'),(107,'buckle-detail-ankle-booties',37,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(108,'embroidered-bomber-jacket',38,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(109,'cowl-neck-knit-poncho',39,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(110,'chunky-knit-infinity-scarf-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:11'),(111,'retro-high-top-sneakers',41,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(112,'faux-leather-leggings',42,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(113,'metallic-pleated-maxi-skirt',43,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:09','2025-02-25 09:23:09'),(114,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2025-02-25 09:23:10','2025-02-25 09:23:10'),(115,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2025-02-25 09:23:10','2025-02-25 09:23:10'),(116,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2025-02-25 09:23:10','2025-02-25 09:23:10'),(117,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2025-02-25 09:23:10','2025-02-25 09:23:10'),(118,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2025-02-25 09:23:10','2025-02-25 09:23:10'),(119,'home',1,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(120,'categories',2,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(121,'brands',3,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(122,'coupons',4,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(123,'blog',5,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(124,'contact',6,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(125,'faqs',7,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(126,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(127,'our-story',9,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(128,'careers',10,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(129,'shipping',11,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(130,'coming-soon',12,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(131,'return-policy',13,'Botble\\Page\\Models\\Page','','2025-02-25 09:23:10','2025-02-25 09:23:10'),(132,'vintage-denim-jacket',44,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(133,'floral-maxi-dress',45,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(134,'floral-maxi-dress',46,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(135,'tailored-wool-blazer',47,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(136,'tailored-wool-blazer',48,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(137,'tailored-wool-blazer',49,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(138,'tailored-wool-blazer',50,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(139,'bohemian-fringe-handbag',51,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(140,'bohemian-fringe-handbag',52,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(141,'statement-chunky-necklace',53,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(142,'velvet-evening-gown',54,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(143,'velvet-evening-gown',55,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(144,'velvet-evening-gown',56,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(145,'velvet-evening-gown',57,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(146,'distressed-skinny-jeans-digital',58,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(147,'distressed-skinny-jeans-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(148,'distressed-skinny-jeans-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(149,'lace-up-combat-boots',61,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(150,'structured-satchel-bag-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(151,'structured-satchel-bag-digital',63,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(152,'cropped-cable-knit-sweater',64,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(153,'cropped-cable-knit-sweater',65,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(154,'leopard-print-midi-skirt',66,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(155,'leopard-print-midi-skirt',67,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(156,'leopard-print-midi-skirt',68,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(157,'faux-fur-trimmed-coat',69,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(158,'faux-fur-trimmed-coat',70,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(159,'faux-fur-trimmed-coat',71,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(160,'faux-fur-trimmed-coat',72,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(161,'boho-fringed-kimono-digital',73,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(162,'boho-fringed-kimono-digital',74,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(163,'boho-fringed-kimono-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(164,'embellished-ballet-flats',76,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(165,'embellished-ballet-flats',77,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(166,'pleated-midi-skirt',78,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(167,'pleated-midi-skirt',79,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(168,'embroidered-bomber-jacket',80,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(169,'embroidered-bomber-jacket',81,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(170,'retro-high-top-sneakers',82,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11'),(171,'faux-leather-leggings',83,'Botble\\Ecommerce\\Models\\Product','products','2025-02-25 09:23:11','2025-02-25 09:23:11');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-02-25 09:23:03','2025-02-25 09:23:03'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-02-25 09:23:03','2025-02-25 09:23:03'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-02-25 09:23:03','2025-02-25 09:23:03'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-02-25 09:23:03','2025-02-25 09:23:03'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-02-25 09:23:03','2025-02-25 09:23:03'),(6,'Nature',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-02-25 09:23:03','2025-02-25 09:23:03'),(7,'Vintage',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-02-25 09:23:03','2025-02-25 09:23:03'),(8,'Sunglasses',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-02-25 09:23:03','2025-02-25 09:23:03');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/5.jpg','Developer','published','2025-02-25 09:23:07','2025-02-25 09:23:07'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/2.jpg','CO Founder','published','2025-02-25 09:23:07','2025-02-25 09:23:07'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/6.jpg','UI/UX Designer','published','2025-02-25 09:23:07','2025-02-25 09:23:07'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/10.jpg','Bank of America','published','2025-02-25 09:23:07','2025-02-25 09:23:07');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'walsh.brycen@mohr.com',NULL,'$2y$12$YeZ//znPDI9Fiv3r1sOAMuFDgrLLSyoArMYTrMtlnvf0o8cH1O9IS',NULL,'2025-02-25 09:22:58','2025-02-25 09:22:58','Frank','Hermiston','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-fashion',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-fashion',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-fashion',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-fashion',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(9,'NewsletterWidget','footer_top_sidebar','shofy-fashion',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-fashion',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-fashion',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(12,'BlogSearchWidget','blog_sidebar','shofy-fashion',1,'{\"id\":\"BlogSearchWidget\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(13,'BlogAboutMeWidget','blog_sidebar','shofy-fashion',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/3.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(14,'BlogPostsWidget','blog_sidebar','shofy-fashion',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(15,'BlogCategoriesWidget','blog_sidebar','shofy-fashion',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(16,'BlogTagsWidget','blog_sidebar','shofy-fashion',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy-fashion',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy-fashion',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2025-02-25 09:23:11','2025-02-25 09:23:11'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-fashion',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,2,7,11,18,19],\"style\":\"grid\",\"display_children\":true}','2025-02-25 09:23:11','2025-02-25 09:23:11');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 23:23:12
