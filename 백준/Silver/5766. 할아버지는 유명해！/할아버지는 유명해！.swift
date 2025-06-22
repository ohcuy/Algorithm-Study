import Foundation

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    let n = input[0]
    let m = input[1]
    
    if n == 0 && m == 0 {
        break
    }
    
    var list = [[Int]]()

    for _ in 0..<n {
        let row = readLine()!.split(separator: " ").map { Int($0)! }
        list.append(row)
    }

    let arr = list.joined()
    
    var count: [Int: Int] = [:]
    
    for i in arr {
        count[i, default: 0] += 1
    }
    
    // Count 내림차순 정렬 -> Set으로 중복 제거
    let countValues = Array(Set(count.values).sorted(by: >))
    let secondMax = countValues[1]
    let result = count.filter { $1 == secondMax }.keys.sorted()
    
    print(result.map { String($0) }.joined(separator: " "))
}
