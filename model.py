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
        self.oldDeckName = tk.StringVar()
        self.newDeckName = tk.StringVar()

    def accessDB(self):
        self.datab = pymysql.connect("localhost", str(self.username.get()), str(self.password.get()), "clash_royale")
        self.cursor = self.datab.cursor()


    def get_table(self, comm):
        self.cursor.execute(comm)
        num_fields = len(self.cursor.description)
        field_names = [i[0] for i in self.cursor.description]
        table = []
        for row in self.cursor:
            table += [row]
        return tabulate(table,headers=field_names)


    def removeDeck(self):
        self.cursor.execute(util.removeDeck(self.rem_add_deck.get()))
        self.datab.commit()


    def addDeck(self):
        self.cursor.execute(util.addDeck(self.rem_add_deck.get()))
        self.datab.commit()

    def addCard(self):
        self.cursor.execute(util.addCardtoDeck(self.change_deck.get(), self.change_card.get()))
        self.datab.commit()

    def removeCard(self):
        self.cursor.execute(util.removeCardfromDeck(self.change_deck.get(), self.change_card.get()))
        self.datab.commit()

    def getCurDeck(self):
        self.cursor.execute(util.getCardsFromDeck(self.cur_deck.get()))
        num_fields = len(self.cursor.description)
        field_names = [i[0] for i in self.cursor.description]
        table = []
        for row in self.cursor:
            table += [row]
        return tabulate(table,headers=field_names)

    def updateDeckName(self):
        self.cursor.execute(util.updateDeckName(self.oldDeckName.get(),self.newDeckName.get()))
        self.datab.commit()
