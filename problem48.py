sum = 0

for i in range(1, 1001):
    pow = i ** i
    sum = sum + pow

sumStr = str(sum)
print(sumStr[-10:])
