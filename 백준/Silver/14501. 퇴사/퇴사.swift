import Foundation

let n = Int(readLine()!)!
var arr = [[Int]]()
//  memo[i]는 i번째 날부터 시작했을 때 얻을 수 있는 최대 수익
var memo = Array(repeating: -1, count: n+1)

for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    arr.append(row)
}

func dp(_ i: Int) -> Int {
		// 퇴사일 넘기면 수익 0
    if i >= n { return 0 }
    
    // 이미 계산 한 값이면 반환
    if memo[i] != -1 {
        return memo[i]
    }
    
    let time = arr[i][0]
    let pay = arr[i][1]
    
    // 퇴사 전에 상담 가능
    if i + time <= n {
		    // 상담 가능 -> 현재 pay + 다음 가능한 날 최대 수익
        let check = pay + dp(i + time)
        // 다음 가능한 날 최대 수익과 비교해서 큰 값 저장
        memo[i] = max(check, dp(i+1))
    } else {
		    // 상담 불가능 -> 다음날로 pass
        memo[i] = dp(i+1)
    }
    
    return memo[i]
}

print(dp(0))