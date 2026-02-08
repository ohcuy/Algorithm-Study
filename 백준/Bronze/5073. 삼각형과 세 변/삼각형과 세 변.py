while True:
    a, b, c = map(int, input().split())

    #  마지막 줄은 0 0 0이며 이 줄은 계산하지 않는다.
    if a == 0 and b == 0 and c == 0:
        break
    
    # 가장 긴 변의 길이보다 나머지 두 변의 길이의 합이 길지 않으면 삼각형의 조건을 만족하지 못한다.
    m = max(a, b, c)
    if m >= ((a+b+c) - m):
        print("Invalid")

    # 세 변의 길이가 모두 같은 경우
    elif a == b == c:
        print("Equilateral")

    # 두 변의 길이만 같은 경우
    elif a == b or b == c or a == c:
        print("Isosceles")

    # 세 변의 길이가 모두 다른 경우
    else:
        print("Scalene")