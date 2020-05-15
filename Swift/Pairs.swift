/*
You will be given an array of integers and a target value. Determine the number of pairs of array elements that have a difference equal to a target value.

For example, given an array of [1, 2, 3, 4] and a target value of 1, we have three values meeting the condition: , , and .

Function Description

Complete the pairs function below. It must return an integer representing the number of element pairs having the required difference.

pairs has the following parameter(s):

k: an integer, the target difference
arr: an array of integers
Input Format

The first line contains two space-separated integers  and , the size of  and the target value.
The second line contains  space-separated integers of the array .

Constraints

each integer  will be unique
Output Format

An integer representing the number of pairs of integers whose difference is .

Sample Input

5 2  
1 5 3 4 2  
Sample Output

3
Explanation

There are 3 pairs of integers in the set with a difference of 2: [5,3], [4,2] and [3,1] .
*/
func pairs(k: Int, arr: [Int]) -> Int {
    var dict: [Int: [Int]] = [:]
    var pairCount = 0
//make a dict with key as number and value as array of indicies
for (i, val) in arr.enumerated() {
    if var indicies = dict[val] {
        indicies.append(i)
        dict[val] = indicies
    } else {
        dict[val] = [i]
    }
}
var valuesParsed : [Int] = []
//parse through the array and find target value
    for val in arr {
        let targetValue = val - k
        // if target value is same as current number then check if it has multiple values in dict. if yes then find combinations of all of them 

// if number is different from current number then check if it is there in dict. If yes then find all combinations
        if var indicies = dict[targetValue] {
            if targetValue != val {
                pairCount += indicies.count
            } else {
                if !valuesParsed.contains(val) {
                    valuesParsed.append(val)
                    pairCount += getCombinations(of: indicies.count)
                }
                
            }
        }
    }

return pairCount
}

func getCombinations(of val: Int) -> Int {
    let combinations = factorial(val) / (2 * factorial(val - 2))
    return combinations
}

func factorial(_ val: Int) -> Int {
    var fact = 1
    for i in 1...val {
        fact *= i
    }
    return fact
}
