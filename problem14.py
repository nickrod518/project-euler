def get_collatz_terms(starting_num):
    chain_length = 1
    num = starting_num

    while num > 1:
        if num % 2 == 0:
            num = num/2
        else:
            num = num*3 + 1

        chain_length = chain_length + 1

    return chain_length


longest_chain_length = 1

for i in range(1, 1000000):
    chain_length = get_collatz_terms(i)

    if chain_length > longest_chain_length:
        longest_chain_length = chain_length

        print("Starting Number: " + str(i))
        print("Chain Length: " + str(chain_length))
