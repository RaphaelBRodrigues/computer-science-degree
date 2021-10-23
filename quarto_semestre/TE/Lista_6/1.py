VOWELS = ['a', 'e', 'i', 'o', 'u']

def countVowels(word):
  vowelsQuantity = 0
  lowerWord = word.lower()

  for letter in lowerWord:
    if (letter in VOWELS):
      vowelsQuantity = vowelsQuantity + 1 
  
  return vowelsQuantity



word = open("./resources/1.txt", "r",encoding="utf-8").read()
print(countVowels(word))