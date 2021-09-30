import numpy as np

def second_half(arr):
  firstHalfIndex = int(len(arr) / 2)

  return arr[firstHalfIndex: len(arr - 1)]
  

x = np.array([1, 2, 3, 4])
print(second_half(x))

x = np.array([1, 2, 3, 4, 5])
print(second_half(x))
