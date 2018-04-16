import pymysql
import tkinter as tk
from tabulate import tabulate
import util


class Model:
    datab = None
    cursor = None

    def __init__(self):
        self.username = tk.StringVar()
        self.password = tk.StringVar()
        self.rem_add_deck = tk.StringVar()
        self.change_deck = tk.StringVar()
        self.change_card = tk.StringVar()
        self.cur_deck = tk.StringVar()

    def accessDB(self):
        try:
            self.datab = pymysql.connect("localhost", str(self.username.get()), str(self.password.get()), "clash_royale")
            self.cursor = self.datab.cursor()
        except:
            print("unable to login")

    def get_table(self, comm):
        try:
            self.cursor.execute(comm)
            num_fields = len(self.cursor.description)
            field_names = [i[0] for i in self.cursor.description]
            table = []
            for row in self.cursor:
                table += [row]

            return tabulate(table,headers=field_names)
        except pymysql.err.IntegrityError as error:
            code, message = error.args
            print(code, message)
        except:
            print("unable to get table")

    def removeDeck(self):
        try:
            self.cursor.execute(util.removeDeck(self.rem_add_deck.get()))
            self.datab.commit()
        except pymysql.err.IntegrityError as error:
            code, message = error.args
            print(code, message)
        except:
            print("unable to remove deck")

    def addDeck(self):
        try:
            self.cursor.execute(util.addDeck(self.rem_add_deck.get()))
            self.datab.commit()
        except pymysql.err.IntegrityError as error:
            code, message = error.args
            print(code, message)
        except:
            print("unable to add deck")

    def addCard(self):
        try:
            self.cursor.execute(util.addCardtoDeck(self.change_deck.get(), self.change_card.get()))
            self.datab.commit()
        except pymysql.err.IntegrityError as error:
            code, message = error.args
            print(code, message)
        except:
            print("unable to add card")

    def removeCard(self):
        try:
            self.cursor.execute(util.removeCardfromDeck(self.change_deck.get(), self.change_card.get()))
            self.datab.commit()
        except pymysql.err.IntegrityError as error:
            code, message = error.args
            print(code, message)
        except:
            print("unable to add deck")

    def getCurDeck(self):
        try:
            self.cursor.execute(util.getCardsFromDeck(self.cur_deck.get()))
            num_fields = len(self.cursor.description)
            field_names = [i[0] for i in self.cursor.description]
            table = []
            for row in self.cursor:
                table += [row]

            return tabulate(table,headers=field_names)
        except pymysql.err.IntegrityError as error:
            code, message = error.args
            print(code, message)
        except:
            print("unable to get cards from deck")
