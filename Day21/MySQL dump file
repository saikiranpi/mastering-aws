CREATE DATABASE  IF NOT EXISTS `myflixdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `myflixdb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: myflixdb
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `director` varchar(150) DEFAULT NULL,
  `year_released` year(4) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `fk_Movies_Categories1` (`category_id`),
  KEY `title_index` (`title`),
  KEY `qw` (`title`),
  CONSTRAINT `fk_Movies_Categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Pirates of the Caribean 4',' Rob Marshall',2011,1),(2,'Forgetting Sarah Marshal','Nicholas Stoller',2008,2),(3,'X-Men',NULL,2008,NULL),(4,'Code Name Black','Edgar Jimz',2010,NULL),(5,'Daddy\'s Little Girls',NULL,2007,8),(6,'Angels and Demons',NULL,2007,6),(7,'Davinci Code',NULL,2007,6),(9,'Honey mooners','John Schultz',2005,8),(16,'67% Guilty',NULL,2012,NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_number` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `amount_paid` float DEFAULT NULL,
  `external_reference_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `fk_Payments_Members1` (`membership_number`),
  CONSTRAINT `fk_Payments_Members1` FOREIGN KEY (`membership_number`) REFERENCES `members` (`membership_number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'2012-07-23','Movie rental payment',2500,11),(2,1,'2012-07-25','Movie rental payment',2000,12),(3,3,'2012-07-30','Movie rental payment',6000,NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `membership_number` int(11) NOT NULL AUTO_INCREMENT,
  `full_names` varchar(350) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `physical_address` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(75) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`membership_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Janet Jones','Female','1980-07-21','First Street Plot No 4','Private Bag','0759 253 542','janetjones@yagoo.cm'),(2,'Janet Smith Jones','Female','1980-06-23','Melrose 123',NULL,NULL,'jj@fstreet.com'),(3,'Robert Phil','Male','1989-07-12','3rd Street 34',NULL,'12345','rm@tstreet.com'),(4,'Gloria Williams','Female','1984-02-14','2nd Street 23',NULL,NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `accounts_v_members`
--

DROP TABLE IF EXISTS `accounts_v_members`;
/*!50001 DROP VIEW IF EXISTS `accounts_v_members`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `accounts_v_members` (
  `membership_number` int(11),
  `full_names` varchar(350),
  `gender` varchar(6)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `general_v_movie_rentals`
--

DROP TABLE IF EXISTS `general_v_movie_rentals`;
/*!50001 DROP VIEW IF EXISTS `general_v_movie_rentals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `general_v_movie_rentals` (
  `membership_number` int(11),
  `full_names` varchar(350),
  `title` varchar(300),
  `transaction_date` date,
  `return_date` date
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(150) DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Comedy','Movies with humour'),(2,'Romantic','Love stories'),(3,'Epic','Story acient movies'),(4,'Horror',NULL),(5,'Science Fiction',NULL),(6,'Thriller',NULL),(7,'Action',NULL),(8,'Romantic Comedy',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movierentals`
--

DROP TABLE IF EXISTS `movierentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movierentals` (
  `reference_number` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `membership_number` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `movie_returned` bit(1) DEFAULT b'0',
  PRIMARY KEY (`reference_number`),
  KEY `fk_MovieRentals_Members1` (`membership_number`),
  KEY `fk_MovieRentals_Movies1` (`movie_id`),
  CONSTRAINT `fk_MovieRentals_Members1` FOREIGN KEY (`membership_number`) REFERENCES `members` (`membership_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_MovieRentals_Movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movierentals`
--

LOCK TABLES `movierentals` WRITE;
/*!40000 ALTER TABLE `movierentals` DISABLE KEYS */;
INSERT INTO `movierentals` VALUES (11,'2012-06-20',NULL,1,1,'\0'),(12,'2012-06-22','2012-06-25',1,2,'\0'),(13,'2012-06-22','2012-06-25',3,2,'\0'),(14,'2012-06-21','2012-06-24',2,2,'\0'),(15,'2012-06-23',NULL,3,3,'\0');
/*!40000 ALTER TABLE `movierentals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `accounts_v_members`
--

/*!50001 DROP TABLE IF EXISTS `accounts_v_members`*/;
/*!50001 DROP VIEW IF EXISTS `accounts_v_members`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `accounts_v_members` AS select `members`.`membership_number` AS `membership_number`,`members`.`full_names` AS `full_names`,`members`.`gender` AS `gender` from `members` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `general_v_movie_rentals`
--

/*!50001 DROP TABLE IF EXISTS `general_v_movie_rentals`*/;
/*!50001 DROP VIEW IF EXISTS `general_v_movie_rentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `general_v_movie_rentals` AS select `mb`.`membership_number` AS `membership_number`,`mb`.`full_names` AS `full_names`,`mo`.`title` AS `title`,`mr`.`transaction_date` AS `transaction_date`,`mr`.`return_date` AS `return_date` from ((`movierentals` `mr` join `members` `mb` on((`mr`.`membership_number` = `mb`.`membership_number`))) join `movies` `mo` on((`mr`.`movie_id` = `mo`.`movie_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-07 18:37:36
