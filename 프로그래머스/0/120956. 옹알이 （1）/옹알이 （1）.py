def solution(babbling):
    count = 0
    sounds = ["aya", "ye", "woo", "ma"]
    
    for word in babbling:
        temp = word
        
        # 발음을 하나씩 지운다
        for s in sounds:
            temp = temp.replace(s, " ")
        
        # 양쪽 공백을 제거하고, 남은게 없으면 개수 세기
        if temp.strip() == "":
            count += 1
    
    return count