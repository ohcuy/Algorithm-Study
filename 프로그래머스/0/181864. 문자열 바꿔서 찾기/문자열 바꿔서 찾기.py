def solution(myString, pat):
    cur = ""

    # pat의 A -> B, B -> A로 치환
    for c in pat:
        if c == "A": cur += "B"
        else: cur += "A"
    
    # myString에서 같은 글자 있는지 확인 -> 값 반환
    if cur in myString:
        return 1
    else: return 0
    

    
     