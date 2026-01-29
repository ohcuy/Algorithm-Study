def solution(A, B):
    count = 0
    i = 0
    
    while i < len(A):
        if A == B:
            return count
        
        A = A[-1] + A[:-1] # 마지막 문자 + 나머지 (오른쪽으로 밀기)
        count += 1
        i += 1
                
    return -1
        