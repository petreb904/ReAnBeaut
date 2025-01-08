-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: reanbeauty
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourites` (
  `id` int NOT NULL,
  `watched_at` datetime DEFAULT NULL,
  `rutin_id1` int NOT NULL,
  `products_id` int NOT NULL,
  `users_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_favourites_rutin1_idx` (`rutin_id1`),
  KEY `fk_favourites_products1_idx` (`products_id`),
  KEY `fk_favourites_users1_idx` (`users_id`),
  CONSTRAINT `fk_favourites_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk_favourites_rutin1` FOREIGN KEY (`rutin_id1`) REFERENCES `rutin` (`id`),
  CONSTRAINT `fk_favourites_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` text,
  `summary` text,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_review`
--

DROP TABLE IF EXISTS `products_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_review` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `comment` text,
  `like` int DEFAULT NULL,
  `watched_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `products_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `products_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_review`
--

LOCK TABLES `products_review` WRITE;
/*!40000 ALTER TABLE `products_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutin`
--

DROP TABLE IF EXISTS `rutin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutin` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rutin_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image_video` text,
  `summary` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `rutin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutin`
--

LOCK TABLES `rutin` WRITE;
/*!40000 ALTER TABLE `rutin` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutin_review`
--

DROP TABLE IF EXISTS `rutin_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutin_review` (
  `id` int NOT NULL,
  `rutin_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `comment` text,
  `like` int DEFAULT NULL,
  `watched_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `rutin_id` (`rutin_id`),
  CONSTRAINT `rutin_review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `rutin_review_ibfk_2` FOREIGN KEY (`rutin_id`) REFERENCES `rutin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutin_review`
--

LOCK TABLES `rutin_review` WRITE;
/*!40000 ALTER TABLE `rutin_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutin_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `email` varchar(319) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `password` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2025-01-08  9:36:45
