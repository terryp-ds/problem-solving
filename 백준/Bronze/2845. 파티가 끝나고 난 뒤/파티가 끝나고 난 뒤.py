f=lambda:map(int,input().split())
l,p=f()
print(*[i-l*p for i in f()])