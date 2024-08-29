-- ---------------------------------------- 
-- --        CLEAR DOWN THE TABLE        -- 
-- ---------------------------------------- 
TRUNCATE TABLE `item_required_target`; 
-- ---------------------------------------- 
-- MySQL dump 10.13  Distrib 5.5.37, for Win32 (x86)
--
-- Host: localhost    Database: mangos0
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@SESSION.TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `item_required_target`
--

LOCK TABLES `item_required_target` WRITE;
/*!40000 ALTER TABLE `item_required_target` DISABLE KEYS */;
INSERT INTO `item_required_target` (`entry`, `type`, `targetEntry`) VALUES 
(3912,1,2530),
(4479,1,2762),
(4480,1,2761),
(4481,1,2760),
(8149,2,7318),
(9328,1,7977),
(9606,2,7584),
(9618,2,2927),
(9618,2,2928),
(9618,2,2929),
(9618,2,7808),
(9619,2,5300),
(9619,2,5304),
(9619,2,5305),
(9619,2,5306),
(9620,2,5276),
(9620,2,5278),
(9621,2,5357),
(9621,2,5358),
(9621,2,14604),
(9621,2,14640),
(11914,2,7086),
(11948,2,7092),
(11953,2,6556),
(11953,2,6557),
(11953,2,6559),
(12647,1,4678),
(12647,1,4681),
(12647,1,4685),
(15826,1,12296),
(15826,1,12298),
(15908,1,1196),
(15911,1,1126),
(15913,1,1201),
(15914,1,2956),
(15915,1,2959),
(15916,1,2970),
(15917,1,3099),
(15919,1,3107),
(15920,1,3126),
(15921,1,1998),
(15922,1,2043),
(15923,1,1996),
(22432,1,6498),
(22432,1,6499),
(22432,1,6500);
/*!40000 ALTER TABLE `item_required_target` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-29 21:58:33
