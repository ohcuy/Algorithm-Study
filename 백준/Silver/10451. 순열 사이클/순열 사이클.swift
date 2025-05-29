import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    let numLine = readLine()!
    let numArr: [Int] = String(numLine)
        .split(separator: " ")
        .map{ Int($0)! }
    
    var visited = Array(repeating: false, count: n+1)
    var count = 0
    
    for i in 1...n {
        if visited[i] == false {
            var current = i
            
            while visited[current] == false {
                visited[current] = true
                current = numArr[current-1]
            }
            count += 1
        }
    }
    
    print(count)
}
