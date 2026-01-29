def solution(s):
    dict = {"zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"}
    
    if s.isdigit():
        return int(s)
    
    num = ""
    cur = ""
    
    for c in s:
        # 숫자일 경우
        if c.isdigit():
            num += c
        
        # 문자일 경우
        else:
            cur += c
            # 계속 넣다가 딕셔너리에 있으면 값 추가 후 초기화
            if cur in dict:
                num += dict[cur]
                cur = ""
                
    return int(num)            
        