import tkinter
from tkinter import *

class Window(Frame):

    def __init__(self, master=None):
        Frame.__init__(self, master)
        self.master = master

        self.init_window()

    def init_window(self):
        self.get_username()
        self.get_password()

        self.master.title("CLASH ROYALE")
        self.pack(fill=BOTH, expand=1)

        self.ok = Button(self, text="LOGIN")
        self.quit_button = Button(self, text="Exit")
        self.show_cards = Button(self, text="CARDS")
        self.text = Text(self, height=30, width=100, state=DISABLED)
        self.show_arenas = Button(self, text="ARENAS")
        self.show_chests = Button(self, text="CHESTS")
        self.show_player = Button(self, text="PLAYER")

        self.show_cards.place(x=30,y=50)
        self.ok.place(x=300, y=2)
        self.quit_button.place(x=650, y=2)
        self.text.place(x=20, y=80)
        self.show_arenas.place(x=100, y=50)
        self.show_chests.place(x=180, y=50)
        self.show_player.place(x=260, y=50)

        # adding/removing decks
        self.deck_add = Button(self, text="Add Deck")
        self.deck_remove = Button(self, text="Delete Deck")
        self.deck_add.place(x=400, y=50)
        self.deck_remove.place(x=470, y=50)
        self.decks = Text(self, height=30, width=30)
        self.decks.place(x=300,y=80)

        # cards in a deck
        self.card_add = Button(self,text="Add Card")
        self.card_delete = Button(self,text="Delete Card")
        self.cards = Text(self, height=30, width=30)


    def get_username(self):
        entry_text = Label(self.master, text="USERNAME: ")
        entry_text.place(x=30, y=2)
        self.e1 = Entry(self.master, width=7)
        self.e1.place(x=200, y=2)
        entry_text.focus()

    def get_password(self):
        entry_text = Label(self.master, text="PASSWORD: ")
        entry_text.place(x=30, y=21)
        self.e2 = Entry(self.master, width=7, show="*")
        self.e2.place(x=200, y=24)
        entry_text.focus()
