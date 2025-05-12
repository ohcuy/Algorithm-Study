import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    var answer: Int = 0
    
    while (num > 0) {
        answer += (num % 10)
        num /= 10
    }

    return answer
}