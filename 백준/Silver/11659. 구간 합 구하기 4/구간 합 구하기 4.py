import sys
input=sys.stdin.readline
n,m=map(int,input().split())
a=[*map(int,input().split())]
s=[0]*(n+1)
for i in range(1,n+1): s[i]=s[i-1]+a[i-1]
for _ in range(m): 
    i,j=map(int,input().split())
    print(s[j]-s[i-1])