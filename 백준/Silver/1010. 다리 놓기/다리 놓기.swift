import Foundation

func comb(m: Int, n: Int) -> Int {
    if n == 0 || m == n {
        return 1
    }
    
    if dp[m][n] != 0 {
        return dp[m][n]
    }
    
    dp[m][n] = comb(m: m - 1, n: n - 1) + comb(m: m-1, n: n)
    return  dp[m][n]
}

var dp = Array(repeating: (Array(repeating: 0, count: 31)), count: 31)
var t: Int = Int(readLine()!)!
var n, m: Int!

for _ in 0..<t {
    let textLine: String = readLine()!
    let numbers = textLine.split(separator: " ").map { Int($0)! } // 문자열 $0을 정수로 변환 -> 옵셔널 반환
    
    n = numbers[0]
    m = numbers[1]
    
    print(comb(m: m, n: n), terminator: "\n")
}
