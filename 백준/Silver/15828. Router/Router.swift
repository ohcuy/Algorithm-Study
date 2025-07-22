import Foundation

let n = Int(readLine()!)!

// 양의 정수 - 입력, 0 - 라우터가 패킷 처리, -1은 입력의 끝
var arr = [Int]()
while true {
    let cur = Int(readLine()!)!
    
    if cur == 0 {
        // 버퍼가 비어있으면 삭제하지 않는다.
        if !arr.isEmpty {
            arr.removeFirst()
        }
    } else if cur == -1 {
        break
    } else {
        // 버퍼가 꽉 찼으면 넣지 않는다.
        if arr.count < n {
            arr.append(cur)
        }
    }
}

if arr.isEmpty {
    print("empty")
} else {
    let result = arr.map { String($0) }.joined(separator: " ")
    print(result)
}
