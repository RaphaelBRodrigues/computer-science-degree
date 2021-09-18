COUNTRIES = ["Brazil", "UK", "Spain"]
IDIOMS = ["Português", "English", "Español"]

def mergeTuples(countries, idioms):
  print(countries,idioms)
  dictionary = {}
  index = 0

  for country in countries:
    dictionary[country] = idioms[index]
    index += 1

  return dictionary

print(mergeTuples(COUNTRIES, IDIOMS)["UK"])