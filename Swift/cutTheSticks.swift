/*
https://www.hackerrank.com/challenges/cut-the-sticks/problem
*/

func cutTheSticks(arr: [Int]) -> [Int] {
var dict: [Int: Int] = [:]
var count = arr.count
var outputArr: [Int] = [count]
for val in arr {
    dict[val] = (dict[val] ?? 0) + 1
}

for key in dict.keys.sorted() {
    count -= dict[key]!
    if count > 0 {
        outputArr.append(count)
    }
    
}
return outputArr
}