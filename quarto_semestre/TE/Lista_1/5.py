n = int(input("Base: "))
x = int(input("Expoente: "))

res = n

for i in range(1, x):
   res *= n

print(res)