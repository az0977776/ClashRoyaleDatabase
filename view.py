from tkinter import *
import model

class Window(Frame):

    def __init__(self, master=None):
        self.password = "default password"
        self.username = "default username"
        Frame.__init__(self, master)
        self.master = master

        self.init_window()

    def init_window(self):
        self.username = StringVar()
        self.password = StringVar()

        self.get_username()
        self.get_password()

        self.master.title("CLASH ROYALE")
        self.pack(fill=BOTH, expand=1)

        self.ok = Button(self, text="OK")
        self.quit_button = Button(self, text="Exit")
        self.show_cards = Button(self, text="SHOW CARDS")
        self.all_cards = Text(self, height=30, width=50)

        self.ok.place(x=450, y=2)
        self.quit_button.place(x=650, y=2)
        self.show_cards.place(x=20, y=50)
        self.all_cards.place(x=20, y=70)

    def get_username(self):
        entry_text = Label(self.master, text="USERNAME: ")
        entry_text.place(x=30, y=2)
        self.e1 = Entry(self.master, width=7)
        self.e1.place(x=200, y=2)
        entry_text.focus()

    def get_password(self):
        entry_text = Label(self.master, text="PASSWORD: ")
        entry_text.place(x=30, y=21)
        self.e2 = Entry(self.master, width=7)
        self.e2.place(x=200, y=24)
        entry_text.focus()
