import view
import model
from tkinter import *
import util



class Controller:
    def __init__(self, root):
        self.view = view.Window(root)
        self.model = model.Model()
        self.text_to_display = ""
        self.current_deck = ""
        self.view.e1.config(textvariable=self.model.username)
        self.view.e2.config(textvariable=self.model.password)
        self.view.ok.config(command=self.get_user_password)
        self.view.add_rem_deck.config(textvariable=self.model.rem_add_deck)
        self.view.deck_add.config(command=self.addDeck)
        self.view.deck_remove.config(command=self.removeDeck)
        self.view.change_deck.config(textvariable=self.model.change_deck)
        self.view.change_card.config(textvariable=self.model.change_card)
        self.view.card_rem.config(command=self.removeCard)
        self.view.card_add.config(command=self.addCard)
        self.view.show_current_deck.config(command=self.displayDeck)
        self.view.cur_deck.config(textvariable=self.model.cur_deck)

    def get_user_password(self):
        self.model.accessDB()
        self.view.show_cards.config(command=self.displayCards)
        self.view.show_arenas.config(command=self.displayArenas)
        self.view.show_chests.config(command=self.displayChests)
        self.view.show_player.config(command=self.displayPlayer)
        self.view.show_deck.config(command=self.displayDecks)

    def displayDeck(self):
        self.current_deck = self.model.getCurDeck()
        self.view.cards_in_deck.config(state=NORMAL)
        self.view.cards_in_deck.delete('1.0', END)
        self.view.cards_in_deck.insert(END, self.current_deck)
        self.view.cards_in_deck.config(state=DISABLED)

    def removeDeck(self):
        self.model.removeDeck()

    def addDeck(self):
        self.model.addDeck()

    def display(self, comm):
        self.text_to_display = self.model.get_table(comm)
        self.view.text.config(state=NORMAL)
        self.view.text.delete('1.0', END)
        self.view.text.insert(END, self.text_to_display)
        self.view.text.config(state=DISABLED)

    def displayDecks(self):
        self.display(util.showAllDecks())

    def displayCards(self):
        self.display(util.showAllCards())

    def displayArenas(self):
        self.display(util.showAllArenas())

    def displayPlayer(self):
        self.display(util.showAllPlayers())

    def displayChests(self):
        self.display(util.showAllChests())

    def addCard(self):
        self.model.addCard()

    def removeCard(self):
        self.model.removeCard()


if __name__ == "__main__":
    root = Tk()
    root.geometry("800x500")
    app = Controller(root)
    root.mainloop()
