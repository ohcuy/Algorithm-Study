def solution(new_id):
    #1
    result = new_id.lower()
    
    #2
    temp = ''
    for c in result:
        if c.islower() or c.isdigit() or c in '-_.':
            temp += c
    result = temp
        
    #3
    while ".." in result:
        result = result.replace('..','.')
    
    #4
    result = result.strip('.')
    
    #5
    if result == '':
        result = 'a'
        
    #6
    if len(result) >= 16:
        result = result[:15].rstrip('.')
    
    #7
    if len(result) <= 2:
        while len(result) < 3:
            result += result[-1]
    
    return result