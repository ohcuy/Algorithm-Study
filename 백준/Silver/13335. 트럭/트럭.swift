import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0]
let w = input[1]
let l = input[2]


let trucks = readLine()!.split(separator: " ").map { Int($0)! }

var bridge = Array(repeating: 0, count: w)
var time = w
var index = 0
var current = 0

while index < n {
    time += 1
    
    current -= bridge.removeFirst() // 하중에서 지나간 트럭 무게 빼기
    
    // 현재 하중 + 다음 트럭 무게 <= 최대 하중
    if current + trucks[index] <= l {
        bridge.append(trucks[index]) // 다리에 들어옴
        current += trucks[index] // 트럭 무게를 하중에 추가
        index += 1 // 다음 트럭
    } else {
        bridge.append(0) // 현재 하중 + 다음 트럭 무게 > 최대 하중
    }
}

print(time)
