def pentagonal(n):
    p = int(n*(3*n - 1)/2)
    return p


p_list = []
finished = False
n = 1

while finished != True:

    p = pentagonal(n)
    p_list.append(p)

    for k in p_list:
        for j in p_list:
            sum = j + k

            if sum in p_list:
                print("j: " + str(j))
                print("k: " + str(k))
                print("sum: " + str(sum))

                diff = abs(k-j)

                if diff in p_list:
                    print("diff: " + str(diff))
                    finished = True

    n = n + 1
