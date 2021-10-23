import datetime

def checkAge(fileToReadPath, fileToWritePath):
  fileToRead = open(fileToReadPath, "r", encoding="utf-8").read().split("\n")
  fileToWrite = open(fileToWritePath, "w", encoding="utf-8")

  for person in fileToRead:
    if (person != ""):
      personData = person.split(" ")
      age = datetime.datetime.now().year - int(personData[1])
      name =  personData[0]
      text = "entrando na maior idade"

      if(age > 18):
        text = "maior de idade"
      if(age < 18):
        text = "menor de idade"

      fileToWrite.write(name + " " + text + "\n")

checkAge("./resources/3/enter.txt", "./resources/3/out.txt")