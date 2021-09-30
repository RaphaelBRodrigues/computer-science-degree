import numpy as np


def first_half(arr):
  firstHalfIndex = int(len(arr) / 2)

  return arr[0: firstHalfIndex]

def second_half(arr):
  firstHalfIndex = int(len(arr) / 2)

  return arr[firstHalfIndex: len(arr - 1)]

def mix(firstArray, secondArray):
  firstArray = first_half(firstArray)
  secondArray = second_half(secondArray)
  print(firstArray, secondArray)
  return np.concatenate([firstArray, secondArray])


x = np.array([1, 2, 3, 4, 5])
y = np.array([6, 7, 8, 9, 10])
z = mix(x, y)

print(z)