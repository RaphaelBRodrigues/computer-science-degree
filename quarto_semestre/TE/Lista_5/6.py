import numpy as np
values1 = [5, 7, 4, 6, 3, 9]
values2 = [2, 1, 8, 0]

x = np.array(values1)
y = np.array(values2)

concat = np.concatenate([x, y])

print(concat)