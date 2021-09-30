import numpy as np

def first_half(arr):
  isEven = len(arr) % 2 == 0
  firstHalfIndex = int(len(arr) / 2)

  if (isEven):
    return arr[0: firstHalfIndex]

  halfNumber = arr[firstHalfIndex] + 1
  arr = np.delete(arr, np.where(arr == halfNumber))
  return arr
  

x = np.array([1, 2, 3, 4])
print(first_half(x))

x = np.array([1, 2, 3, 4, 5])
print(first_half(x))