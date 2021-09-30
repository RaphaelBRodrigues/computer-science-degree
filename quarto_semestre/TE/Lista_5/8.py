import numpy as np

def getMinMaxIndexs(arr):
  
  minIndex = np.argmin(arr) 
  maxIndex = np.argmax(arr)

  return [minIndex, maxIndex] 

values = np.array([6, 7, 8, 9, 10])

print(getMinMaxIndexs(values))