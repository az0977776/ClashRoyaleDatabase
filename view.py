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
        frame2 = Frame(self, relief=RAISED, borderwidth=1)
        frame2.pack(fill=X, expand=True)
        self.pack(fill=BOTH, expand=1)

        self.ok = Button(self, text="LOGIN")
        self.show_cards = Button(self, text="CARDS")
        self.text = Text(self, height=30, width=100, state=DISABLED)
        self.show_arenas = Button(self, text="ARENAS")
        self.show_chests = Button(self, text="CHESTS")
        self.show_player = Button(self, text="PLAYER")
        self.show_deck = Button(self, text="DECKS")

        # read only display
        # self.show_cards.place(x=30,y=50)
        self.ok.place(x=300, y=2)
        self.text.place(x=20, y=80)
        # self.show_arenas.place(x=100, y=50)
        # self.show_chests.place(x=180, y=50)
        # self.show_player.place(x=260, y=50)
        # self.show_deck.place(x=340, y=50)
        self.show_arenas.pack(side=LEFT)
        self.show_chests.pack(side=LEFT)
        self.show_player.pack(side=LEFT)
        self.show_deck.pack(side=LEFT)
        self.show_cards.pack(side=LEFT)

        # adding/removing decks
        self.deck_add = Button(self, text="ADD DECK")
        self.deck_remove = Button(self, text="DELETE DECK")
        self.deck_add.place(x=600, y=50)
        self.deck_remove.place(x=700, y=50)
        self.add_rem_deck = Entry(self.master, width=10)
        self.add_rem_deck.place(x=650, y=80)

        # add/remove card
        self.card_add = Button(self, text="ADD CARD")
        self.card_rem = Button(self, text="REMOVE CARD")
        self.card_add.place(x=600, y=110)
        self.card_rem.place(x=750, y=110)
        self.change_deck = Entry(self.master, width=10)
        self.change_deck.place(x=600, y=140)
        self.change_card = Entry(self.master, width=10)
        self.change_card.place(x=750, y=140)

        # show deck
        self.show_current_deck = Button(self, text="SHOW CARDS")
        self.show_current_deck.place(x=600, y=200)
        self.cur_deck = Entry(self.master, width=10)
        self.cur_deck.place(x=600, y=230)
        self.cards_in_deck = Text(self, height=30, width=40, state=DISABLED)
        self.cards_in_deck.place(x=600, y=250)



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
