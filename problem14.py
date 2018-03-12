def GetCollatzTerms(startingNum):
    chainLength = 1
    num = startingNum

    while num > 1:
        if num % 2 == 0:
            num = num / 2
        else:
            num = num * 3 + 1

        chainLength += 1

    return chainLength


longestChainLength = 1

for i in range(1, 1000000):
    chainLength = GetCollatzTerms(i)

    if chainLength > longestChainLength:
        longestChainLength = chainLength

        print("Starting Number: " + str(i))
        print("Chain Length: " + str(chainLength))
