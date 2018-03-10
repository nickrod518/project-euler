sum = 0

for i in range(1, 1001):
    #print("iterator: " + str(i))
    pow = i ** i
    #print("pow: " + str(pow))
    sum = sum + pow
    #print("sum: " + str(sum))

sumStr = str(sum)
#print("sumStr: " + sumStr)
print(sumStr[-10:])
