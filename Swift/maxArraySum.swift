func maxSubsetSum(arr: [Int]) -> Int {
var evenArr: [Int] = []
var oddArr: [Int] = []
for (i,val) in arr.enumerated() {
    if i%2 == 0 {
        evenArr.append(val)
    } else {
        oddArr.append(val)
    }
}
let evenSum = maxSum(of: evenArr)
let oddSum = maxSum(of: oddArr)
return evenSum > oddSum ? evenSum : oddSum
}
func maxSum(of arr: [Int]) -> Int {
var positiveArr : [Int] = []
var min1: Int?
var min2: Int?
var sum = 0
for val in arr {
    if val >= 0 {
        positiveArr.append(val)
        sum += val
    }
    if min1 == nil {
        min1 = val
    } else if min1! > val {
        min1 = val
    } else if min2 == nil {
        min2 = val
    } else if min2! > val {
        min2 = val
    }
}
if positiveArr.count > 1 {
    return sum
} else if positiveArr.count == 1 {
    if min1! != sum {
        return sum + min1!
    } else {
        return sum
    }
    
} else if positiveArr.count == 0 {
    if min2 == nil {
        return min1!
    } else {
        return min1! + min2!
    }
}
return 100000000
}

print(maxSubsetSum(arr: [3,5,-7,8,10]))
