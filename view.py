
from tkinter import *

class Window(Frame):

    def __init__(self, master=None):
        Frame.__init__(self, master)
        self.master = master
        self.master.title("CLASH ROYALE")
        self.grid()
        for r in range(10):
            self.master.rowconfigure(r, weight=1)
        for c in range(40):
            self.master.columnconfigure(c, weight=1)
        self.init_window()

    def init_window(self):
        self.login_frame = Frame(self.master)
        self.login_frame.grid(row=0, column=0, rowspan=1, columnspan=1, sticky=N)
        self.entry_text = Label(self.login_frame, text="USERNAME: ")
        self.entry_text.grid(row=0)
        self.entry_text2 = Label(self.login_frame, text="PASSWORD: ")
        self.entry_text2.grid(row=1)
        for r in range(1):
            self.login_frame.rowconfigure(r, weight=1)
        for c in range(1):
            self.login_frame.columnconfigure(c, weight=1)
        self.ok = Button(self.login_frame, text="LOGIN")
        self.ok.grid(row=2, column=2, sticky=E + W)
        self.e1 = Entry(self.login_frame, width=7)
        self.e1.grid(row=0, column=1, sticky=W)
        self.e2 = Entry(self.login_frame, width=7, show="*")
        self.e2.grid(row=1, column=1, sticky=W)

        # read buttons frame

        self.read_frame = Frame(self.master)
        self.read_frame.grid(row=2, column=0, rowspan=1, columnspan=3, sticky=N)
        self.read_frame.rowconfigure(0, weight=1)
        for c in range(3):
            self.read_frame.columnconfigure(c, weight=1)
        self.show_arenas = Button(self.read_frame, text="ARENAS")
        self.show_arenas.grid(row=0,column=0,sticky=W + E + N + S)
        self.show_chests = Button(self.read_frame, text="CHESTS")
        self.show_chests.grid(row=0,column=1,sticky=W + E + N + S)
        self.show_player = Button(self.read_frame, text="PLAYER")
        self.show_player.grid(row=0,column=2,sticky=W + E + N + S)
        self.show_deck = Button(self.read_frame, text="DECKS")
        self.show_deck.grid(row=0,column=3,sticky=W + E + N + S)
        self.show_cards = Button(self.read_frame, text="CARDS")
        self.show_cards.grid(row=0,column=4,sticky=W + E + N + S)

        # write frame
        self.write_frame = Frame(self.master)
        self.write_frame.grid(row=0, column=9, rowspan=3, columnspan=3, sticky=W + E + N + S)
        for r in range(5):
            self.write_frame.rowconfigure(r, weight=1)
        for c in range(7):
            self.write_frame.columnconfigure(c, weight=1)
        self.enter_deck = Label(self.write_frame, text="ENTER DECK: ")
        self.enter_deck.grid(row=0,sticky=W + E + N + S)
        self.add_rem_deck = Entry(self.write_frame, width=10)
        self.add_rem_deck.grid(row=1,column=0,sticky=W + E + N + S)
        self.deck_add = Button(self.write_frame, text="ADD DECK")
        self.deck_add.grid(row=2,column=1,sticky=W + E + N + S)
        self.deck_remove = Button(self.write_frame, text="DELETE DECK")
        self.deck_remove.grid(row=3,column=1,sticky=W + E + N + S)
        self.enter_deck = Label(self.write_frame, text="ENTER DECK AND CARD: ")
        self.enter_deck.grid(row=4,sticky=W + E + N + S)
        self.change_deck = Entry(self.write_frame, width=10)
        self.change_deck.grid(row=5,column=0,sticky=W + E + N + S)
        self.change_card = Entry(self.write_frame, width=10)
        self.change_card.grid(row=5,column=1,sticky=W + E + N + S)
        self.card_add = Button(self.write_frame, text="ADD CARD")
        self.card_add.grid(row=6,column=1,sticky=W + E + N + S)
        self.card_rem = Button(self.write_frame, text="REMOVE CARD")
        self.card_rem.grid(row=7,column=1,sticky=W + E + N + S)
        self.enter_deck = Label(self.write_frame, text="ENTER OLD DECK NAME AND NEW DECK NAME: ")
        self.enter_deck.grid(row=8)
        self.oldDeckName = Entry(self.write_frame, width=10)
        self.oldDeckName.grid(row=9,column=0,sticky=W + E + N + S)
        self.newDeckName = Entry(self.write_frame, width=10)
        self.newDeckName.grid(row=9,column=1,sticky=W + E + N + S)
        self.updateDeckNameButton = Button(self.write_frame, text="UPDATE DECK NAME")
        self.updateDeckNameButton.grid(row=10, column=1, sticky=W + E + N + S)

        # show cards
        self.show_cards_frame = Frame(self.master)
        self.show_cards_frame.grid(row=0, column=3, rowspan=1, columnspan=3, sticky=W + E + N + S)
        for r in range(1):
            self.show_cards_frame.rowconfigure(r, weight=1)
        for c in range(3):
            self.show_cards_frame.columnconfigure(c, weight=1)
        self.show_current_deck = Button(self.show_cards_frame, text="SHOW CARDS")
        self.show_current_deck.grid(row=1, column=1, sticky=W + E)
        self.cur_deck = Entry(self.show_cards_frame, width=10)
        self.cur_deck.grid(row=1, column=0, sticky=W + E)
        self.show_notif = Text(self.show_cards_frame, height=1, width=40, state=DISABLED)
        self.show_notif.grid(row=0)

        # show all text
        self.show_all_text = Frame(self.master)
        self.show_all_text.grid(row=3, column=0, rowspan=3, columnspan=6, sticky=W + E + N + S)
        for r in range(3):
            self.show_all_text.rowconfigure(r, weight=1)
        for c in range(6):
            self.show_all_text.columnconfigure(c, weight=1)
        self.text = Text(self.show_all_text, height=10, width=80, state=DISABLED)
        self.text.grid(row=0, column=0)

        # show cards text
        self.show_cards_text = Frame(self.master)
        self.show_cards_text.grid(row=1, column=3, rowspan=1, columnspan=5, sticky=W + E + N + S)
        for r in range(1):
            self.show_cards_text.rowconfigure(r, weight=1)
        for c in range(3):
            self.show_cards_text.columnconfigure(c, weight=1)
        self.cards_in_deck = Text(self.show_cards_text, height=8, width=60, state=DISABLED)
        self.cards_in_deck.grid(row=0, column=0)
        #
        # #notif panel
        # self.notif_frame = Frame(self.master, bg="red")
        # self.notif_frame.grid(row=0, column=3, rowspan=1, columnspan=2, sticky=W + E + N + S)
        # for r in range(1):
        #     self.notif_frame.rowconfigure(r, weight=1)
        # for c in range(3):
        #     self.notif_frame.columnconfigure(c, weight=1)
        # self.show_notif = Text(self.notif_frame, height=1, width=40, state=DISABLED)
        # self.show_notif.grid(row=0)

