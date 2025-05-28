import Foundation

// N과 M 입력받기
let NMinput = readLine()!
    .split(separator: " ")
    .map{Int($0)!}

let n = NMinput[0]
let m = NMinput[1]

// N개의 도감 입력받기
var numberToName = [Int: String]()
var nameToNumber = [String: Int]()

for i in 1...n {
    let name = readLine()!
    numberToName[i] = name
    nameToNumber[name] = i
}

// M개의 문제
for _ in 0..<m {
    let questionInput = readLine()!
    
    // 문제에 대한 답 출력하기 (숫자 - 이름, 이름 - 숫자)
    if let number = Int(questionInput) { // 숫자로 바꿀 수 있다면
        print(numberToName[number]!)
    } else {
        print(nameToNumber[questionInput]!)
    }
}
