def isPrime(number):
  j = number;
  isPrimo = True
  while(j > 1): 
    if number % j == 0 and number != j:
      isPrimo = False
    j -= 1

  if isPrimo:
    return True
    
  return False 




print(isPrime(11))
