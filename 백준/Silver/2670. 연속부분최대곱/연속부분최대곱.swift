import Foundation

let n = Int(readLine()!)!
var arr = [Double]()
var dp = Array(repeating: 0.0, count: n)

for _ in 0..<n {
    let row = Double(readLine()!)!
    arr.append(row)
}

// 첫번째 값 저장
dp[0] = arr[0]

var maxValue = arr[0]

for i in 1..<n {
    // 이전까지의 값에 현재 arr[i]를 곱하고 비교
    dp[i] = max(arr[i], dp[i-1] * arr[i])
    maxValue = max(maxValue, dp[i])
}

print(String(format: "%.3f", maxValue))
