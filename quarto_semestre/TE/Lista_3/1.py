def calc(number):
  double = number * 2
  multiplied = number * 5
  factorial = 1

  while number > 0:
    factorial *= number
    number -= 1

  return [double, multiplied, factorial]


print(calc(int(input("Insert a number: "))))