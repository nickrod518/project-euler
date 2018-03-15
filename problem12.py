tri_num = 0
top_divisors = 0
divisors = 1

while divisors <= 500:
    for i in range(1, 100):
        tri_num = tri_num + i

        divisors = 1

        for j in range(1, tri_num//2 + 1):
            if (tri_num/j) % 1 == 0:
                divisors = divisors + 1

    if divisors > top_divisors:
        top_divisors = divisors

        print("TriangleNumber: " + str(tri_num))
        print("Divisors: " + str(divisors))
