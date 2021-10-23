def showGradeData(fileToReadPath):
  data = open(fileToReadPath, "r", encoding="utf-8").read().split("\n")
  dictionary = {}
  avarage = 0
  highestGrade = ["", 0]
  lowestGrade = ["", 10]

  names = []
  grades = []

  for student in data:
    studentData = student.split(",")
    name = studentData[0]
    grade = float(studentData[1])
    
    grades.append(grade)
    names.append(name)

    avarage = (avarage + grade) / 2

    if (grade > highestGrade[1]):
      highestGrade = [name, grade]
    if (grade < lowestGrade[1]):
      lowestGrade = [name, grade]
    
  
  print("Student above the avarage:")
  for student in data:
    studentData = student.split(",")
    name = studentData[0]
    grade = float(studentData[1])

    if (grade > avarage):
      print(name + " ", grade)
  
  print("============================")
  dictionary = dict(zip(names, grades))
  print("Maior nota:", highestGrade)
  print("============================")

  print("Menor nota:", lowestGrade)
  print("============================")

  print(dictionary)


showGradeData("./resources/4.txt")