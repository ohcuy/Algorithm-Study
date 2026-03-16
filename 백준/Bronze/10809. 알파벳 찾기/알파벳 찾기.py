s = input()

check = [-1] * 26

for i in range(len(s)):
    index = ord(s[i]) - ord('a') # 아스키코드 값 구하기

    if check[index] == -1: # -1이 아니면 이미 등장함
        check[index] = i

for i in range(26):
    print(check[i], end= " ") # 띄어쓰기 포함 출력