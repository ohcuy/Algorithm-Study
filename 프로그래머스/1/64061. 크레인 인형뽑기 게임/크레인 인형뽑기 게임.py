def solution(board, moves):
    basket = []
    count = 0
    
    for m in moves:
        idx = m-1
        
        for b in board:
            if b[idx] > 0:
                doll = b[idx]
                b[idx] = 0
                
                if basket and basket[-1] == doll:
                    basket.pop()
                    count += 2
                else:
                    basket.append(doll)
                    
                break
                        
    return count
