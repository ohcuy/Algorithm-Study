N, X = map(int, input().split())
numbers = list(map(int, input().split()))

result = []

for n in numbers:
    if n < X:
        result.append(str(n))

print(" ".join(result))