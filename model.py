import pymysql
import tkinter as tk
from tabulate import tabulate


class Model:
    datab = None
    cursor = None

    def __init__(self):
        self.username = tk.StringVar()
        self.password = tk.StringVar()

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
