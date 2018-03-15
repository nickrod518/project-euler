product = 1
sum = 0

for n in range(1, 101):
    product = product*n

for i in str(product):
    sum = sum + int(i)

print(sum)
