USE clash_royale;

DROP PROCEDURE IF EXISTS show_all_players;
DELIMITER $$
CREATE PROCEDURE show_all_players ()
BEGIN
SELECT * FROM player;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS show_all_chests;
DELIMITER $$
CREATE PROCEDURE show_all_chests ()
BEGIN
SELECT * FROM chest;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS show_all_cards;
DELIMITER $$
CREATE PROCEDURE show_all_cards ()
BEGIN
SELECT * FROM card;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS show_all_arenas;
DELIMITER $$
CREATE PROCEDURE show_all_arenas ()
BEGIN
SELECT * FROM arena;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS show_all_decks;
DELIMITER $$
CREATE PROCEDURE show_all_decks ()
BEGIN
SELECT * FROM deck;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS get_cards_from_deck;
DELIMITER $$
CREATE PROCEDURE get_cards_from_deck 
(deck_name VARCHAR(30))
BEGIN
    SELECT c.name, c.rarity, c.type, c.elixirCost, c.order FROM
    (SELECT * FROM cardsindecks LEFT JOIN card on cardsindecks.cardName = card.name) as c
    WHERE deckName = deck_name;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS add_card_to_deck;
DELIMITER $$
CREATE PROCEDURE add_card_to_deck
(deck_name VARCHAR(30), card_name VARCHAR(30))
BEGIN
    INSERT INTO cardsindecks (deckName,cardName)
    VALUES (deck_name,card_name);
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS remove_card_from_deck;
DELIMITER $$
CREATE PROCEDURE remove_card_from_deck
(deck_name VARCHAR(30), card_name VARCHAR(30))
BEGIN
    DELETE FROM cardsindecks
    WHERE deckName = deck_name and cardName = card_name;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS add_deck;
DELIMITER $$
CREATE PROCEDURE add_deck
(deck_name VARCHAR(30))
BEGIN
    INSERT INTO deck (deckName)
    VALUES (deck_name);
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS remove_deck;
DELIMITER $$
CREATE PROCEDURE remove_deck
(deck_name VARCHAR(30))
BEGIN	
    DELETE FROM deck
    WHERE deckName = deck_name;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS clear_deck;
DELIMITER $$
CREATE PROCEDURE clear_deck
(deck_name VARCHAR(30))
BEGIN	
    DELETE FROM cardsindecks
    WHERE deckName = deck_name;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS update_deck_name;
DELIMITER $$
CREATE PROCEDURE update_deck_name
(old_name VARCHAR(30), new_name VARCHAR(30))
BEGIN
	UPDATE deck
    SET deckName = new_name
    WHERE deckName = old_name;
END $$
DELIMITER ;

call update_deck_name('asd','asdf');
select * from deck;
select * from cardsindecks;