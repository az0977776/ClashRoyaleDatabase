CREATE DATABASE  IF NOT EXISTS `clash_royale` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `clash_royale`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: clash_royale
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
INSERT INTO `arena` VALUES ('Training Camp',0,'0',0),('Goblin Stadium',5,'0',1),('Bone Pit',7,'400',2),('Barbarian Bowl',9,'800',3),('P.E.K.K.A.\'s Playhouse',11,'1100',4),('Spell Valley',12,'1400',5),('Builder\'s Workshop',14,'1700',6),('Royal Arena',15,'2000',7),('Frozen Peak',16,'2300',8),('Jungle Arena',18,'2600',9),('Hog Mountain',20,'3000',10),('Electro Valley',22,'3400',11);
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
  `card_order` int(11) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_cards_arena1_idx` (`card_order`),
  CONSTRAINT `fk_cards` FOREIGN KEY (`card_order`) REFERENCES `arena` (`order`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES ('Archers','Common','Troop',3,0),('Arrows','Common','Spell',3,0),('Baby Dragon','Epic','Troop',4,0),('Balloon','Epic','Troop',5,2),('Bandit','Legendary','Troop',3,9),('Barbarian Hut','Rare','Building',7,3),('Barbarians','Common','Troop',5,3),('Bats','Common','Troop',2,8),('Battle Ram','Rare','Troop',4,6),('Bomb Tower','Rare','Building',5,2),('Bomber','Common','Troop',3,0),('Bowler','Epic','Troop',5,8),('Cannon','Common','Building',3,3),('Cannon Cart','Epic','Troop',5,10),('Clone','Epic','Spell',3,8),('Dark Prince','Epic','Troop',4,7),('Dart Goblin','Rare','Troop',3,9),('Electro Wizard','Legendary','Troop',4,7),('Elite Barbarians','Common','Troop',6,7),('Elixir Collector','Rare','Building',6,6),('Executioner','Epic','Troop',5,9),('Fire Spirits','Common','Troop',2,5),('Fireball','Rare','Spell',4,0),('Flying Machine','Rare','Troop',4,9),('Freeze','Epic','Spell',4,4),('Furnace','Rare','Building',4,5),('Giant','Rare','Troop',5,0),('Giant Skeleton','Epic','Troop',6,2),('Goblin Barrel','Epic','Spell',3,1),('Goblin Gang','Common','Troop',3,9),('Goblin Hut','Rare','Building',5,1),('Goblins','Common','Troop',2,1),('Golem','Epic','Troop',8,6),('Graveyard','Legendary','Spell',5,5),('Guards','Epic','Troop',3,7),('Heal','Rare','Spell',3,10),('Hog Rider','Rare','Troop',4,4),('Hunter','Epic','Troop',4,9),('Ice Golem','Rare','Troop',2,8),('Ice Spirit','Common','Troop',1,8),('Ice Wizard','Legendary','Troop',3,5),('Inferno Dragon','Legendary','Troop',4,4),('Inferno Tower','Rare','Building',5,4),('Knight','Common','Troop',3,0),('Lava Hound','Legendary','Troop',7,4),('Lightning','Epic','Spell',6,1),('Lumberjack','Legendary','Troop',4,8),('Magic Archer','Legendary','Troop',4,1),('Mega Knight','Legendary','Troop',7,10),('Mega Minion','Rare','Troop',3,7),('Miner','Legendary','Troop',3,6),('Mini P.E.K.K.A.','Rare','Troop',4,0),('Minion Horde','Common','Troop',5,4),('Minions','Common','Troop',3,2),('Mirror','Epic','Spell',0,5),('Mortar','Common','Building',4,6),('Musketeer','Rare','Troop',4,0),('Night Witch','Legendary','Troop',4,8),('P.E.K.K.A.','Epic','Troop',7,4),('Poison','Epic','Spell',4,5),('Prince','Epic','Troop',5,0),('Princess','Legendary','Troop',3,7),('Rage','Epic','Spell',2,3),('Rocket','Rare','Spell',6,3),('Royal Ghost','Legendary','Troop',3,10),('Royal Giant','Common','Troop',6,7),('Skeleton Army','Epic','Troop',3,0),('Skeleton Barrel','Common','Troop',3,6),('Skeletons','Common','Troop',1,2),('Sparky','Legendary','Troop',6,6),('Spear Goblins','Common','Troop',2,1),('Tesla','Common','Building',4,4),('The Log','Legendary','Spell',2,6),('Three Musketeers','Rare','Troop',9,7),('Tombstone','Rare','Building',3,2),('Tornado','Epic','Spell',3,6),('Valkyrie','Rare','Troop',4,1),('Witch','Epic','Troop',5,0),('Wizard','Rare','Troop',5,5),('X-Bow','Epic','Building',6,3),('Zap','Common','Spell',2,5),('Zappies','Rare','Troop',4,11);
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardsindecks`
--

DROP TABLE IF EXISTS `cardsindecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardsindecks` (
  `deckName` varchar(45) NOT NULL,
  `cardName` varchar(45) NOT NULL,
  PRIMARY KEY (`deckName`,`cardName`),
  KEY `fk_cardsInDecks_cards1_idx` (`cardName`),
  KEY `fk_cardsInDecks_decks1_idx` (`deckName`),
  CONSTRAINT `fk_cardsInDecks_cards1` FOREIGN KEY (`cardName`) REFERENCES `card` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cardsInDecks_decks1` FOREIGN KEY (`deckName`) REFERENCES `deck` (`d_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardsindecks`
--

LOCK TABLES `cardsindecks` WRITE;
/*!40000 ALTER TABLE `cardsindecks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardsindecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deck`
--

DROP TABLE IF EXISTS `deck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deck` (
  `d_name` varchar(45) NOT NULL,
  PRIMARY KEY (`d_name`)
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
-- Dumping events for database 'clash_royale'
--

--
-- Dumping routines for database 'clash_royale'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-17 12:53:53
