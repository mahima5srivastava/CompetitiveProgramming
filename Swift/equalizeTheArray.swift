/*
https://www.hackerrank.com/challenges/equality-in-a-array/problem
*/

func equalizeArray(arr: [Int]) -> Int {

var dict: [Int: Int] = [:]
for val in arr {
    dict[val] = (dict[val] ?? 0) + 1
}
var max = 0
for key in dict.keys {
    if max < dict[key]! {
        max = dict[key]!
    }
}
return arr.count - max
}