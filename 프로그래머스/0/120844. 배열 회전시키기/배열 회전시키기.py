def solution(numbers, direction):  
    if direction == "right":
        cur = numbers.pop()
        numbers.insert(0, cur)
        
    else:
        cur = numbers.pop(0)
        numbers.append(cur)

    return numbers