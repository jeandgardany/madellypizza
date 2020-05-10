-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: madellypizza_development
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-05-08 13:21:00.433309','2020-05-08 13:21:00.433309');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,100,'Pizzas',0,'2020-05-08 13:22:12.540668','2020-05-08 13:22:12.540668'),(2,300,'Refrigerantes',0,'2020-05-09 17:35:25.156222','2020-05-09 17:35:25.156222'),(3,400,'Pastéis',0,'2020-05-09 17:44:54.603441','2020-05-09 17:44:54.603441');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `phone` varchar(255) DEFAULT NULL,
  `obs` text,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `phone` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `obs` text,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fillings`
--

DROP TABLE IF EXISTS `fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fillings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(10,0) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ifillings` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fillings`
--

LOCK TABLES `fillings` WRITE;
/*!40000 ALTER TABLE `fillings` DISABLE KEYS */;
INSERT INTO `fillings` VALUES (1,'Carne','Carne moída e temperos.',NULL,'2020-05-09 17:17:32.060923','2020-05-09 17:17:32.060923','[\"carne_moida.jpg\"]'),(2,'Carne de Sol','Carne de Sol com temperos.',NULL,'2020-05-09 17:24:36.053206','2020-05-09 17:24:36.053206','[\"c.de.sol.jpg\"]'),(3,'Frango','Frango desfiado temperado.',NULL,'2020-05-09 17:26:01.416377','2020-05-09 17:26:57.558744','[\"frango.jpg\"]'),(4,'Calabresa','Calabresa temperada.',NULL,'2020-05-09 17:29:25.845901','2020-05-09 17:30:34.725654','[\"Calabresa-3.jpg\"]');
/*!40000 ALTER TABLE `fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flavors`
--

DROP TABLE IF EXISTS `flavors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flavors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `iflavors` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flavors`
--

LOCK TABLES `flavors` WRITE;
/*!40000 ALTER TABLE `flavors` DISABLE KEYS */;
INSERT INTO `flavors` VALUES (1,'Frango','Frango, mussarela e cebola.','2020-05-08 13:30:23.702384','2020-05-08 13:30:23.702384','[\"fg.jpg\"]'),(2,'Frango com Catupiry','Frango, catupiry, mussarela e cebola.','2020-05-08 13:30:58.394998','2020-05-08 13:30:58.394998','[\"pizza-de-frango.catupiry.jpg\"]'),(3,'Carne de Sol','Carne de sol, mussarela e cebola.','2020-05-08 13:31:29.821278','2020-05-08 13:31:29.821278','[\"3623806_x720.jpg\"]'),(4,'Mista','Mussarela, presunto e cebola.','2020-05-08 13:31:57.985215','2020-05-08 13:31:57.985215','[\"mista.jpg\"]'),(5,'Pepperoni','Pepperoni, mussarela, molho e cebola.','2020-05-09 17:49:11.108239','2020-05-09 17:49:47.708372','[\"pizza.pepperoni.jpg\"]'),(6,'Calabresa','Calabresa, mussarela, molho e cebola.','2020-05-09 17:51:08.145675','2020-05-09 17:51:08.145675','[\"sabor.calabresa.jpg\"]'),(7,'Protuguesa','Presunto, mussarela, ovo, molho e cebola.','2020-05-09 17:53:49.828411','2020-05-09 17:53:49.828411','[\"sabor.pizza-portuguesa.jpg\"]'),(8,'Mussarela','Mussarela, molho e cebola.','2020-05-09 17:55:20.204005','2020-05-09 17:55:20.204005','[\"sabor.pizza.mussarela.jpg\"]');
/*!40000 ALTER TABLE `flavors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `description` text,
  `status` int(11) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `photos` json DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT NULL,
  `pricePRO` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_fb915499a4` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1000,'Pizza Frango',15,'Frango, mussarela e cebola.',0,1,'2020-05-08 13:23:45.706927','2020-05-08 14:46:59.295350',NULL,'fg.jpg',1,14),(2,1010,'Pizza frango com Catupiry',15,'Frango, catupiry, mussarela e cebola.',0,1,'2020-05-08 13:26:33.063292','2020-05-08 13:26:54.585884','[\"pizza-de-frango-com-catupiry.jpg\"]','pizza-de-frango.catupiry.jpg',NULL,NULL),(3,1020,'Pizza de Carne de Sol',15,'Carne de sol, mussarela e cebola.',0,1,'2020-05-08 13:27:43.275760','2020-05-08 13:29:12.561433','[\"3623806_x720.jpg\"]','carne.de.sol.jpg',NULL,NULL),(4,1030,'Pizza Mista',15,'Mussarela, presunto e cebola.',0,1,'2020-05-08 13:28:42.409639','2020-05-08 13:28:42.409639',NULL,'mista.jpg',NULL,NULL),(5,1040,'Pizza Portuguesa',15,'Mussarela, ovo, presunto, tomate e cebola.',0,1,'2020-05-08 13:37:45.239014','2020-05-08 13:37:45.239014','[\"pizza-portuguesa.jpeg\"]','pizza-portuguesa.jpg',NULL,NULL),(6,1050,'Pizza Mussarela',15,'Mussarela, azeitona, orégano e cebola',0,1,'2020-05-08 13:39:37.200120','2020-05-08 13:39:37.200120',NULL,'mussarela.jpg',NULL,NULL),(7,1060,'Pizza Calabresa',15,'Calabresa, mussarela, tomate e cebola.',0,1,'2020-05-08 13:41:08.799961','2020-05-08 13:41:08.799961','[\"calabresa_e_mussarela.jpg\"]','calabresa.jpg',NULL,NULL),(8,1070,'Pizza dios queijos',15,'Queijo mussarela, queijo qualho, azeitona e cebola.',0,1,'2020-05-08 13:50:12.575937','2020-05-08 13:50:12.575937',NULL,'pizza-2-queijos.jpg',NULL,NULL),(9,1080,'Pizza Bolonhesa',15,'Carne moída, mussarela e cebola.',0,1,'2020-05-08 13:54:06.526040','2020-05-08 13:54:06.526040','[\"bolonhesa2.jpg\"]','bolonhesa.jpg',NULL,NULL),(10,1090,'Pizza HotDog',15,'Salsicha, mussarela e cebola.',0,1,'2020-05-08 13:56:18.790577','2020-05-08 13:56:18.790577',NULL,'pizza.hotdog.jpg',NULL,NULL),(11,1100,'Pizza de Arraia',15,'Carne de Arraia, mussarela, azeitona e cebola.',0,1,'2020-05-08 13:59:02.953017','2020-05-08 13:59:02.953017',NULL,'arraia.jpg',NULL,NULL),(12,1110,'Pizza de Bacon',15,'Bacon, mussarela, azeitona e cebola.',0,1,'2020-05-08 14:00:48.187680','2020-05-08 14:00:48.187680',NULL,'pizza-bacon.jpg',NULL,NULL),(13,1120,'Pizza a Moda',15,'Calabresa, presunto, frango, mussarela e cebola',0,1,'2020-05-08 14:03:24.434669','2020-05-08 14:03:24.434669','[\"amoda2.jpg\"]','amoda.jpg',NULL,NULL),(14,1130,'Pizza Vegetáriana',15,'Tomate, cebola, mussarela, azeitona e orégano.',0,1,'2020-05-08 14:06:46.076319','2020-05-08 14:06:46.076319','[\"vegetariana2.jpg\"]','vegetariana.jpg',NULL,NULL),(15,1140,'Pizza Marguerita',15,'Mussarela, manjericão, tomate, azeitona e cebola.',0,1,'2020-05-08 14:09:38.543465','2020-05-08 14:09:38.543465',NULL,'Pizza_marguerita.jpg',NULL,NULL),(16,1150,'Pizza Pepperoni',15,'Pepperoni, mussarela e cebola.',0,1,'2020-05-08 14:11:45.102938','2020-05-08 14:11:45.102938',NULL,'pepperoni.jpg',NULL,NULL),(17,1160,'Pizza Catucheddar',15,'Catupiry, cheddar e cebola.',0,1,'2020-05-08 14:13:50.391709','2020-05-08 14:13:50.391709',NULL,'catucheddar.jpg',NULL,NULL),(18,1170,'Pizza Basca',15,'Mussarela e cebola.',0,1,'2020-05-08 14:15:32.013866','2020-05-08 14:15:32.013866','[\"basca2.png\"]','basca.png',NULL,NULL),(19,1180,'Pizza de Chocolate',15,'Chocolate e mussarela.',0,1,'2020-05-08 14:18:04.951074','2020-05-08 14:18:04.951074',NULL,'chocolate2.jpg',NULL,NULL),(20,1190,'Pizza de Chocolate branco',15,'Chocolate Branco e mussarela.',0,1,'2020-05-08 14:20:12.902552','2020-05-08 14:20:12.902552','[\"choco.branco.jpg\"]','chocolate.branco.jpg',NULL,NULL),(21,1200,'Pizza de Doce de Leite',15,'Doce de leite e mussarela.',0,1,'2020-05-08 14:22:10.411232','2020-05-08 14:22:10.411232',NULL,'doce.de.leite.png',NULL,NULL),(22,1210,'Coca-Cola 1L',5,'Coca-cola Pet de 1lt descartável.',0,2,'2020-05-09 17:35:37.711521','2020-05-09 17:36:50.156461',NULL,'coca-cola1lt.png',0,NULL),(23,1220,'Coca-Cola 2L',10,'Coca-Cola Pet de 2 litros.',0,2,'2020-05-09 17:41:33.366281','2020-05-09 17:41:33.366281',NULL,'REFRIGERANTE-COCA-COLA-2-LITROS.jpg',0,NULL),(24,1230,'Pastel Médio',6,'Pastel Médio com 8 recheios a sua escolha.',0,3,'2020-05-09 17:45:08.004318','2020-05-09 17:45:08.004318',NULL,'pastele.jpg',0,NULL),(25,1240,'Pastel Grande',10,'Pastel Grande com 8 recheios a sua escolha.',0,3,'2020-05-09 17:46:32.117847','2020-05-09 17:46:32.117847',NULL,'pastel.g.jpg',0,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20200506235343'),('20200506235641'),('20200507001917'),('20200507002156'),('20200507002347'),('20200507014911'),('20200507180102'),('20200507230017'),('20200508002444'),('20200508005505'),('20200508005647'),('20200508011739'),('20200508011836'),('20200508143118'),('20200508143204');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `obs` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jean Lima',1,0,NULL,'2020-05-08 13:21:00.683008','2020-05-08 13:21:00.683008','jeandgardany@hotmail.com','$2a$11$s7PbFj2a5RYHcDSIxcK2LOfCSsjY0DhCZIG4HzLn7EQ3.fUkVvYkC',NULL,NULL,NULL),(2,'José Maurício',1,0,NULL,'2020-05-08 13:21:00.860001','2020-05-08 13:21:00.860001','madellypizza@gmail.com','$2a$11$os1.eV7Xzq0V4ACTwrvGSeGTzp1Rq41bZnMCLtW8v6BA.R/jhgQ6m',NULL,NULL,NULL);
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

-- Dump completed on 2020-05-10 10:06:08
