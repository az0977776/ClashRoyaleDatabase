import requests

getURLCards = "http://www.clashapi.xyz/api/cards"
cards = requests.get(url = getURLCards).json()
cardsOutput = "name, rarity, type, elixirCost, arena\n"
cardKeys = ["name", "rarity", "type", "elixirCost", "arena"]

for c in cards:
    for key in cardKeys:
        cardsOutput += str(c[key])
        cardsOutput += ","
    cardsOutput = cardsOutput[:len(cardsOutput)-1]
    cardsOutput += "\n"
cardsOutput = cardsOutput[:len(cardsOutput) - 2]

#print(cardsOutput)

f = open("cards.csv","w")
f.write(cardsOutput)
f.close()

getURLarenas = "http://www.clashapi.xyz/api/arenas"
arenas = requests.get(url = getURLarenas).json()
arenaOutput = "name, victoryGold, minTrophies, order\n"
arenaKeys = ["name","victoryGold","minTrophies", "order"]

for a in arenas:
    for key in arenaKeys:
        arenaOutput += str(a[key])
        arenaOutput += ","
    arenaOutput = arenaOutput[:len(arenaOutput)-1]
    arenaOutput += "\n"
arenaOutput = arenaOutput[:len(arenaOutput) - 2]

f = open("arenas.csv","w")
f.write(arenaOutput)
f.close()
