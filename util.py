from sqlalchemy import create_engine
import sys
from tabulate import tabulate


def getCardsFromDeck(deckID):
    


def addCardtoDeck(deckID,cardID):


def removeCardfromDeck(deckID,cardID):



def addDeck(deckID):


def removeDeck(deckID):



if __name__ == '__main__':
    while(1):
        try:
            # prompts username and password
            #username = input('Enter your username: ')
            #password = getpass('Password for ' + username + ': ')
            username = 'root'
            password = 'root'

            # Connection settings
            settings = {
                'userName': username,           # The name of the MySQL account to use (or empty for anonymous)
                'password': password,           # The password for the MySQL account (or empty for anonymous)
                'serverName': "localhost",    # The name of the computer running MySQL
                'portNumber': 3306,           # The port of the MySQL server (default is 3306)
                'dbName': "lotrfinalwanga",             # The name of the database we are testing with (this default is installed with MySQL)
            }

            # Connect to the database
            conn = create_engine('mysql://{0[userName]}:{0[password]}@{0[serverName]}:{0[portNumber]}/{0[dbName]}'.format(settings))

            # if this does not work then the connection failed
            conn.execute("show tables")
            break;
        except:
            # exit on failure to connect
            print('Invalid credentials\n')

    print('Connected to database\n')
