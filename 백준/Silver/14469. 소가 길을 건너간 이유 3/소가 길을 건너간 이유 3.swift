import Foundation

let n = Int(readLine()!)!
var list = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    list.append(input)
}

list.sort { $0[0] < $1[0] }
var result = 0

while !list.isEmpty {
    let current = list.removeFirst()
    
    let arrivedTime = current[0]
    let checkTime = current[1]
    
    if arrivedTime < result {
        result += checkTime
    } else {
        result = arrivedTime + checkTime
    }
}

print(result)
