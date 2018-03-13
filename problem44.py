def Pentagonal(n):
    p = int(n * (3 * n - 1) / 2)
    return p


pList = []
finished = False
n = 1

while finished != True:

    p = Pentagonal(n)
    pList.append(p)

    for k in pList:
        for j in pList:
            sum = j + k

            if sum in pList:
                print("j: " + str(j))
                print("k: " + str(k))
                print("sum: " + str(sum))

                diff = abs(k - j)

                if diff in pList:
                    print("diff: " + str(diff))
                    finished = True

    n += 1
