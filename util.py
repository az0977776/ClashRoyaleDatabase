import pymysql.cursors

connection = pymysql.connect(host = "localhost",
                            user = "user",
                            password = "password",
                            db="",
                            charset="utf8mb4",
                            cursorclass=pymysql.cursors.DictCursor)


def getCardsFromDeck(deck):
    query = """
            SELECT ... FROM deck
            LEFT JOIN (
            SELECT * FROM cardsInDeck
            LEFT JOIN
            card ON cardsInDeck.cardName = card.name
            ) AS c
            ON deck.name = c.deckName
            WHERE deckName = %s
            """
    cursor.execute(query,(deck))


def addCardtoDeck(deck,card):

def removeCardfromDeck(deck,card):
    query = """

            """


def addDeck(deck):
    query = """
            INSERT into deck VALUES (%s)
            """
    cursor.execute(query,(deck))

def removeDeck(deck):
    query = """
            DELETE * FROM deck WHERE name = %s
            """
    cursor.execute(query, (deck))
