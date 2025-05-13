import Foundation

func solution(_ n:Int) -> Int { 
    var answer = 0
    
    for i in 1...n {
        if (((n-1) % i == 0) && (i != 1)) {
            answer = i
            break
        }
    }
    
    return answer
}