SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema clash_royale
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `clash_royale` DEFAULT CHARACTER SET utf8 ;
USE `clash_royale` ;

-- -----------------------------------------------------
-- Table `clash_royale`.`arena`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clash_royale`.`arena` (
  `name` VARCHAR(45) NOT NULL,
  `victoryGold` INT NOT NULL,
  `minTrophies` VARCHAR(45) NOT NULL,
  `order` INT NOT NULL,
  PRIMARY KEY (`order`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `clash_royale`.`card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clash_royale`.`card` (
  `name` VARCHAR(45) NOT NULL,
  `rarity` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `elixirCost` INT NOT NULL,
  `card_order` INT NOT NULL,
  PRIMARY KEY (`name`),
  INDEX `fk_cards_arena1_idx` (`card_order` ASC),
  CONSTRAINT `fk_cards`
    FOREIGN KEY (`card_order`)
    REFERENCES `clash_royale`.`arena` (`order`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `clash_royale`.`deck`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clash_royale`.`deck` (
  `d_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`d_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `clash_royale`.`cardsInDecks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clash_royale`.`cardsInDecks` (
  `deckName` VARCHAR(45) NOT NULL,
  `cardName` VARCHAR(45) NOT NULL,
  INDEX `fk_cardsInDecks_cards1_idx` (`cardName` ASC),
  INDEX `fk_cardsInDecks_decks1_idx` (`deckName` ASC),
  PRIMARY KEY (`deckName`, `cardName`),
  CONSTRAINT `fk_cardsInDecks_cards1`
    FOREIGN KEY (`cardName`)
    REFERENCES `clash_royale`.`card` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cardsInDecks_decks1`
    FOREIGN KEY (`deckName`)
    REFERENCES `clash_royale`.`deck` (`d_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

