import Foundation

let n = Int(readLine()!)!
var map = [[Int]]()

for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    map.append(row)
}

let dx = [1, 0] // 오른쪽
let dy = [0, 1] // 아래

var visited = Array(repeating: Array(repeating: false, count: n), count: n)

func bfs() {
    // 방문할 좌표 저장
    var queueX = [0]
    var queueY = [0]
    
    // 현재 큐의 인덱스
    var current = 0
    
    visited[0][0] = true
    
    // 방문할 노드가 남아있을 동안 반복
    while current < queueX.count {
        // 탐색 중인 좌표를 큐에서 꺼낸다
        let cx = queueX[current]
        let cy = queueY[current]
        current += 1
        
        // 현재 칸
        let jump = map[cx][cy]
        
        // 목표 지점 도달
        if cx == n - 1 && cy == n - 1 {
            print("HaruHaru")
            return
        }
        
        // 오른쪽과 아래 방향 좌표 계산
        for i in 0..<2 {
            let nx = cx + dx[i] * jump
            let ny = cy + dy[i] * jump
            
            // 다음 좌표가 범위 내에 있고 아직 방문하지 않았다면, 큐에 추가하고 방문 표시
            if (nx < n && ny < n) && !visited[nx][ny] {
                queueX.append(nx)
                queueY.append(ny)
                visited[nx][ny] = true
            }
        }
    }
    print("Hing")
}

bfs()
