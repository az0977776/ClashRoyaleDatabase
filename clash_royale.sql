CREATE DATABASE  IF NOT EXISTS `clash_royale` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `clash_royale`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: localhost    Database: clash_royale
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `arena`
--

DROP TABLE IF EXISTS `arena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arena` (
  `name` varchar(45) NOT NULL,
  `victoryGold` int(11) NOT NULL,
  `minTrophies` varchar(45) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena`
--

LOCK TABLES `arena` WRITE;
/*!40000 ALTER TABLE `arena` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `name` varchar(45) NOT NULL,
  `rarity` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `elixirCost` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_cards_arena1_idx` (`order`),
  CONSTRAINT `fk_cards_arena1` FOREIGN KEY (`order`) REFERENCES `arena` (`order`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardsInDecks`
--

DROP TABLE IF EXISTS `cardsInDecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardsInDecks` (
  `deckName` varchar(45) NOT NULL,
  `cardName` varchar(45) NOT NULL,
  PRIMARY KEY (`deckName`,`cardName`),
  KEY `fk_cardsInDecks_cards1_idx` (`cardName`),
  KEY `fk_cardsInDecks_decks1_idx` (`deckName`),
  CONSTRAINT `fk_cardsInDecks_cards1` FOREIGN KEY (`cardName`) REFERENCES `card` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cardsInDecks_decks1` FOREIGN KEY (`deckName`) REFERENCES `deck` (`deckName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardsInDecks`
--

LOCK TABLES `cardsInDecks` WRITE;
/*!40000 ALTER TABLE `cardsInDecks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardsInDecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chest`
--

DROP TABLE IF EXISTS `chest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chest` (
  `name` varchar(45) NOT NULL,
  `gold` int(11) NOT NULL,
  `arena` int(11) NOT NULL,
  `rare` int(11) NOT NULL,
  `epic` int(11) NOT NULL,
  `legendary` int(11) NOT NULL,
  `chestId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`chestId`),
  KEY `fk_chest_arena1_idx` (`arena`),
  CONSTRAINT `fk_chest_arena1` FOREIGN KEY (`arena`) REFERENCES `arena` (`order`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chest`
--

LOCK TABLES `chest` WRITE;
/*!40000 ALTER TABLE `chest` DISABLE KEYS */;
/*!40000 ALTER TABLE `chest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deck`
--

DROP TABLE IF EXISTS `deck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deck` (
  `deckName` varchar(45) NOT NULL,
  PRIMARY KEY (`deckName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deck`
--

LOCK TABLES `deck` WRITE;
/*!40000 ALTER TABLE `deck` DISABLE KEYS */;
/*!40000 ALTER TABLE `deck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `level` int(11) NOT NULL,
  `maxExp` int(11) NOT NULL,
  `hitpoints` int(11) NOT NULL,
  `damage` int(11) NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-07 15:57:26
