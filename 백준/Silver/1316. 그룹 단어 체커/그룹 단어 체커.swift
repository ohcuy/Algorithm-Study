import Foundation

// 검색 = hash
var n: Int = Int(readLine()!)!
var count: Int = 0

for _ in 0..<n {
    let textLine = readLine()!
    var hashSet: Set<Character> = []
    var pre: Character? = nil
    var isGroup = true
    
    for cur in textLine {
        if pre != cur {
            if hashSet.contains(cur) {
                isGroup = false
                break
            }
            hashSet.insert(cur)
        }
        pre = cur
    }
    
    if isGroup {
        count += 1
    }
}

print(count)
