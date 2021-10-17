names = open("./list.txt", "r",encoding="utf-8").read().split("\n")

filtered_names = []

for name in names:
  if (len(name) > 4):
    filtered_names.append(name)

print(filtered_names)