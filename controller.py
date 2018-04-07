import view
import model
from tkinter import *
import util

class Controller:
    def __init__(self, root):
        self.model = model.Model()
        self.view = view.Window(root)
        self.text_to_display = ""
        self.view.e1.config(textvariable=self.model.username)
        self.view.e2.config(textvariable=self.model.password)
        self.view.ok.config(command=self.get_user_password)
        self.view.quit_button.config(command=self.client_exit)
        self.view.show_cards.config(command=self.display(util.showAllCards()))
        self.view.show_arenas.config(command=self.display(util.showAllArenas()))
        #self.view.show_chests.config(command=self.display(util.showAllChests()))


    def get_user_password(self):
        self.model.accessDB()
        # self.view.ok.config(visible="no")


    def client_exit(self):
        exit()

    def display(self, comm):
        self.text_to_display = self.model.get_table(comm)
        self.view.text.insert(END, self.text_to_display)


if __name__ == "__main__":
    root = Tk()
    root.geometry("700x500")
    app = Controller(root)
    root.mainloop()
