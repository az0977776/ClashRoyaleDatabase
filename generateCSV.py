import requests

getURLPlayers = "http://www.clashapi.xyz/api/players"
players = requests.get(url = getURLPlayers).json()
playersOutput = "level,maxExp,hitpoints,damage\n"
for player in players:
    playersOutput += str(player['level'])
    playersOutput += ","
    playersOutput += str(player['maxExp'])
    playersOutput += ","
    playersOutput += str(player['kingsTower']['hitpoints'])
    playersOutput += ","
    playersOutput += str(player['kingsTower']['damage'])
    playersOutput += "\n"


f = open("players.csv","w")
f.write(playersOutput)
f.close()


getURLChests = "http://www.clashapi.xyz/api/chests"
chests = requests.get(url = getURLChests).json()
chestsOutput = "name,gold,arena,rare,epic,legendary\n"
for chest in chests:
    chestsOutput += chest['name']
    chestsOutput += ","
    chestsOutput += str(chest['gold']['max'])
    chestsOutput += ","
    chestsOutput += str(chest['arena'])
    chestsOutput += ","
    chestsOutput += str(chest['cards']['minRare'])
    chestsOutput += ","
    chestsOutput += str(chest['cards']['minEpic'])
    chestsOutput += ","
    chestsOutput += str(chest['cards']['minLegendary'])
    chestsOutput += "\n"


f = open("chests.csv","w")
f.write(chestsOutput)
f.close()


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
