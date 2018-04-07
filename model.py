import pymysql
import tkinter as tk
import util
from tabulate import tabulate


class Model:
    def __init__(self):
        self.username = tk.StringVar()
        self.password = tk.StringVar()
        self.datab = ""

    def accessDB(self):
        self.datab = pymysql.connect("localhost", str(self.username.get()), str(self.password.get()), "clash_royale")

    def show_cards(self):
        cursor = self.datab.cursor()
        cursor.execute(util.showAllCards())
        table = []
        all_char = ""
        for row in cursor:
            table += [row]

        return tabulate(table)

# if __name__ == "__main__":
#     loc = []
#     all_char = ""
#     prompt_input = True
#
#     name = input("Username: ")
#     password = input("Password: ")
#
#     db = pymysql.connect("localhost", name, password, "clash_royale")
#
#     cursor = db.cursor()
#     cursor.execute("SELECT character_name from lotr_character")
#
#     for row in cursor:
#         loc.append(row[0])
#
#     for row in loc:
#         all_char += row
#         all_char += "\n"
#
#     # 3) (10 points) Prompt the user to enter a particular character name. Store the result in a variable.
#
#     while (prompt_input):
#         char_name = input("Enter one of the follow ing character names:\n" + all_char)
#         if char_name in all_char:
#             prompt_input = False
#         else:  # 7)     (5 points) Generate an error message to standard output and re-prompt the user for input,
#             #  if the user provides invalid input.
#             print("ERROR: The character name is invalid.\n")
#
#     # 5) (20 points) Use the name as an argument to the function track_character( ). Call the procedure.
#
#     cur = db.cursor()
#     cur.execute("Call  track_character(\"" + char_name + "\")")
#
#     # 6) (20 points)  Print the result set of track_character to standard output.
#
#     for row in cur:
#         print(row)
#
#     # 8) (10 points) Once the records are written to standard output,
#     #  close the connection to the database and end the application program.
#
#     db.close()
