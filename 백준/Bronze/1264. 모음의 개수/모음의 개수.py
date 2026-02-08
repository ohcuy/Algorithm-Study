while True:
    line = input().strip().lower()

    if line == "#":
        break

    count = 0
    for c in line:
        if c in {"a", "e", "i", "o", "u"}:
            count += 1
    
    print(count)
