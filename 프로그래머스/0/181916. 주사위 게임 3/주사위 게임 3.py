def solution(a, b, c, d):
    numbers = [a, b, c, d]
    
    # 딕셔너리에 값 카운트
    count = {}
    for n in numbers:
        count[n] = count.get(n, 0) + 1
    
    # 숫자별 등장 횟수를 가장 많이 나온 것 부터 정렬
    items = sorted(count.items(), key=lambda x: -x[1])
    
    if len(count) == 1:
        p = items[0][0]
        return 1111 * p
    
    if len(count) == 2 and items[0][1] == 3:
        p = items[0][0]
        q = items[1][0]
        return (10 * p + q) ** 2
    
    if len(count) == 2 and items[0][1] == 2:
        p = items[0][0]
        q = items[1][0]
        return (p + q) * abs(p - q)
    
    if len(count) == 3:
        q = items[1][0]
        r = items[2][0]
        return q * r
    
    return min(numbers)
        