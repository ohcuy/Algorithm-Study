def solution(my_strings, parts):
    result = ""
    n = len(my_strings)
    
    for i in range(n):
        cur = parts[i]
        result += my_strings[i][cur[0]: cur[1]+1]
    
    return result