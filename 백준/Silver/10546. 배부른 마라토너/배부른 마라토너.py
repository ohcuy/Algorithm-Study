import sys
input = sys.stdin.readline

n = int(input())
runners = {}

# 참가자 등록
for _ in range(n):
    name = input().rstrip()
    if name in runners:
        runners[name] += 1
    else:
        runners[name] = 1

# 완주자 제거
for _ in range(n-1):
    name = input().rstrip()
    runners[name] -= 1 # 단순히 완주자 명단에 있으면 -1
    
for k, v in runners.items():
    if v != 0:
        print(k)
        break