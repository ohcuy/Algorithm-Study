def solution(keyinput, board):
    x, y = 0,0
    
    maxX = board[0] // 2
    maxY = board[1] // 2
    
    for i in keyinput:
        if i == "up" and y < maxY:
            y += 1
        if i == "down" and y > -maxY:
            y += -1
        if i == "left" and x > -maxX:
            x += -1
        if i == "right" and x < maxX:
            x += 1

    return [x, y]