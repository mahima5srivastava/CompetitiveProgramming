/*
https://www.hackerrank.com/challenges/picking-numbers/problem
*/
func pickingNumbers(a: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    var max = 0
    for val in a {
        dict[val] = (dict[val] ?? 0) + 1
    }

    let sortedKeys = dict.keys.sorted()
    for key in sortedKeys {
        if let nextKeyCount = dict[key + 1], max < (dict[key]! + nextKeyCount) {
            max = dict[key]! + nextKeyCount
        } else if dict[key]! > max {
            max = dict[key]!
        }

    }
    return max
}

print(pickingNumbers(a: [4,6,5,3,3,1]))