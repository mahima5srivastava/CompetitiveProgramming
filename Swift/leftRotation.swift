/*
A left rotation operation on an array shifts each of the array's elements  unit to the left. For example, if  left rotations are performed on array , then the array would become .

Given an array  of  integers and a number, , perform  left rotations on the array. Return the updated array to be printed as a single line of space-separated integers.
*/

func rotLeft(a: [Int], d: Int) -> [Int] {
let validRotations = d % a.count
let leftArr: [Int] = Array(a[0..<validRotations])
let rightArr: [Int] = Array(a[validRotations..<a.count])
return rightArr + leftArr
}

print(rotLeft(a: [1,2,3,4,5,6,7,8,9], d: 101))

