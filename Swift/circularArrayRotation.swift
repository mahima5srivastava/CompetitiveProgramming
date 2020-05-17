/*
https://www.hackerrank.com/challenges/circular-array-rotation/problem
*/

// Complete the circularArrayRotation function below.
func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {

var outputArr: [Int] = []
var validRotations = k % a.count
var leftArr: [Int] = Array(a[0..<(a.count - validRotations)])
var rightArr: [Int] = Array(a[(a.count - validRotations)..<a.count])
var ax = rightArr + leftArr
 for query in queries {
   outputArr.append(ax[query]) 
}
return outputArr
}