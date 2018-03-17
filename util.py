import pymysql.cursors

connection = pymysql.connect(host = "localhost",
                            user = "user",
                            password = "password",
                            db="",
                            charset="utf8mb4",
                            cursorclass=pymysql.cursors.DictCursor)


def getCardsFromDeck(deck,cardName):
    """SELECT * FROM DECK LEFT JOIN CARD on"""


def addCardtoDeck(deck,card):

def removeCardfromDeck(deck,card):

def addDeck(deck):

def removeDeck(deck):
