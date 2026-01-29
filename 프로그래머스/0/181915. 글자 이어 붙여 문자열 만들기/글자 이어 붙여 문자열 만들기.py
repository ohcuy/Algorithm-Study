def solution(my_string, index_list):
    # i = 0
    result = ''
    
    # 내 코드
    # while i < len(index_list):
    #   idx = index_list[i]
    #   result += my_string[idx]
    #   i += 1

    for i in index_list:
        result += my_string[i]
        
    return result