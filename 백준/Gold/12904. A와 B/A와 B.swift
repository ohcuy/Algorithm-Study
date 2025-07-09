import Foundation

let s = readLine()!
let t = readLine()!

var arr = Array(t)
var result = 0

while arr.count >= s.count {
    if String(arr) == s {
        result = 1
        break
    }
    if arr.last == "A" {
        arr.removeLast()
    } else if arr.last == "B" {
        arr.removeLast()
        arr.reverse()
    }
}

print(result)
