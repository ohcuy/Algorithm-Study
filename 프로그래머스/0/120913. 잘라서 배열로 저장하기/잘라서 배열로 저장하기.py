def solution(my_str, n):
    i = 0
    result = []
    
    while i < len(my_str):
        cur = my_str[i:i+n]
        result.append(cur)
        i += n
    
    return result
        