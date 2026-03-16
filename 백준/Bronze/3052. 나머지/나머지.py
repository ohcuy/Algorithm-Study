# 나머지가 0부터 41까지 가능
check = [0] * 42

# 나온 나머지를 기록
for i in range(10):
    n = int(input())
    check[n % 42] = 1

# 나머지 개수(배열의 1들) 세기
sum = 0
for i in range(42):
    sum += check[i]

print(sum)