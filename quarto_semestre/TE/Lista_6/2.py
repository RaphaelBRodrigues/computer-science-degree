def buyProducts(filePath):
  total = 0
  sale = open(filePath, "r",encoding="utf-8").read().split("\n")
  
  for item in sale:
    price = float(item.split(" ")[1])
    total = total + price
  
  return total




print("Total:", buyProducts("./resources/2.txt"))