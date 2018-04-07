def showAllPlayers():
    output = """
    SELECT * FROM player;
    """
    return output

def showAllChests():
    output = """
    SELECT * FROM chest;
    """
    return output;

def showAllCards():
    output = """
    SELECT * FROM card;
    """
    return output

def showAllArenas():
    output = """
    SELECT * FROM arena;
    """
    return output

def getCardsFromDeck(deckName):
    output = """
    SELECT c.name, c.rarity, c.type, c.elixirCost, c.order FROM
    (SELECT * FROM cardsindecks LEFT JOIN card on cardsindecks.cardName = card.name) as c
    WHERE deckName = '{}';
    """.format(deckName)
    return output

def addCardtoDeck(deckName,cardName):
    output = """
    INSERT INTO cardsindecks (deckName,cardName)
    VALUES ('{}','{}');
    """.format(deckName,cardName)
    return output

def removeCardfromDeck(deckName,cardName):
    output = """
    DELETE FROM cardsindecks
    WHERE deckName = '{}' and cardName = '{}';
    """.format(deckName,cardName)
    return output

def addDeck(deckName):
    output = """
    INSERT INTO deck (deckName)
    VALUES ('{}');
    """.format(deckName)
    return output

def removeDeck(deckName):
    output = """
    DELETE FROM deck
    WHERE deckName = '{}';
    """.format(deckName)
    return output

def clearDeck(deckName):
    output = """
    DELETE FROM cardsindecks
    WHERE deckName = '{}';
    """.format(deckName)
    return output

if __name__ == '__main__':
    print(addDeck('deck1'))
    print(removeDeck('deck1'))
    print(addCardtoDeck('deck1','archers'))
    print(removeCardfromDeck('deck1','archers'))
    print(showAllCards())
    print(getCardsFromDeck('deck1'))
    print(clearDeck('deck1'))
