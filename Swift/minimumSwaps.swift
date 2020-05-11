/*
You are given an unordered array consisting of consecutive integers  [1, 2, 3, ..., n] without any duplicates. You are allowed to swap any two elements. You need to find the minimum number of swaps required to sort the array in ascending order.

For example, given the array  we perform the following steps:

i   arr                         swap (indices)
0   [7, 1, 3, 2, 4, 5, 6]   swap (0,3)
1   [2, 1, 3, 7, 4, 5, 6]   swap (0,1)
2   [1, 2, 3, 7, 4, 5, 6]   swap (3,4)
3   [1, 2, 3, 4, 7, 5, 6]   swap (4,5)
4   [1, 2, 3, 4, 5, 7, 6]   swap (5,6)
5   [1, 2, 3, 4, 5, 6, 7]
It took  swaps to sort the array.

Function Description

Complete the function minimumSwaps in the editor below. It must return an integer representing the minimum number of swaps to sort the array.

minimumSwaps has the following parameter(s):

arr: an unordered array of integers
Input Format

The first line contains an integer, , the size of .
The second line contains  space-separated integers .

Constraints

Output Format

Return the minimum number of swaps to sort the given array.

Sample Input 0

4
4 3 1 2
Sample Output 0

3
Explanation 0

Given array 
After swapping  we get 
After swapping  we get 
After swapping  we get 
So, we need a minimum of  swaps to sort the array in ascending order.
*/

func minimumSwaps(arr: [Int]) -> Int {
    var arr = arr
    var locDict: [Int:Int] = [:]
    var swaps = 0
    for(i, val) in arr.enumerated() {
        locDict[val] = i
    }
    for num in 1...arr.count {
        let correctPosition = num - 1
        let currentPosition = locDict[num] ?? 0
        let swapWithNum = arr[correctPosition]
        if swapWithNum != num {
            locDict[swapWithNum] = currentPosition
            locDict[num] = correctPosition
            let temp = arr[correctPosition]
            arr[correctPosition] = arr[currentPosition]
            arr[currentPosition] = temp
            swaps += 1
        }
    }
    return swaps
}
print(minimumSwaps(arr: [4,3,1,2]))
