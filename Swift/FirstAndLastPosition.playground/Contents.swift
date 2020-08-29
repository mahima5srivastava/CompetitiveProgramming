import Foundation
class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count > 0 else {return [-1, -1]}
        guard let index = getIndex(of: target, in: nums) else {return [-1, -1]}
        var firstIndex = index
        var lastIndex = index
        if index != 0 {
            let firstArray = Array(nums[0..<index])
            firstIndex = getFirstIndex(of: target, in: firstArray) ?? index
        }
        if index != nums.count {
            let secondArray = Array(nums[index..<nums.count])
            lastIndex = index + (getLastIndex(of: target, in: secondArray) ?? 0)
        }
        return [firstIndex, lastIndex]
        
    }
    func getFirstIndex(of target: Int, in nums: [Int]) -> Int? {
        var start = 0
        var end = nums.count - 1
        var middle = (start + end)/2
        guard let lastValue = nums.last, lastValue == target else {
            return nil
        }
        while start <= end {
            middle = (start + end)/2
            if nums[middle] == target {
                if middle - 1 > 0, nums[middle - 1] < target {
                    return middle
                } else {
                    end = middle - 1
                }
            } else if nums[middle] < target {
                if middle + 1 < nums.count, nums[middle + 1] == target {
                    middle = middle + 1
                    return middle
                } else {
                    start = middle + 1
                }
                
            }
        }
        return middle
        
    }
    func getLastIndex(of target: Int, in nums: [Int]) -> Int? {
        var start = 0
        var end = nums.count - 1
        var middle = (start + end)/2
        guard let firstValue = nums.first, firstValue == target else {
            return nil
        }
        while start <= end {
            middle = (start + end)/2
            if nums[middle] == target {
                if nums.count > middle + 1, nums[middle + 1] > target {
                    return middle
                } else {
                    start = middle + 1
                }
            } else if nums[middle] > target {
                if  (middle - 1) > 0, nums[middle - 1] == target {
                    middle = middle - 1
                    return middle
                } else {
                    end = middle - 1
                }
                
            }
        }
        return middle
        
    }
    func getIndex(of target: Int, in nums: [Int]) -> Int? {
        var start = 0
        var end = nums.count - 1
        var middle = (start + end)/2
        var found = false
        while start <= end {
            middle = (start + end)/2
            if target > nums[middle] {
                start = middle + 1
            } else if target == nums[middle] {
                found = true
                break
            } else {
                end = middle - 1
            }
        }
        if found {
            return middle
        } else {
            return nil
        }
    }

}
var sol = Solution()
print(sol.searchRange([2,2], 2))
