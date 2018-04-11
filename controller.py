import view
import model
from tkinter import *
import util



class Controller:
    def __init__(self, root):
        self.view = view.Window(root)
        self.model = model.Model()
        self.text_to_display = ""
        self.view.e1.config(textvariable=self.model.username)
        self.view.e2.config(textvariable=self.model.password)
        self.view.ok.config(command=self.get_user_password)
        self.view.quit_button.config(command=self.client_exit)

    def get_user_password(self):
        self.model.accessDB()
        self.view.show_cards.config(command=self.displayCards)
        self.view.show_arenas.config(command=self.displayArenas)
        self.view.show_chests.config(command=self.displayChests)
        self.view.show_player.config(command=self.displayPlayer)

        # self.view.ok.config(visible="no")


    def client_exit(self):
        exit()

    def display(self, comm):
        self.text_to_display = self.model.get_table(comm)
        self.view.text.delete('1.0', END)
        self.view.text.insert(END, self.text_to_display)

    def displayCards(self):
        self.display(util.showAllCards())

    def displayArenas(self):
        self.display(util.showAllArenas())

    def displayPlayer(self):
        self.display(util.showAllPlayers())

    def displayChests(self):
        self.display(util.showAllChests())


if __name__ == "__main__":
    root = Tk()
    root.geometry("800x500")
    app = Controller(root)
    root.mainloop()
