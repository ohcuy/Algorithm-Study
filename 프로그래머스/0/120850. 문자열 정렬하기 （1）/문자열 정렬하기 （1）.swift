import Foundation

func solution(_ my_string:String) -> [Int] {
    let strArr = Array(my_string)
    var numArr = [Int]()
    
    for str in strArr {
        if str.isNumber {
            if let num = Int(String(str)) {
                numArr.append(num)
            }
        }
    }
    
    return numArr.sorted()
}