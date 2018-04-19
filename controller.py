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
        self.view.show_cards.config(command=self.displayCards)
        self.view.show_arenas.config(command=self.displayArenas)
        self.view.show_chests.config(command=self.displayChests)
        self.view.show_player.config(command=self.displayPlayer)
        self.view.show_deck.config(command=self.displayDecks)
        self.view.updateDeckNameButton.config(command=self.update_DeckName)
        self.view.oldDeckName.config(textvariable=self.model.oldDeckName)
        self.view.newDeckName.config(textvariable=self.model.newDeckName)

    def get_user_password(self):
        try:
            self.model.accessDB()
            self.show_notif("Logged in")
        except:
            self.show_notif("Unable to Login")

    def displayDeck(self):
        try:
            self.current_deck = self.model.getCurDeck()
            self.view.cards_in_deck.config(state=NORMAL)
            self.view.cards_in_deck.delete('1.0', END)
            self.view.cards_in_deck.insert(END, self.current_deck)
            self.view.cards_in_deck.config(state=DISABLED)
        except:
            self.show_notif("Unable to get cards from deck")

    def removeDeck(self):
        try:
            self.model.removeDeck()
            self.show_notif("Deck removed")
        except:
            self.show_notif("Unable to remove deck")

    def addDeck(self):
        try:
            self.model.addDeck()
            self.show_notif("Deck added")
        except:
            self.show_notif("Unable to add deck")

    def display(self, comm):
        self.text_to_display = self.model.get_table(comm)
        self.view.text.config(state=NORMAL)
        self.view.text.delete('1.0', END)
        self.view.text.insert(END, self.text_to_display)
        self.view.text.config(state=DISABLED)


    def show_notif(self,text):
        self.view.show_notif.config(state=NORMAL)
        self.view.show_notif.delete('1.0', END)
        self.view.show_notif.insert(END, text)
        self.view.show_notif.config(state=DISABLED)

    def displayDecks(self):
        try:
            self.display(util.showAllDecks())
        except:
            self.show_notif("Unable to get decks")

    def displayCards(self):
        try:
            self.display(util.showAllCards())
        except:
            self.show_notif("Unable to get cards")

    def displayArenas(self):
        try:
            self.display(util.showAllArenas())
        except:
            self.show_notif("Unable to get arenas")

    def displayPlayer(self):
        try:
            self.display(util.showAllPlayers())
        except:
            self.show_notif("Unable to get players")

    def displayChests(self):
        try:
            self.display(util.showAllChests())
        except:
            self.show_notif("Unable to get chests")

    def addCard(self):
        try:
            self.model.addCard()
            self.show_notif("Card added")
        except:
            self.show_notif("Unable to add card")


    def removeCard(self):
        try:
            self.model.removeCard()
            self.show_notif("Card removed")
        except:
            self.show_notif("Unable to remove card")


    def update_DeckName(self):
        try:
            self.model.updateDeckName()
            self.show_notif("Deck name updated")
        except:
            self.show_notif("Could not update deck name")


if __name__ == "__main__":
    root = Tk()
    root.geometry("800x500")
    app = Controller(root)
    root.mainloop()
