import Foundation

let draft = 0
let lift = 1

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]

var a = readLine()!.split(separator: " ").map { Int($0)! }
var b = readLine()!.split(separator: " ").map { Int($0)! }

var dp = Array(repeating: [0, 0], count: n)
dp[0][draft] = a[0]
dp[0][lift] = b[0]

for i in 1..<n {
    dp[i][draft] = min(dp[i-1][draft] + a[i], dp[i-1][lift] + a[i] + k)
    dp[i][lift] = min(dp[i-1][lift] + b[i], dp[i-1][draft] + b[i] + k)
}


print(min(dp[n-1][draft], dp[n-1][lift]))