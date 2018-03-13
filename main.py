import requests
import json

getURLCards = "http://www.clashapi.xyz/api/cards"
cards = requests.get(url = getURLCards).json()
cardsOutput = ""
cardKeys = ["name", "rarity", "type", "elixirCost", "arena"]

for c in cardKeys:
    cardsOutput += c
    cardsOutput += ","
cardsOutput = cardsOutput[:len(cardsOutput) - 1]
cardsOutput += "\n"


for c in cards:
    for key in cardKeys:
        cardsOutput += str(c[key])
        cardsOutput += ","
    cardsOutput += "\n"
cardsOutput = cardsOutput[:len(cardsOutput) - 2]

f = open("cards.csv","w")
f.write(cardsOutput)
f.close()

getURLarenas = "http://www.clashapi.xyz/api/arenas"
arenas = requests.get(url = getURLarenas).json()
arenaOutput = ""
arenaKeys = ["name","victoryGold","minTrophies"]

for a in arenaKeys:
    arenaOutput += a
    arenaOutput += ","
arenaOutput = arenaOutput[:len(arenaOutput) - 1]
arenaOutput += "\n"


for a in arenas:
    for key in arenaKeys:
        arenaOutput += str(a[key])
        arenaOutput += ","
    arenaOutput += "\n"
arenaOutput = arenaOutput[:len(arenaOutput) - 2]

print(arenaOutput)
f = open("arenas.csv","w")
f.write(arenaOutput)
f.close()
