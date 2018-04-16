def showAllPlayers():
    output = """
    CALL show_all_players();
    """
    return output

def showAllChests():
    output = """
    CALL show_all_chests();
    """
    return output;

def showAllCards():
    output = """
    CALL show_all_cards();
    """
    return output

def showAllArenas():
    output = """
    CALL show_all_arenas();
    """
    return output

def showAllDecks():
    output = """
    CALL show_all_decks();
    """
    return output

def getCardsFromDeck(deckName):
    output = """
    CALL get_cards_from_deck('{}');
    """.format(deckName)
    return output

def addCardtoDeck(deckName,cardName):
    output = """
    CALL add_card_to_deck('{}','{}');
    """.format(deckName,cardName)
    return output

def removeCardfromDeck(deckName,cardName):
    output = """
    CALL remove_card_from_deck('{}','{}');
    """.format(deckName,cardName)
    return output

def addDeck(deckName):
    output = """
    CALL add_deck('{}');
    """.format(deckName)
    return output

def removeDeck(deckName):
    output = """
    CALL remove_deck('{}');
    """.format(deckName)
    return output

def clearDeck(deckName):
    output = """
    CALL clear_deck('{}');
    """.format(deckName)
    return output

def updateDeckName(oldName, newName):
    output = """
    CALL update_deck_name('{}','{}');
    """.format(oldName,newName)
    return output

if __name__ == '__main__':
    print(addDeck('deck1'))
    print(removeDeck('deck1'))
    print(addCardtoDeck('deck1','archers'))
    print(removeCardfromDeck('deck1','archers'))
    print(showAllCards())
    print(getCardsFromDeck('deck1'))
    print(clearDeck('deck1'))
