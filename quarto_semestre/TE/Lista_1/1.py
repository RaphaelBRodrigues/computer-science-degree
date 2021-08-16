pares = 0
impares = 0
primos = 0

for i in range(1,50):
  num = int(input("Insira o número: "))
  j = num;
  isPrimo = True
  while(j > 1): 
    if num % j == 0 and num != j:
      isPrimo = False
    j -= 1

  if isPrimo:
    primos += 1    
  if num % 2 == 0: 
    pares += 1
  else: 
    impares += 1


print("Pares:" + str(pares))
print("Impares:" + str(impares))
print("Primos:" + str(primos))