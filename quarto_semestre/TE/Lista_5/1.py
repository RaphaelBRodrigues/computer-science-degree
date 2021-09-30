import numpy as np

values = [7, 4, 5, 8, 9, 0, 1, 3, 2, 6]
even = []

for i in range(0, len(values)):
  if i % 2 == 0:
    even.append(values[i])

print(even)