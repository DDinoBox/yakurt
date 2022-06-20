-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (arm64)
--
-- Host: localhost    Database: yakurt
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `quantity` int NOT NULL,
  `is_user_survey` tinyint(1) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_product_id_02913eac_fk_products_id` (`product_id`),
  KEY `carts_user_id_3a9d1785_fk_users_id` (`user_id`),
  CONSTRAINT `carts_product_id_02913eac_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `carts_user_id_3a9d1785_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (13,'2022-06-16 21:06:44.880040','2022-06-16 21:06:44.880205',1,0,1,1),(14,'2022-06-16 21:06:47.927644','2022-06-16 21:06:47.927725',3,0,4,1),(15,'2022-06-16 21:07:37.587719','2022-06-16 21:07:37.587790',1,0,5,1),(16,'2022-06-16 21:07:38.749105','2022-06-16 21:07:38.749184',1,0,8,1),(17,'2022-06-16 21:08:48.789033','2022-06-16 21:08:48.789126',1,0,6,1),(18,'2022-06-16 21:08:50.835695','2022-06-16 21:08:50.835780',1,0,10,1);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (17,'carts','cart'),(1,'contenttypes','contenttype'),(14,'orders','order'),(16,'orders','orderitem'),(15,'orders','paymentmethod'),(11,'products','effect'),(12,'products','product'),(13,'products','producteffect'),(2,'sessions','session'),(10,'subscriptions','review'),(8,'subscriptions','subscription'),(9,'subscriptions','subscriptionitem'),(7,'survey','surveyproduct'),(4,'survey','surveysymptom'),(6,'survey','symptomproduct'),(5,'survey','usersurvey'),(3,'users','user');
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
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'users','0001_initial','2022-06-09 06:39:24.792235'),(2,'products','0001_initial','2022-06-09 06:39:24.864450'),(3,'carts','0001_initial','2022-06-09 06:39:24.894086'),(4,'contenttypes','0001_initial','2022-06-09 06:39:24.905874'),(5,'contenttypes','0002_remove_content_type_name','2022-06-09 06:39:24.924237'),(6,'orders','0001_initial','2022-06-09 06:39:24.960277'),(7,'subscriptions','0001_initial','2022-06-09 06:39:25.036110'),(8,'orders','0002_initial','2022-06-09 06:39:25.078175'),(9,'sessions','0001_initial','2022-06-09 06:39:25.086559'),(10,'survey','0001_initial','2022-06-09 06:39:25.155156'),(11,'orders','0003_remove_orderitem_subscription','2022-06-13 08:59:28.771754'),(12,'orders','0004_rename_prodcut_orderitem_product','2022-06-13 08:59:28.812405');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `effects`
--

DROP TABLE IF EXISTS `effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `effects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `effects`
--

LOCK TABLES `effects` WRITE;
/*!40000 ALTER TABLE `effects` DISABLE KEYS */;
INSERT INTO `effects` VALUES (1,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','항산화'),(2,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','피부 보습'),(3,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','높은 혈압감소'),(4,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','피부 건강'),(5,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','지구력'),(6,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','뼈'),(7,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','혈액 순환'),(8,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','에너지'),(9,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','간'),(10,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','눈'),(11,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','장건강'),(12,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','면역');
/*!40000 ALTER TABLE `effects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_412ad78b_fk_orders_id` (`order_id`),
  KEY `order_items_product_id_dd557d5a_fk_products_id` (`product_id`),
  CONSTRAINT `order_items_order_id_412ad78b_fk_orders_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_product_id_dd557d5a_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (16,'2022-06-16 23:16:47.038392','2022-06-16 23:16:47.038447',1,25,2),(17,'2022-06-16 23:16:47.043194','2022-06-16 23:16:47.043246',1,25,4),(18,'2022-06-16 23:16:47.047979','2022-06-16 23:16:47.048039',1,25,6),(19,'2022-06-16 23:44:25.365873','2022-06-16 23:44:25.365926',1,26,2),(20,'2022-06-16 23:44:25.371172','2022-06-16 23:44:25.371225',1,26,1),(21,'2022-06-16 23:44:25.376359','2022-06-16 23:44:25.376411',1,26,4),(22,'2022-06-16 23:44:25.380874','2022-06-16 23:44:25.380929',1,26,6),(23,'2022-06-17 00:10:57.965366','2022-06-17 00:10:57.965416',1,27,1),(24,'2022-06-17 00:10:57.970839','2022-06-17 00:10:57.970891',1,27,4),(25,'2022-06-17 00:10:57.975404','2022-06-17 00:10:57.975461',1,27,5),(26,'2022-06-17 09:16:57.052197','2022-06-17 09:16:57.052236',1,28,1),(27,'2022-06-17 09:16:57.055634','2022-06-17 09:16:57.055671',1,28,4),(28,'2022-06-17 09:16:57.058821','2022-06-17 09:16:57.058855',1,28,2),(29,'2022-06-17 09:18:50.829879','2022-06-17 09:18:50.829933',1,29,1),(30,'2022-06-17 09:18:50.834520','2022-06-17 09:18:50.834574',1,29,3),(31,'2022-06-17 09:18:50.839030','2022-06-17 09:18:50.839081',1,29,5),(32,'2022-06-17 09:21:32.939780','2022-06-17 09:21:32.939833',1,30,2),(33,'2022-06-17 09:21:32.943384','2022-06-17 09:21:32.943422',1,30,3),(34,'2022-06-17 09:43:06.664182','2022-06-17 09:43:06.664206',1,31,6),(35,'2022-06-17 09:43:06.665420','2022-06-17 09:43:06.665430',1,31,7),(36,'2022-06-17 09:43:06.666645','2022-06-17 09:43:06.666663',1,31,10),(37,'2022-06-17 09:50:40.149378','2022-06-17 09:50:40.149392',1,32,8),(38,'2022-06-17 09:50:40.150498','2022-06-17 09:50:40.150509',1,32,7),(39,'2022-06-17 09:50:40.151391','2022-06-17 09:50:40.151399',1,32,9);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_number` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_message` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_method_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_payment_method_id_dfb69856_fk_paymentmethod_id` (`payment_method_id`),
  KEY `orders_user_id_7e2523fb_fk_users_id` (`user_id`),
  CONSTRAINT `orders_payment_method_id_dfb69856_fk_paymentmethod_id` FOREIGN KEY (`payment_method_id`) REFERENCES `paymentmethod` (`id`),
  CONSTRAINT `orders_user_id_7e2523fb_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (25,'2022-06-16 23:16:47.033478','2022-06-16 23:16:47.033584','ca7873c5-841d-4fcf-9787-cdeaed7df3bc','문 앞에 놔',1,4),(26,'2022-06-16 23:44:25.358663','2022-06-16 23:44:25.358781','a5e745be-539f-4d2a-b821-d1e19306efec','문 앞에 놔주세요',2,3),(27,'2022-06-17 00:10:57.958830','2022-06-17 00:10:57.958939','9f43960c-2502-4237-9477-ff03d8f209f9','문 앞에 놔주세요',2,7),(28,'2022-06-17 09:16:57.047353','2022-06-17 09:16:57.047422','8180938b-b716-45b4-9592-30c020631adf','문 앞',2,7),(29,'2022-06-17 09:18:50.824021','2022-06-17 09:18:50.824120','326b658b-754a-4e0f-85ab-01123df37542','문',1,7),(30,'2022-06-17 09:21:32.933550','2022-06-17 09:21:32.933655','12764cce-aa1b-4256-bba7-b0073accb12a','문 앞에',2,7),(31,'2022-06-17 09:43:06.661326','2022-06-17 09:43:06.661368','22b842f8-183e-472a-b6e5-948b3459e2a9','문 앞에 놔주세요',2,9),(32,'2022-06-17 09:50:40.147592','2022-06-17 09:50:40.147631','5b0b8944-d752-493e-a705-70ec68eb488c','문 앞에 놔주세여',2,3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethod` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
INSERT INTO `paymentmethod` VALUES (1,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','네이버페이'),(2,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','카카오페이'),(3,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','페이코'),(4,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','신용/체크카드');
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_effects`
--

DROP TABLE IF EXISTS `product_effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_effects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `effect_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_effects_effect_id_6e86d5d4_fk_effects_id` (`effect_id`),
  KEY `product_effects_product_id_cdb23f1e_fk_products_id` (`product_id`),
  CONSTRAINT `product_effects_effect_id_6e86d5d4_fk_effects_id` FOREIGN KEY (`effect_id`) REFERENCES `effects` (`id`),
  CONSTRAINT `product_effects_product_id_cdb23f1e_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_effects`
--

LOCK TABLES `product_effects` WRITE;
/*!40000 ALTER TABLE `product_effects` DISABLE KEYS */;
INSERT INTO `product_effects` VALUES (1,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',1,2),(2,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',3,2),(3,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',2,3),(4,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',4,3),(5,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',1,3),(6,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',12,4),(7,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',1,4),(8,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',5,4),(9,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',11,5),(10,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',10,6),(11,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',7,6),(12,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',6,7),(13,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',8,7),(14,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',8,8),(15,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',1,9),(16,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',12,9),(17,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',9,10),(18,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',10,11),(19,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',11,12);
/*!40000 ALTER TABLE `product_effects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `information` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `is_subscription` tinyint(1) NOT NULL,
  `Column12` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Column13` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Column14` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','편안하고 상쾌한 하루를 위한','리턴업 발효효소 베이직은 소화과정에서 꼭 필요한 2가지 소화효소를 정성껏 발효하여 충분하게 담았습니다.','리턴업 발효효소','효소는 소화과정에 있어 섭취하는 음식물을 분해하고, 영양소 흡수를 돕는 중요한 역할을 합니다.\n체내 소화에 필요한 특정효소는 나이가 들수록 감소하여, 타액 아밀라아제의 경우 노인집단의 효소량은 젊은 집단의 효소량보다 약 30배 적습니다','https://img.pilly.kr/product/v20200519/hyals/tablet.png?v=v202111121657?v=v202111121657',18500.00,'30일분',1,'','',''),(2,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','높은 혈압 감소를 위한','코엔자임Q10은 국제표준인증을 획득한 원료를 사용하여, 우수한 품질관리를 통해 만들었습니다.','코엔자임','활성산소로부터 인체를 보호하고\n높은 혈압 감소에 도움을 줄 수 있습니다.','https://img.pilly.kr/product/v20200519/probiotics/tablet.png?v=v202111121657?v=v202111121657',15700.00,'30일분',1,'','',''),(3,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','피부 건강을 위한','히알루론산 스피루리나는 피부 보습을 위한 유기농 스피루리나에 국산 쌀겨추출물(부원료)를 더하여 만들었습니다.','스피루리나','피부 속 진피층에서 체내 수분을 저장하는 히알루론산의 보충으로 피부 보습에 도움을 줄 수 있습니다.','https://img.pilly.kr/product/v20200519/vitaminc/tablet.png?v=v202111121657?v=v202111121657',19500.00,'30일분',1,'','',''),(4,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','면역력과 지구력을 위한','옥타코사놀은 국내산 6년근 홍삼과 옥타코사놀에 천연 비타민E를 포함하여 우수한 품질관리를 통해 만들었습니다.','홍삼 옥타코사놀','홍삼에는 사포닌의 일종인 진세노사이드가 함유되어 있어 면역력 증진 및 피로개선 그리고 기억력 개선에 도움을 줄 수 있습니다.\n','https://img.pilly.kr/product/v20200519/calmgd/tablet.png?v=v202111121657?v=v202111121657',21000.00,'30일분',1,'','',''),(5,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','장과 원활한 배변활동을 위한','프로바이오틱스는 미국 다니스코 원료를 포함한 11종의 유산균을 사용하여 우수한 품질관리를 통해 만들었습니다.','프로바이오틱스','유해한 균이 만드는 유독물질은 장에서 흡수되고, 우리 건강에 위험요인으로 작용합니다. 유산균은 유해균의 증식을 억제하여 장 건강에 도움을 줄 수 있습니다.','https://img.pilly.kr/product/v20200519/omega3/tablet.png?v=v202111121657?v=v202111121657',13800.00,'30일분',1,'','',''),(6,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','혈행개선/눈 건강을 위한','오메가3는 작은 어류를 원료로 사용하는 노르웨이산 프리미엄 rTG 오메가3를 사용하고 우수한 품질관리를 통해 만들었습니다.','오메가3','EPA 및 DHA 함유유지는 인체 내 생성이 충분하지 않아 보충해주는 것이 건강에 도움이 됩니다.','https://img.pilly.kr/product/v20200519/milkthistle/tablet.png?v=v202111121657?v=v202111121657',13500.00,'30일분',1,'','',''),(7,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','뼈/근육/신경을 위한','칼슘 마그네슘 비타민D는 북대서양 해저에서 수확한 해조류를 사용한 비타민D와 마그네슘을 포함하여 만들었습니다.','칼슘 마그네슘 비타민D','뼈를 형성하는 칼슘은 신경과 근육 기능 유지와 정상적인 혈액 응고에 필요하며 골다공증 발생 위험 감소에 도움을 줍니다.\n','https://img.pilly.kr/product/v20200519/vitaminb/tablet.png?v=v202111121657?v=v202111121657',12400.00,'30일분',1,'','',''),(8,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','에너지 충전을 위한','비타민B는 7가지 주요 비타민B군의 비타민을 충분히 섭취할 수 있고 우수한 품질관리를 통해 만들었습니다.','비타민B','비타민B2, 나이아신은 체내 에너지 생성에 필요합니다. 활력이 없는 현대인에게 필요한 영양성분입니다.','https://img.pilly.kr/product/v20200519/hyals/tablet.png?v=v202111121657?v=v202111121657',12000.00,'30일분',1,'','',''),(9,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','활성산소를 제거하는','비타민C는 품질이 좋은 영국 DSM사의 비타민C 원료와 셀레늄, 아연을 포함하여 우수한 품질관리를 통해 만들었습니다.','비타민C','비타민 C는 세포 대사과정에서 생성되는 유리라디칼을 제거함으로써 산화적 손상을 방지합니다.','https://img.pilly.kr/product/v20200519/omega3/tablet.png?v=v202111121657?v=v202111121657',11900.00,'30일분',1,'','',''),(10,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','건강한 간을 위한','밀크씨슬은 유럽산 밀크씨슬을 이용하고 우수한 품질관리를 통해 만들었습니다.','밀크씨슬','밀크시슬은 엉겅퀴라고 하는 억센 식물로 실리마린 성분을 가지고 있습니다. 실리마린 성분이 간세포를 보호하는 항산화 작용으로 간 건강에 도움을 줄 수 있습니다.','https://img.pilly.kr/product/v20200519/ginocta/tablet.png?v=v202111121657?v=v202111121657',11300.00,'30일분',1,'','',''),(11,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','눈 건강을 위한','루테인은 마리골드꽃추출물을 사용하고 어두운 곳에서 시각 적응을 위해 필요한 비타민A를 포함하여 만들었습니다.','루테인','노화로 인해 망막의 황반색소 밀도가 줄어들지 않도록 루테인이 눈 건강에 도움을 줄 수 있습니다.','https://img.pilly.kr/product/v20200519/lutein/tablet.png?v=v202111121657?v=v202111121657',10600.00,'30일분',1,'','',''),(12,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','장 활동을 촉진시키는','차전자피는 차전자피를 1일 기준 5.5 g 이상 가득 담아 배변활동과 혈중 콜레스테롤 개선에 도움을 줄 수 있습니다.','쾌변케어 차전자피','차전자피는 수분과 만나 40배까지 팽창하여 장 속의 연동운동을 도와 배변 활동 원활 · 혈중 콜레스테롤 개선에 도움을 줄 수 있습니다.','https://img.pilly.kr/product/v20200519/vitaminb/tablet.png?v=v202111121657?v=v202111121657',26000.00,'1회구매',0,'','',''),(13,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','맑은 피부를 위한','비타민 컴플렉스가 21.5% 함유된 비타민 마스크팩으로 피부 속부터 수분과 비타민을 가득 채워줍니다.','내츄럴 비타민 마스크','‘비타민 나무\'라고 불리는 산자나무수가 함유되어 칙칙한 피부를 맑고 투명하게 가꾸어 주는 산뜻한 워터 타입의 비타민 마스크입니다.','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/2287f3a3-d60e-4da9-8fab-4e0554046aee',2500.00,'1회구매',0,'','',''),(14,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','깨끗하고 촉촉한 손을 위한','마이솝 핸드겔은 보습력이 더해진 소독제로, 손에 있는 각종 유해 세균으로부터 건강을 지키도록 도와줍니다.','마이솝 핸드겔','손에 있는 각종 유해 세균을 99.9% 살균하여 세균 감염으로 인한 질병 예방에 도움을 줍니다.','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/168be606-79a7-4f47-8c06-302b72cbfeda',3500.00,'1회구매',0,'','',''),(15,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','습기로부터 영양제를 지켜주는','습기를 막아주는 소분통은 의료용으로도 사용되는 독일 새너사의 제습 기술로 제작되었습니다.','소분통 4개','습기 제어 특화 기술로 의약용기 및 식품용기를 100년 이상 생산한 독일 새너사의 제품으로 4구 소분통을 구성하였습니다.','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/ae20b2de-b0cf-4887-aa91-6bdaf13c861e',4000.00,'1회구매',0,'','','');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `content` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `image_url` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `subscription_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_subscription_id_0f55816a_fk_subscriptions_id` (`subscription_id`),
  KEY `reviews_user_id_c23b0903_fk_users_id` (`user_id`),
  CONSTRAINT `reviews_subscription_id_0f55816a_fk_subscriptions_id` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`),
  CONSTRAINT `reviews_user_id_c23b0903_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (87,'2022-06-16 23:54:29.282970','2022-06-16 23:54:29.283039','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/c9fdcd03-15c5-40bf-b11b-6789d5aac881',14,1),(88,'2022-06-16 23:54:34.447381','2022-06-16 23:54:34.447453','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/3b85cc87-2c60-430e-91aa-0dc380b6010a',14,2),(89,'2022-06-16 23:54:37.678529','2022-06-16 23:54:37.678613','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/37a90fe5-6a4c-400a-891f-cdf03ad0d649',14,3),(90,'2022-06-16 23:54:47.919948','2022-06-16 23:54:47.919997','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/4b1a8795-eb64-45cc-b1ba-bfcbf61d386b',14,4),(91,'2022-06-16 23:54:54.214175','2022-06-16 23:54:54.214249','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/02ea61b1-8f28-42fc-b54d-5ca6dc8b584d',14,1),(92,'2022-06-16 23:55:06.918425','2022-06-16 23:55:06.918472','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/8b50134b-fd90-42f5-81d2-44f38e89133d',14,2),(93,'2022-06-16 23:55:12.210494','2022-06-16 23:55:12.210635','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/ea5b6b4d-f3e8-438a-aee9-7f58ade2ff42',14,3),(94,'2022-06-16 23:55:15.344717','2022-06-16 23:55:15.344860','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/76116cf4-b4cc-4355-b88c-25ca12378fc7',14,4),(95,'2022-06-16 23:55:18.334715','2022-06-16 23:55:18.334766','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/66474f7d-c94d-4aaa-a927-51711b49cd7c',14,1),(96,'2022-06-16 23:55:22.001571','2022-06-16 23:55:22.001621','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/9f49ac64-382f-4a62-b43f-07da02683b9e',14,2),(97,'2022-06-16 23:55:34.056950','2022-06-16 23:55:34.057073','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/4b6d4734-93df-4ea1-b546-4715c3237f3c',14,3),(98,'2022-06-16 23:55:37.728101','2022-06-16 23:55:37.728157','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/2744b435-90ce-4f95-9258-5831c5f6eaae',14,4),(99,'2022-06-16 23:55:57.750566','2022-06-16 23:55:57.750997','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/ec97300c-014e-4b76-a791-f7280419470b',14,1),(100,'2022-06-16 23:57:39.927055','2022-06-16 23:57:39.927245','33기 화이팅! 모두 수고 했어요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/5f1d4c1f-75fc-4975-9ef1-e1e8f0a5b511',14,1),(101,'2022-06-17 00:11:40.912561','2022-06-17 00:11:40.912667','너무 좋아요!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/9bdd1cab-ab95-49ce-bfb4-52363d0c0c45',16,7),(102,'2022-06-17 09:17:24.899192','2022-06-17 09:17:24.899305','ㅎㅇ','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/65eab9de-1c16-4a0d-8279-d1d2e30d5c9a',16,7),(103,'2022-06-17 09:19:08.067693','2022-06-17 09:19:08.067797','ㅎㅇㅎㅇ','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/ff08b993-54e5-4601-a5e8-92e50ddf928a',16,7),(104,'2022-06-17 09:19:11.433953','2022-06-17 09:19:11.434088','ㅎㅇㅎㅇ','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/9cbdd716-4e3a-43a7-9d23-b8378d1a6788',16,7),(105,'2022-06-17 09:21:47.465149','2022-06-17 09:21:47.465200','ㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇ','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/24c2b73a-fe4f-4a1a-84a0-73cac1fc1ac1',16,7),(106,'2022-06-17 09:21:49.154622','2022-06-17 09:21:49.154702','ㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇㅎㅇ','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/628d6f33-3be4-4c3b-9f4d-420f4ea60545',16,7),(107,'2022-06-17 09:35:04.287787','2022-06-17 09:35:04.287848','dgdgdgdgdgdg','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/fbf38554-e51b-4d05-9485-edffe887db73',19,7),(108,'2022-06-17 09:43:38.290929','2022-06-17 09:43:38.290986','너무너무 좋아요!!!!!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/89070a98-30dd-435e-be41-e7a9050cc78c',20,9),(109,'2022-06-17 09:43:41.770126','2022-06-17 09:43:41.770246','너무너무 좋아요!!!!!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/e803e18c-0c78-4140-a9c7-2b752aaba6da',20,9),(110,'2022-06-17 09:43:43.468814','2022-06-17 09:43:43.468931','너무너무 좋아요!!!!!!','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/4b8c209a-6438-43d7-acd7-f75e43a5f356',20,9),(111,'2022-06-17 09:51:31.997597','2022-06-17 09:51:31.997661','너무 좋아요','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/c05dc38d-ca1d-4b62-8970-a0621ec25ed0',21,3),(112,'2022-06-17 09:51:31.998564','2022-06-17 09:51:31.998593','너무 좋아요','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/0f803126-3163-446a-8413-9726e635729e',21,3),(113,'2022-06-17 09:51:36.412228','2022-06-17 09:51:36.412266','너무 좋아요','https://yakurt-33.s3.ap-northeast-2.amazonaws.com/1c1d1e90-2ed4-4115-809b-e858f2b944ba',21,3);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_items`
--

DROP TABLE IF EXISTS `subscription_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `quantity` int NOT NULL,
  `product_id` bigint NOT NULL,
  `subscription_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subscription_items_product_id_558cadd9_fk_products_id` (`product_id`),
  KEY `subscription_items_subscription_id_e6c2f8ec_fk_subscriptions_id` (`subscription_id`),
  CONSTRAINT `subscription_items_product_id_558cadd9_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `subscription_items_subscription_id_e6c2f8ec_fk_subscriptions_id` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_items`
--

LOCK TABLES `subscription_items` WRITE;
/*!40000 ALTER TABLE `subscription_items` DISABLE KEYS */;
INSERT INTO `subscription_items` VALUES (16,'2022-06-16 23:16:47.061266','2022-06-16 23:16:47.061327',1,2,14),(17,'2022-06-16 23:16:47.065992','2022-06-16 23:16:47.066047',1,4,14),(18,'2022-06-16 23:16:47.071729','2022-06-16 23:16:47.071801',1,6,14),(19,'2022-06-16 23:44:25.394197','2022-06-16 23:44:25.394242',1,2,15),(20,'2022-06-16 23:44:25.399957','2022-06-16 23:44:25.400027',1,1,15),(21,'2022-06-16 23:44:25.408441','2022-06-16 23:44:25.408578',1,4,15),(22,'2022-06-16 23:44:25.413408','2022-06-16 23:44:25.413458',1,6,15),(23,'2022-06-17 00:10:57.987502','2022-06-17 00:10:57.987552',1,1,16),(24,'2022-06-17 00:10:57.992085','2022-06-17 00:10:57.992137',1,4,16),(25,'2022-06-17 00:10:57.996826','2022-06-17 00:10:57.996883',1,5,16),(26,'2022-06-17 09:16:57.067260','2022-06-17 09:16:57.067297',1,1,17),(27,'2022-06-17 09:16:57.071198','2022-06-17 09:16:57.071237',1,4,17),(28,'2022-06-17 09:16:57.074347','2022-06-17 09:16:57.074382',1,2,17),(29,'2022-06-17 09:18:50.850717','2022-06-17 09:18:50.850765',1,1,18),(30,'2022-06-17 09:18:50.855251','2022-06-17 09:18:50.855298',1,3,18),(31,'2022-06-17 09:18:50.858973','2022-06-17 09:18:50.859009',1,5,18),(32,'2022-06-17 09:21:32.959856','2022-06-17 09:21:32.959895',1,2,19),(33,'2022-06-17 09:21:32.963220','2022-06-17 09:21:32.963256',1,3,19),(34,'2022-06-17 09:43:06.676855','2022-06-17 09:43:06.676863',1,6,20),(35,'2022-06-17 09:43:06.677958','2022-06-17 09:43:06.677965',1,7,20),(36,'2022-06-17 09:43:06.679296','2022-06-17 09:43:06.679322',1,10,20),(37,'2022-06-17 09:50:40.153478','2022-06-17 09:50:40.153487',1,8,21),(38,'2022-06-17 09:50:40.154349','2022-06-17 09:50:40.154356',1,7,21),(39,'2022-06-17 09:50:40.155137','2022-06-17 09:50:40.155143',1,9,21);
/*!40000 ALTER TABLE `subscription_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_subscribing` tinyint(1) NOT NULL,
  `delivery_message` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_method_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_payment_method_id_1c04f376_fk_paymentmethod_id` (`payment_method_id`),
  KEY `subscriptions_user_id_599297d4_fk_users_id` (`user_id`),
  CONSTRAINT `subscriptions_payment_method_id_1c04f376_fk_paymentmethod_id` FOREIGN KEY (`payment_method_id`) REFERENCES `paymentmethod` (`id`),
  CONSTRAINT `subscriptions_user_id_599297d4_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (14,'2022-06-16 23:16:47.053953','2022-06-16 23:16:47.054010',1,'문 앞에 놔',1,4),(15,'2022-06-16 23:44:25.388692','2022-06-16 23:44:25.388755',1,'문 앞에 놔주세요',2,3),(16,'2022-06-17 00:10:57.982306','2022-06-17 00:10:57.982366',1,'문 앞에 놔주세요',2,7),(17,'2022-06-17 09:16:57.063286','2022-06-17 09:16:57.063326',1,'문 앞',2,7),(18,'2022-06-17 09:18:50.845479','2022-06-17 09:18:50.845540',1,'문',1,7),(19,'2022-06-17 09:21:32.954795','2022-06-17 09:21:32.954912',1,'문 앞에',2,7),(20,'2022-06-17 09:43:06.675190','2022-06-17 09:43:06.675205',1,'문 앞에 놔주세요',2,9),(21,'2022-06-17 09:50:40.152518','2022-06-17 09:50:40.152526',1,'문 앞에 놔주세여',2,3);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_products`
--

DROP TABLE IF EXISTS `survey_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_survey_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_products_product_id_0dcc2a3c_fk_products_id` (`product_id`),
  KEY `survey_products_user_survey_id_493fa84c_fk_user_survey_id` (`user_survey_id`),
  CONSTRAINT `survey_products_product_id_0dcc2a3c_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `survey_products_user_survey_id_493fa84c_fk_user_survey_id` FOREIGN KEY (`user_survey_id`) REFERENCES `user_survey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_products`
--

LOCK TABLES `survey_products` WRITE;
/*!40000 ALTER TABLE `survey_products` DISABLE KEYS */;
INSERT INTO `survey_products` VALUES (67,'2022-06-16 05:38:27.402690','2022-06-16 05:38:27.402769',7,46),(68,'2022-06-16 05:38:27.402855','2022-06-16 05:38:27.402898',9,46),(69,'2022-06-16 05:38:32.644973','2022-06-16 05:38:32.645047',1,47),(70,'2022-06-16 05:38:32.645130','2022-06-16 05:38:32.645184',15,47),(71,'2022-06-16 20:59:57.376889','2022-06-16 20:59:57.376929',3,48),(72,'2022-06-16 20:59:57.376961','2022-06-16 20:59:57.376973',6,48),(73,'2022-06-16 20:59:57.376994','2022-06-16 20:59:57.377006',8,48),(74,'2022-06-16 21:01:48.842252','2022-06-16 21:01:48.842305',2,49),(75,'2022-06-16 21:01:48.842340','2022-06-16 21:01:48.842352',4,49),(76,'2022-06-16 21:01:48.842375','2022-06-16 21:01:48.842385',5,49),(77,'2022-06-16 22:21:18.192714','2022-06-16 22:21:18.192760',1,50),(78,'2022-06-16 22:21:18.192812','2022-06-16 22:21:18.192832',5,50),(79,'2022-06-16 22:21:18.192871','2022-06-16 22:21:18.192890',3,50),(80,'2022-06-16 22:21:18.192929','2022-06-16 22:21:18.192948',8,50),(81,'2022-06-16 23:42:39.255495','2022-06-16 23:42:39.255550',1,51),(82,'2022-06-16 23:42:39.255618','2022-06-16 23:42:39.255635',4,51),(83,'2022-06-16 23:42:39.255667','2022-06-16 23:42:39.255683',6,51),(84,'2022-06-16 23:43:35.916748','2022-06-16 23:43:35.916802',1,52),(85,'2022-06-16 23:43:35.916841','2022-06-16 23:43:35.916855',3,52),(86,'2022-06-16 23:43:35.916881','2022-06-16 23:43:35.916894',7,52),(87,'2022-06-17 00:04:07.959399','2022-06-17 00:04:07.959484',1,53),(88,'2022-06-17 00:04:07.959554','2022-06-17 00:04:07.959573',4,53),(89,'2022-06-17 00:04:07.959606','2022-06-17 00:04:07.959622',7,53),(90,'2022-06-17 00:04:07.959654','2022-06-17 00:04:07.959669',8,53),(91,'2022-06-17 00:09:45.578303','2022-06-17 00:09:45.578368',2,54),(92,'2022-06-17 00:09:45.578424','2022-06-17 00:09:45.578445',4,54),(93,'2022-06-17 00:09:45.578485','2022-06-17 00:09:45.578505',5,54),(94,'2022-06-17 09:42:10.536597','2022-06-17 09:42:10.536662',2,55),(95,'2022-06-17 09:42:10.536714','2022-06-17 09:42:10.536728',7,55),(96,'2022-06-17 09:42:10.536754','2022-06-17 09:42:10.536766',9,55),(97,'2022-06-17 09:49:25.887542','2022-06-17 09:49:25.887554',7,56),(98,'2022-06-17 09:49:25.887565','2022-06-17 09:49:25.887569',6,56),(99,'2022-06-17 09:49:25.887576','2022-06-17 09:49:25.887580',9,56);
/*!40000 ALTER TABLE `survey_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_symptoms`
--

DROP TABLE IF EXISTS `survey_symptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_symptoms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_symptoms`
--

LOCK TABLES `survey_symptoms` WRITE;
/*!40000 ALTER TABLE `survey_symptoms` DISABLE KEYS */;
INSERT INTO `survey_symptoms` VALUES (1,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','혈관/혈액순환'),(2,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','소화/장'),(3,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','피부'),(4,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','눈'),(5,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','두뇌활동'),(6,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','피로감'),(7,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','뼈와 관절'),(8,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','면역'),(9,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000','모발');
/*!40000 ALTER TABLE `survey_symptoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptom_products`
--

DROP TABLE IF EXISTS `symptom_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symptom_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `survey_symptom_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `symptom_products_product_id_791c55a1_fk_products_id` (`product_id`),
  KEY `symptom_products_survey_symptom_id_d2022827_fk_survey_sy` (`survey_symptom_id`),
  CONSTRAINT `symptom_products_product_id_791c55a1_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `symptom_products_survey_symptom_id_d2022827_fk_survey_sy` FOREIGN KEY (`survey_symptom_id`) REFERENCES `survey_symptoms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptom_products`
--

LOCK TABLES `symptom_products` WRITE;
/*!40000 ALTER TABLE `symptom_products` DISABLE KEYS */;
INSERT INTO `symptom_products` VALUES (1,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',8,1),(2,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',1,2),(3,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',3,3),(4,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',11,4),(5,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',7,5),(6,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',6,6),(7,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',7,7),(8,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',4,8),(9,'2022-06-09 19:21:00.000000','2022-06-09 19:21:00.000000',2,9);
/*!40000 ALTER TABLE `symptom_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_survey`
--

DROP TABLE IF EXISTS `user_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_survey` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `weight` decimal(5,2) NOT NULL,
  `height` decimal(5,1) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_survey_user_id_dd0260f7_fk_users_id` (`user_id`),
  CONSTRAINT `user_survey_user_id_dd0260f7_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_survey`
--

LOCK TABLES `user_survey` WRITE;
/*!40000 ALTER TABLE `user_survey` DISABLE KEYS */;
INSERT INTO `user_survey` VALUES (46,'2022-06-16 05:38:27.396580','2022-06-16 05:38:27.396768','Women',30,60.00,160.0,1),(47,'2022-06-16 05:38:32.641543','2022-06-16 05:38:32.641643','Women',30,60.00,160.0,1),(48,'2022-06-16 20:59:57.361029','2022-06-16 20:59:57.361131','남성',25,59.00,174.0,3),(49,'2022-06-16 21:01:48.833880','2022-06-16 21:01:48.834000','남성',25,59.00,174.0,3),(50,'2022-06-16 22:21:18.186432','2022-06-16 22:21:18.186487','여성',28,20.00,192.0,4),(51,'2022-06-16 23:42:39.247199','2022-06-16 23:42:39.247347','남성',25,59.00,174.0,3),(52,'2022-06-16 23:43:35.908952','2022-06-16 23:43:35.909076','남성',25,59.00,174.0,3),(53,'2022-06-17 00:04:07.951109','2022-06-17 00:04:07.951185','여성',25,145.00,189.0,7),(54,'2022-06-17 00:09:45.570899','2022-06-17 00:09:45.570950','남성',29,78.00,189.0,7),(55,'2022-06-17 09:42:10.530334','2022-06-17 09:42:10.530387','남성',30,63.00,180.0,9),(56,'2022-06-17 09:49:25.882890','2022-06-17 09:49:25.882909','남성',25,62.00,174.0,3);
/*!40000 ALTER TABLE `user_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `kakao_id` bigint NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nick_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_subscribe` tinyint(1) NOT NULL,
  `email_subscribe` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2022-06-09 06:42:58.700493','2022-06-09 06:42:58.700643',2274662177,'hyein0120@kakao.com','혜인','010-5473-6165','경기 광주 오포읍',0,0),(2,'2022-06-13 05:45:05.052964','2022-06-13 05:45:05.053261',2284445726,'dream6117@naver.com','정재성',NULL,NULL,0,0),(3,'2022-06-16 07:41:49.848750','2022-06-16 07:41:49.848860',2288624013,'dhks2869@gmail.com','완영',NULL,NULL,0,0),(4,'2022-06-16 22:19:23.388880','2022-06-16 22:19:23.389157',2289055551,'eunbyul.0407@gmail.com','천은별',NULL,NULL,0,0),(5,'2022-06-17 00:03:47.098453','2022-06-17 00:03:47.098575',2289170704,'ysh959@naver.com','상연',NULL,NULL,0,0),(6,'2022-06-17 00:07:43.088151','2022-06-17 00:07:43.088308',2289174133,'jjkim0104@hanmail.net','김정준',NULL,NULL,0,0),(7,'2022-06-17 00:09:20.469826','2022-06-17 00:09:20.469946',2289175569,'cd1cd2cd3@naver.com','염종은',NULL,NULL,0,0),(8,'2022-06-17 09:40:26.203281','2022-06-17 09:40:26.203414',2289427545,'hyesu9209@naver.com','김혜수',NULL,NULL,0,0),(9,'2022-06-17 09:41:44.511486','2022-06-17 09:41:44.511556',2289428839,'az1016@nate.com','김형석',NULL,NULL,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-20 18:17:53
