import re

def validarCNPJ(cnpj):
  alg = [5,4,3,2,9,8,7,6,5,4,3,2]
  total = 0
  index = 0

  for n in cnpj:
    if(index <= 11):
      total += int(n) * alg[index]
      index += 1

  print(total)

  if (total % 11 < 2):
    digito1 = 0
  else:
    digito1 = 11 - total % 11 

  alg = [6,5,4,3,2,9,8,7,6,5,4,3, 2]
  index = 0
  total = 0

  for n in cnpj:
    if(index <= 12):
      total += int(n) * alg[index]
      index += 1

  if (total % 11 < 2):
    digito2 = 0
  else:
    digito2 = 11 - total % 11 

  if (str(digito1) + str(digito2) == cnpj[12] + cnpj[13]): 
    print("CNPJ Válido")
  else: 
    print("CNPJ Inválido")

validarCNPJ(re.sub('(\.|-|/)', '', input("Insira o CNPJ que será validado: ")))