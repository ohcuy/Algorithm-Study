import Foundation

let red = 0
let green = 1
let blue = 2

let n = Int(readLine()!)!
var arr = [[Int]]()
var cost = Array(repeating: [0, 0, 0], count: n)

for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(row)
}

// 첫번째 집 비용 설정
cost[0][red] = arr[0][red]
cost[0][green] = arr[0][green]
cost[0][blue] = arr[0][blue]

// 두번째 집 ~ 마지막 집 까지 반복해서 최솟값 계산
for i in 1..<n {
    // 현재 빨강 -> 이전 집은 초록이나 파랑
    cost[i][red] = min(cost[i-1][green], cost[i-1][blue]) + arr[i][red]
    // 현재 초록 -> 이전 집은 빨강이나 파랑
    cost[i][green] = min(cost[i-1][red], cost[i-1][blue]) + arr[i][green]
    // 현재 파랑 -> 이전 집은 빨강이나 초록
    cost[i][blue] = min(cost[i-1][red], cost[i-1][green]) + arr[i][blue]
}

// 가장 작은 총 비용 출력
print(min(cost[n-1][red], cost[n-1][green], cost[n-1][blue]))
