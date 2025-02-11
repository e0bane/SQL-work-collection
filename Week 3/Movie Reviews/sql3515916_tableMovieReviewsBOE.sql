-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: sql3.freesqldatabase.com    Database: sql3515916
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.12.04.1

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
-- Table structure for table `tableMovieReviewsBOE`
--

DROP TABLE IF EXISTS `tableMovieReviewsBOE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tableMovieReviewsBOE` (
  `movieReviewID` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(45) NOT NULL,
  `movieDescription` varchar(100) NOT NULL,
  `movieReview` varchar(1000) NOT NULL,
  PRIMARY KEY (`movieReviewID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableMovieReviewsBOE`
--

LOCK TABLES `tableMovieReviewsBOE` WRITE;
/*!40000 ALTER TABLE `tableMovieReviewsBOE` DISABLE KEYS */;
INSERT INTO `tableMovieReviewsBOE` VALUES (1,'Aladdin','A kind-hearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power','I fell asleep the wrong way watching this. The unexpectedly long runtime caught me by surprise. Acting is ok, Will Smith is very present in the movie and that works. Fun for a Sunday sleepy afternoon. Overall 5/10 just because they could\'ve done it better.'),(2,'It Chapter Two','Twenty-seven years after their first encounter with the terrifying Pennywise, the Losers Club have g','I personally didn\'t enjoy IT 2017 so I didn\'t have much hope for part 2 but I was expecting them to at least tone down the CGI instead they went overkill with it no imagination used here just in your face flashy CGI effects that look fake and plastic the only thing frightening about this movie is that sadly because it made money at the box office more Stephen King books are going to get remakes and it won\'t be long before we get an all CGI Maximum Overdrive movie remake.\nThere are more scenes with Pennywise transforming and creating twisted ways to mess with the returning losers club members but sadly they are all done with CGI and are all standard copy and paste scenes from the original mini series and when the movie finally gets to it\'s climax the makers of this \'Horror Movie\' think by simply making Pennywise bigger it instills more fear into the audience when really all it does is scream CGI and all the suspence is watered down to bigger pixels on screen than there where before \'Ter'),(3,'Joker','A mentally troubled stand-up comedian embarks on a downward spiral that leads to the creation of an ','I get why some people hate this . It\'s because of the political message and how some people think that you need get empathy for Arthur\'s madness. But come on that is not the point and it will never be. Enjoy this masterpiece because Joaquin Phoenix and Todd Phillips overdid themselves with this movie . The acting,music and cinematography are just amazing ! Please enjoy the movie without overthinking it.'),(4,'Dolemite Is My Name','Eddie Murphy portrays real-life legend Rudy Ray Moore, a comedy and rap pioneer who proved naysayers','Murphy finally makes a come back with this movie I found it very funny think everyone will enjoy it to'),(5,'Anna','Beneath Anna Poliatova\'s striking beauty lies a secret that will unleash her indelible strength and ','Entertaining, lots of twists and turns, never quite sure what\'s next or where it\'s going, but the ride\'s good, especially the 4 leads. Almost didn\'t rent due to some bad reviews here, I guess sometimes good to trust the positive ones');
/*!40000 ALTER TABLE `tableMovieReviewsBOE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27 11:53:44
