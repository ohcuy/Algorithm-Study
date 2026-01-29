# 점수 계산 로직
def solution(dartResult):
    i = 0
    scores = []
    
    while i < len(dartResult):
        # 점수 계산
        if dartResult[i].isdigit():
            # 점수는 0에서 10 사이의 정수이다.
            if dartResult[i] == '1' and dartResult[i+1] == '0':
                score = 10
                i += 2

            else:
                score = int(dartResult[i])
                i += 1 # 다음 자리로 넘어감
            
            # 보너스 계산 
            bonus = dartResult[i]
            if bonus == 'S':
                score = score ** 1
            elif bonus == 'D':
                score = score ** 2
            elif bonus == 'T':
                score = score ** 3
            i += 1
            
            # 옵션 계산             
            if i < len(dartResult) and dartResult[i] in ['*', '#']:
                if dartResult[i] == '*':
                    score *= 2
                    if scores: # 이전 점수가 존재하면
                        scores[-1] *= 2
                else:
                    score *= -1
                i += 1  
        
        # 점수 합산
        scores.append(score)
        
    return sum(scores)