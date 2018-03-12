triNum = 0
topDivisors = 0
divisors = 1

while divisors <= 500:
    for i in range(1, 100):
        triNum += i

        divisors = 1

        for j in range(1, triNum // 2 + 1):
            if (triNum / j) % 1 == 0:
                divisors += 1

    if divisors > topDivisors:
        topDivisors = divisors

        print("TriangleNumber: " + str(triNum))
        print("Divisors: " + str(divisors))
