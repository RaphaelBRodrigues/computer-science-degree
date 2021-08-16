import operator

operators = {
  "+": operator.add,
  "-": operator.sub,
  "*": operator.mul
}

a = int(input("A: "))
b = int(input("B: "))
operation = input("(*) (+) (-): ")


print(operators[operation](a,b))