CREATE DATABASE  IF NOT EXISTS `my_cricket_profile` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_cricket_profile`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: my_cricket_profile
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cricket_match`
--

DROP TABLE IF EXISTS `cricket_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cricket_match` (
  `id` int NOT NULL,
  `team1_fk` int DEFAULT NULL,
  `team2_fk` int DEFAULT NULL,
  `winning_team_fk` int DEFAULT NULL,
  `mom_fk` int DEFAULT NULL,
  `tournament_fk` int DEFAULT NULL,
  `match_type` varchar(45) DEFAULT NULL,
  `scorecard_fk` int DEFAULT NULL,
  `match_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mom_idx` (`mom_fk`),
  KEY `FK53w1uswv1qu44ogyhjcuxni3j` (`scorecard_fk`),
  KEY `FKd0ibfywk86919vmuvhnq5ucpl` (`tournament_fk`),
  KEY `FKstuv2qvp020mirbuqn22nnktp` (`team1_fk`),
  KEY `FK78xrvu4fm2qlnhrhcyb2057lt` (`team2_fk`),
  KEY `FKkneq6idf58jow67e012w585qy` (`winning_team_fk`),
  CONSTRAINT `FK53w1uswv1qu44ogyhjcuxni3j` FOREIGN KEY (`scorecard_fk`) REFERENCES `scorecard` (`id`),
  CONSTRAINT `FK78xrvu4fm2qlnhrhcyb2057lt` FOREIGN KEY (`team2_fk`) REFERENCES `team` (`id`),
  CONSTRAINT `FK80sjbcavqg7vdspymxy3tiwuj` FOREIGN KEY (`mom_fk`) REFERENCES `user` (`id`),
  CONSTRAINT `FKd0ibfywk86919vmuvhnq5ucpl` FOREIGN KEY (`tournament_fk`) REFERENCES `tournament` (`id`),
  CONSTRAINT `FKkneq6idf58jow67e012w585qy` FOREIGN KEY (`winning_team_fk`) REFERENCES `team` (`id`),
  CONSTRAINT `FKstuv2qvp020mirbuqn22nnktp` FOREIGN KEY (`team1_fk`) REFERENCES `team` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 23:28:29
