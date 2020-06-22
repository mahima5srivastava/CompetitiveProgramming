/*
Solution for hardest problem in Hacker rank interview prepration kit for arrays 
Link: https://www.hackerrank.com/challenges/crush/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays
*/
func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
var arr: [Int] = Array(repeating: 0, count: n)
for query in queries {
    let a = query[0]
    let b = query[1]
    let k = query[2]
    arr[a - 1] += k
    if b < arr.count {
        arr[b] += -(k)
    }
    print(arr, a, b)
}
var max = 0 
var sum = 0

for val in arr {
    sum += val
    if max < sum {
        max = sum
    }
}
return max
}
print(arrayManipulation(n: 5, queries: [[1,2,100],[2,5,100],[3,4,100]]))

print(arrayManipulation(n: 5, queries: [[1,2,100],[2,5,110],[3,4,100]]))

print(arrayManipulation(n: 5, queries: [[1,2,100],[2,5,110],[3,4,100]]))

print(arrayManipulation(n: 5, queries: [[1,2,100],[2,5,110],[3,4,101]]))
