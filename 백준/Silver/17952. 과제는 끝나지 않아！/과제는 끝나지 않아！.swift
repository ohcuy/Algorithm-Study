import Foundation

let n = Int(readLine()!)!

var answer = 0
var waitList: [(score: Int, time: Int)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    if input[0] == 1 {
        let score = input[1]
        let time = input[2] - 1 // 과제를 받으면 바로 시작
        
        if time == 0 {
            answer += score // 0이면 과제를 다한 것 -> 점수 획득
        } else {
            waitList.append((score, time)) // 남은 시간을 등록
        }
    } else {
        if !waitList.isEmpty {
            var homework = waitList.removeLast()
            homework.time -= 1 // 과제를 받으면 바로 시작
            if homework.time == 0 {
                answer += homework.score // 0이면 과제를 다한 것 -> 점수 획득
            } else {
                waitList.append(homework) // 남은 시간을 등록
            }
        }
    }
}

print(answer)
