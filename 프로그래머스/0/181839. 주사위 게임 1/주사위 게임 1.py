def solution(a, b):
    # a와 b가 모두 홀수라면
    if a % 2 == 1 and b % 2 == 1:
        return a ** 2 + b ** 2

    # a와 b 중 하나만 홀수라면
    elif a % 2 == 1 or b % 2 == 1:
        return 2 * (a + b)
        
    # a와 b 모두 홀수가 아니라면
    else:
        return abs(a - b)