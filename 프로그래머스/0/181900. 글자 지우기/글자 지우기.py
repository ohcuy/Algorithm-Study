def solution(my_string, indices):
    result = ""
    
    for i in range(len(my_string)):
        # 현재 인덱스가 indices에 없으면 결과에 추가
        if i not in indices:
            result += my_string[i]
    
    return result