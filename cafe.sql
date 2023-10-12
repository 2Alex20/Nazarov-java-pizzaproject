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
UNLOCK TABLES;


-- Dump completed on 2023-10-12 23:43:27
