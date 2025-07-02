import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0], m = input[1]
let INF = 10000

// 2차원 그래프 무한대로 초기화
var graph = [[Int]](repeating: [Int](repeating: INF, count: n + 1), count: n + 1)

// 자기 자신에서 자기 자신으로 가는 비용은 항상 0
for i in 1...n {
    graph[i][i] = 0
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    
    // 양방향 그래프, 서로 친구 -> 거리 1
    graph[a][b] = 1
    graph[b][a] = 1
}

// 플로이드 워셜 알고리즘 수행
// 모든 (i,j) -> 중간 k를 거쳐가는 경로가 더 짧으면 갱신
for k in 1...n { // 중간
    for i in 1...n { // 시작
        for j in 1...n { // 도착
            if graph[i][j] > graph[i][k] + graph[k][j] {
                graph[i][j] = graph[i][k] + graph[k][j]
            }

        }
    }
}

var minSum = Int.max // 최소 거리 합
var answer = 0 // 케빈 베이컨 수가 가장 작은 사람

for i in 1...n {
    // 자기 자신 제외한 거리 총합
    let sum = graph[i][1...n].reduce(0, +)
    if sum < minSum {
        minSum = sum
        answer = i
    }
}

print(answer)
