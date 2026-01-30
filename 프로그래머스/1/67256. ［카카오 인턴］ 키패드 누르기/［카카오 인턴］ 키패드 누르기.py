def solution(numbers, hand):
    # 좌표 지정
    pos = {
        1:(0,0), 2:(1,0), 3:(2,0),
        4:(0,1), 5:(1,1), 6:(2,1),
        7:(0,2), 8:(1,2), 9:(2,2),
        "*":(0,3), 0:(1,3), "#":(2,3)
    }
    
    result = ""
    left = "*"
    right = "#"

    for n in numbers:   
        if n in [1, 4, 7]:
            result += "L"
            left = n
            
        elif n in [3, 6, 9]:
            result += "R"
            right = n
        
        # 가운데 열
        else:
            lx, ly = pos[left]
            rx, ry = pos[right]
            nx, ny = pos[n]
            
            ld = abs(lx - nx) + abs(ly - ny)
            rd = abs(rx - nx) + abs(ry - ny)
        
            if ld < rd:
                result += "L"
                left = n
            
            elif ld > rd:
                result += "R"
                right = n
                
            else:
                if hand == "left":
                    result += "L"
                    left = n
                else:
                    result += "R"
                    right = n
                    
    return result