TRANSLATED_WORDS = {
  "senhor": "matey",
  "hotel": "fleabag inn",
  "estudante": "swabble",
  "garoto": "matey",
  "madame": "proud beauty",
  "professor": "foul blaggart",
  "restaurante": "galley",
  "seu": "yer",
  "estudantes": "swabbles",
  "são": "be",
  "advogado": "foul blaggart",
  "o": "th'",
  "banheiro": "head", 
  "meu": "me",
  "oi": "avast",
  "é": "be",
  "homem": "matey",
  "com licença": "arr",
}

def translateSentence(sentence):
  translatedSentence = []
  for word in sentence.split():
    translatedSentence.append(TRANSLATED_WORDS[word] + " ")
  
  return ''.join(translatedSentence)

print(translateSentence("o garoto é seu estudante professor"))