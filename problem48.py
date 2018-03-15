sum = 0

for i in range(1, 1001):
    pow = i**i
    sum = sum + pow

sum_str = str(sum)
print(sum_str[-10:])
