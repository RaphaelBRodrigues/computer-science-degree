pares = []
impares = []
primos = []

for i in range(1,5):
  num = int(input("Insira o número: "))
  j = num;
  isPrimo = True
  while(j > 1): 
    if num % j == 0 and num != j:
      isPrimo = False
    j -= 1

  if isPrimo:
    primos.append(num)    
  if num % 2 == 0: 
    pares.append(num)
  else: 
    impares.append(num)


print("Pares:", pares)
print("Impares:", impares)
print("Primos:", primos)