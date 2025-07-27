import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

var queue = Array(1...n)
let target = readLine()!.split(separator: " ").map { Int($0)! }

var count = 0

for cur in target {
    let index = queue.firstIndex(of: cur)!
    
    if index <= queue.count / 2 {
        for _ in 0..<index {
            let first = queue.removeFirst()
            queue.append(first)
            count += 1
        }
    } else {
        for _ in 0..<(queue.count - index) {
            let last = queue.removeLast()
            queue.insert(last, at: 0)
            count += 1
        }
    }
    
    queue.removeFirst()
}

print(count)