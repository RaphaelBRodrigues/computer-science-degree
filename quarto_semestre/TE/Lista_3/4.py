def checkStudentStatus(student):
  status = "reprovado"
  finalGrade = 0

  for grade in student["notas"]:
    finalGrade = (finalGrade + grade) / 2 
  
  if (finalGrade >= 4) & (finalGrade <= 6): 
    status = "substitutiva"
  if finalGrade > 6:
    status = "aprovado"
  
  return {
    **student,
    "status": status
    
    }
 



A = { 
  "nome": "Armando João",
  "idade": 24,
  "notas": [4, 4, 4, 2]
}

B = {
  "nome": "Natália Fernandes",
  "idade": 18,
  "notas": [6, 6, 6]
}

students = [A,B]

for student in students:
  print(checkStudentStatus(student))


