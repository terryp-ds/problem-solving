print(sum([min((ord(c)-56-(ord(c)>82))//3,10) for c in input()]))