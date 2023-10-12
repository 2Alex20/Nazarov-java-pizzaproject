--create database cafe;
--DROP TABLE IF EXISTS `cafe`; CREATE TABLE `cafe` (`id` int(11) NOT NULL AUTO_INCREMENT,`name` varchar(255) DEFAULT NULL,`city` varchar(255) DEFAULT NULL,`address` varchar(255) DEFAULT NULL,`email` varchar(255) DEFAULT NULL,`phone` varchar(255) DEFAULT NULL,`open_at` datetime(6) DEFAULT NULL,`close_at` datetime(6) DEFAULT NULL, PRIMARY KEY (`id`), KEY `address` (`address`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--DROP TABLE IF EXISTS `pizza`; CREATE TABLE `pizza` (`id` int(11) NOT NULL AUTO_INCREMENT,`name` varchar(255) DEFAULT NULL,`size` varchar(16) DEFAULT NULL,`key_ingredients` varchar(255) DEFAULT NULL,`price` DECIMAL(10,2) DEFAULT 0,`cafe_id` int(11), PRIMARY KEY (`id`), KEY `name` (`name`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: cafe
-- ------------------------------------------------------
-- Server version	8.1.0


--
-- Table structure for table `cafe`
--

DROP TABLE IF EXISTS `cafe`;
CREATE TABLE `cafe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `open_at` datetime(6) DEFAULT NULL,
  `close_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address` (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cafe`
--

LOCK TABLES `cafe` WRITE;
INSERT INTO `cafe` VALUES (1,'Cafe1','Odessa','Koroleva 123','a@i.ua','+380 98 123 45 56','2023-10-10 7:17:17', '2023-10-10 19:22:33');
INSERT INTO `cafe` VALUES (2,'Cafe2','Kiyv','Kreshatik 234','a2@i.ua','+380 66 55 77 123','2023-12-12 8:00:17', '2023-12-12 17:30:00');
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
CREATE TABLE `pizza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(16) DEFAULT NULL,
  `key_ingredients` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `cafe_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
INSERT INTO `pizza` VALUES (1,'Margarita_XL','XL','cheese plain','12','1');
INSERT INTO `pizza` VALUES (2,'Margarita_L','L','cheese plain','10','1');
INSERT INTO `pizza` VALUES (3,'Neapol_L','L','cheese, tomat','15','1');
INSERT INTO `pizza` VALUES (4,'Spring_L','L','cheese, tomat, chery','13','2');
INSERT INTO `pizza` VALUES (5,'Tees_XL','XL','cheese, mocarella','18','2');
UNLOCK TABLES;


-- Dump completed on 2023-10-12 23:43:27
