import view
import model
from tkinter import *


class Controller:
    def __init__(self, root):
        self.model = model.Model()
        self.view = view.Window(root)
        self.all_cards = ""
        self.view.e1.config(textvariable=self.model.username)
        self.view.e2.config(textvariable=self.model.password)
        self.view.ok.config(command=self.get_user_password)
        self.view.quit_button.config(command=self.client_exit)


    def get_user_password(self):
        self.model.accessDB()
        self.view.ok.config(visible="no")

        self.all_cards = self.model.show_cards()
        self.view.all_cards.insert(END, self.all_cards)

    def client_exit(self):
        exit()


if __name__ == "__main__":
    root = Tk()
    root.geometry("700x500")
    app = Controller(root)
    root.mainloop()
