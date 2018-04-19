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
INSERT INTO `arena` VALUES ('Training Camp',0,'0',0),('Goblin Stadium',5,'0',1),('Bone Pit',7,'400',2),('Barbarian Bowl',9,'800',3),('P.E.K.K.A.\'s Playhouse',11,'1100',4),('Spell Valley',12,'1400',5),('Builder\'s Workshop',14,'1700',6),('Royal Arena',15,'2000',7),('Frozen Peak',16,'2300',8),('Jungle Arena',18,'2600',9),('Hog Mountain',20,'3000',10),('Electro Valley',22,'3400',11),('Legendary Arena',24,'3800',12);
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
  CONSTRAINT `fk_cardsInDecks_cards1` FOREIGN KEY (`cardName`) REFERENCES `card` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cardsInDecks_decks1` FOREIGN KEY (`deckName`) REFERENCES `deck` (`deckName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardsindecks`
--

LOCK TABLES `cardsindecks` WRITE;
/*!40000 ALTER TABLE `cardsindecks` DISABLE KEYS */;
INSERT INTO `cardsindecks` VALUES ('newDeck','Archers'),('sampledeck','archers'),('deckA','arrows'),('newDeck','Arrows'),('newDeck','Baby Dragon'),('deckA','bandit'),('newDeck','Bandit'),('deckB','Barbarian Hut'),('deckA','Bats'),('deckB','bomb tower'),('newDeck','Bomber'),('deckB','Cannon Cart'),('deckA','Clone'),('deckB','Dark Prince'),('deckB','Executioner'),('newDeck','Fireball'),('deckA','Freeze'),('deckA','giant');
/*!40000 ALTER TABLE `cardsindecks` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chest`
--

LOCK TABLES `chest` WRITE;
/*!40000 ALTER TABLE `chest` DISABLE KEYS */;
INSERT INTO `chest` VALUES ('Wooden Chest',24,1,0,0,0,1),('Silver Chest',21,1,0,0,0,2),('Golden Chest',70,1,1,0,0,3),('Crown Chest',160,1,2,0,0,4),('Magical Chest',300,1,6,1,0,5),('Giant Chest',210,1,14,0,0,6),('Super Magical Chest',1620,1,36,6,0,7),('Epic Chest',0,1,0,6,0,8),('Legendary Chest',0,1,0,0,1,9),('Lightning Chest',410,1,13,1,0,10),('Fortune Chest',1100,1,32,5,0,11),('King\'s Chest',2900,1,48,16,0,12),('Wooden Chest',32,2,0,0,0,13),('Silver Chest',28,2,0,0,0,14),('Golden Chest',98,2,1,0,0,15),('Crown Chest',216,2,2,0,0,16),('Magical Chest',410,2,8,1,0,17),('Giant Chest',285,2,19,0,0,18),('Super Magical Chest',2187,2,48,8,0,19),('Epic Chest',0,2,0,8,0,20),('Legendary Chest',0,2,0,0,1,21),('Lightning Chest',430,2,14,1,0,22),('Fortune Chest',1200,2,34,5,0,23),('King\'s Chest',3200,2,50,16,0,24),('Wooden Chest',40,3,0,0,0,25),('Silver Chest',35,3,0,0,0,26),('Golden Chest',119,3,1,0,0,27),('Crown Chest',272,3,3,0,0,28),('Magical Chest',510,3,10,1,0,29),('Giant Chest',357,3,23,0,0,30),('Super Magical Chest',2754,3,61,10,0,31),('Epic Chest',0,3,0,10,0,32),('Legendary Chest',0,3,0,0,1,33),('Lightning Chest',450,3,13,1,0,34),('Fortune Chest',1200,3,35,5,0,35),('King\'s Chest',3100,3,52,16,0,36),('Wooden Chest',48,4,0,0,0,37),('Silver Chest',42,4,0,0,0,38),('Golden Chest',140,4,2,0,0,39),('Crown Chest',320,4,4,0,0,40),('Magical Chest',600,4,12,2,0,41),('Giant Chest',420,4,28,0,0,42),('Super Magical Chest',3240,4,72,12,0,43),('Epic Chest',0,4,0,12,0,44),('Legendary Chest',0,4,0,0,1,45),('Lightning Chest',470,4,15,1,0,46),('Fortune Chest',1300,4,37,6,0,47),('King\'s Chest',3200,4,54,18,0,48),('Wooden Chest',56,5,0,0,0,49),('Silver Chest',49,5,0,0,0,50),('Golden Chest',161,5,2,0,0,51),('Crown Chest',368,5,4,0,0,52),('Magical Chest',690,5,13,2,0,53),('Giant Chest',483,5,32,0,0,54),('Super Magical Chest',3726,5,82,13,0,55),('Epic Chest',0,5,0,13,0,56),('Legendary Chest',0,5,0,0,1,57),('Lightning Chest',490,5,16,1,0,58),('Fortune Chest',1400,5,38,6,0,59),('King\'s Chest',3400,5,56,18,0,60),('Wooden Chest',64,6,0,0,0,61),('Silver Chest',56,6,0,0,0,62),('Golden Chest',182,6,2,0,0,63),('Crown Chest',416,6,5,0,0,64),('Magical Chest',780,6,15,2,0,65),('Giant Chest',546,6,36,0,0,66),('Super Magical Chest',4212,6,93,15,0,67),('Epic Chest',0,6,0,15,0,68),('Legendary Chest',0,6,0,0,1,69),('Lightning Chest',510,6,16,2,0,70),('Fortune Chest',1400,6,40,6,0,71),('King\'s Chest',3500,6,58,19,0,72),('Wooden Chest',72,7,0,0,0,73),('Silver Chest',63,7,0,0,0,74),('Golden Chest',203,7,2,0,0,75),('Crown Chest',464,7,5,0,0,76),('Magical Chest',870,7,17,2,0,77),('Giant Chest',609,7,40,0,0,78),('Super Magical Chest',4698,7,104,17,0,79),('Epic Chest',0,7,0,17,0,80),('Legendary Chest',0,7,0,0,1,81),('Lightning Chest',530,7,17,2,0,82),('Fortune Chest',1500,7,42,7,0,83),('Legendary King\'s Chest',3600,7,60,20,1,84),('Wooden Chest',80,8,1,0,0,85),('Silver Chest',70,8,0,0,0,86),('Golden Chest',224,8,3,0,0,87),('Crown Chest',512,8,6,0,0,88),('Magical Chest',960,8,19,3,0,89),('Giant Chest',672,8,44,0,0,90),('Super Magical Chest',5184,8,115,19,0,91),('Epic Chest',0,8,0,19,0,92),('Legendary Chest',0,8,0,0,1,93),('Lightning Chest',550,8,18,2,0,94),('Fortune Chest',1500,8,43,7,0,95),('Legendary King\'s Chest',3700,8,62,20,1,96),('Wooden Chest',88,9,1,0,0,97),('Silver Chest',77,9,0,0,0,98),('Golden Chest',245,9,3,0,0,99),('Crown Chest',560,9,7,0,0,100),('Magical Chest',1050,9,21,3,0,101),('Giant Chest',735,9,49,0,0,102),('Super Magical Chest',5670,9,126,21,0,103),('Epic Chest',0,9,0,20,0,104),('Legendary Chest',0,9,0,0,1,105),('Lightning Chest',570,9,18,2,0,106),('Fortune Chest',1600,9,45,7,0,107),('Legendary King\'s Chest',3800,9,64,21,1,108),('Wooden Chest',96,10,1,0,0,109),('Silver Chest',84,10,1,0,0,110),('Golden Chest',266,10,3,0,0,111),('Crown Chest',608,10,7,0,0,112),('Magical Chest',1140,10,22,3,0,113),('Giant Chest',798,10,53,0,0,114),('Super Magical Chest',6156,10,136,22,0,115),('Epic Chest',0,10,0,20,0,116),('Legendary Chest',0,10,0,0,1,117),('Lightning Chest',590,10,19,2,0,118),('Fortune Chest',1600,10,46,7,0,119),('Legendary King\'s Chest',4000,10,66,22,1,120),('Wooden Chest',104,11,1,0,0,121),('Silver Chest',91,11,1,0,0,122),('Golden Chest',287,11,4,0,0,123),('Crown Chest',656,11,8,0,0,124),('Magical Chest',1230,11,24,4,0,125),('Giant Chest',861,11,57,0,0,126),('Super Magical Chest',6642,11,147,24,0,127),('Epic Chest',0,11,0,20,0,128),('Legendary Chest',0,11,0,0,1,129),('Lightning Chest',610,11,20,2,0,130),('Fortune Chest',1700,11,48,8,0,131),('Legendary King\'s Chest',4100,11,68,22,1,132),('Wooden Chest',112,12,1,0,0,133),('Silver Chest',98,12,1,0,0,134),('Golden Chest',308,12,4,0,0,135),('Crown Chest',704,12,8,0,0,136),('Magical Chest',1320,12,26,4,0,137),('Giant Chest',924,12,61,0,0,138),('Super Magical Chest',7128,12,158,26,0,139),('Epic Chest',0,12,0,20,0,140),('Legendary Chest',0,12,0,0,1,141),('Season Reward Chest',2121,12,50,10,0,142),('Season Reward Chest',3171,12,75,15,0,143),('Season Reward Chest',4221,12,100,20,0,144),('Season Reward Chest',5271,12,125,25,0,145),('Season Reward Chest',6321,12,150,30,0,146),('Season Reward Chest',7371,12,175,35,0,147),('Season Reward Chest',8421,12,200,40,0,148),('Season Reward Chest',9471,12,225,45,0,149),('Season Reward Chest',10521,12,250,50,0,150),('Lightning Chest',630,12,20,2,0,151),('Fortune Chest',1800,12,50,8,0,152),('Legendary King\'s Chest',4200,12,70,23,1,153);
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
INSERT INTO `deck` VALUES ('deckA'),('deckB'),('newDeck'),('sampledeck');
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
INSERT INTO `player` VALUES (1,20,2400,50),(2,50,2568,53),(3,100,2736,57),(4,200,2904,60),(5,400,3096,64),(6,1000,3312,69),(7,2000,3528,73),(8,5000,3768,78),(9,10000,4008,83),(10,30000,4392,91),(11,40000,4824,100),(12,80000,5304,110),(13,0,5832,121);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clash_royale'
--

--
-- Dumping routines for database 'clash_royale'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_card_to_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_card_to_deck`(deck_name VARCHAR(30), card_name VARCHAR(30))
BEGIN
    INSERT INTO cardsindecks (deckName,cardName)
    VALUES (deck_name,card_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_deck`(deck_name VARCHAR(30))
BEGIN
    INSERT INTO deck (deckName)
    VALUES (deck_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `clear_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clear_deck`(deck_name VARCHAR(30))
BEGIN	
    DELETE FROM cardsindecks
    WHERE deckName = deck_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_cards_from_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_cards_from_deck`(deck_name VARCHAR(30))
BEGIN
    SELECT c.name, c.rarity, c.type, c.elixirCost, c.order FROM
    (SELECT * FROM cardsindecks LEFT JOIN card on cardsindecks.cardName = card.name) as c
    WHERE deckName = deck_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_card_from_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_card_from_deck`(deck_name VARCHAR(30), card_name VARCHAR(30))
BEGIN
    DELETE FROM cardsindecks
    WHERE deckName = deck_name and cardName = card_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_deck`(deck_name VARCHAR(30))
BEGIN	
    DELETE FROM deck
    WHERE deckName = deck_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_all_arenas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_all_arenas`()
BEGIN
SELECT * FROM arena;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_all_cards` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_all_cards`()
BEGIN
SELECT * FROM card;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_all_chests` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_all_chests`()
BEGIN
SELECT * FROM chest;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_all_decks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_all_decks`()
BEGIN
SELECT * FROM deck;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `show_all_players` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_all_players`()
BEGIN
SELECT * FROM player;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_deck_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_deck_name`(old_name VARCHAR(30), new_name VARCHAR(30))
BEGIN
	UPDATE deck
    SET deckName = new_name
    WHERE deckName = old_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-19 13:39:49
