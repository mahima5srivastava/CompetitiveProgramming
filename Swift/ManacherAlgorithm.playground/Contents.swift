import UIKit


class Solution {
    func longestPalindrome(_ s: String) -> String {
        guard s != String(s.reversed()) else {return s}
        let str = getModifiedString(s)
        var c = 0
        var r = 0
        var l = 0
        var maxLen = 0
        var maxR = 0
        var maxL = 0
        var p: [Int] = Array(repeating: 0, count: str.count)
        let strArr = Array(str)
        for (i, _) in str.enumerated() {
            //get mirror index of i
            let mirrorIndex = (2 * c) - i
            //see if the mirror of i is expanding beyond the left boundary of current longest palindrome at center c
            if i <= r {
                if p.count > mirrorIndex && mirrorIndex > 0 {
                    if p[mirrorIndex] > r - i {
                        p[i] = r - i
                    } else {
                        p[i] = p[mirrorIndex]
                    }
                }
            }
           
            //if it is, then take r - i as P[i]
            //else take P[mirror] as P[i]
            var leftPointer = i - p[i] - 1
            var rightPointer = i + p[i] + 1
                while leftPointer >= 0 && rightPointer < str.count && strArr[leftPointer] == strArr[rightPointer] {
                    leftPointer -= 1
                    rightPointer += 1
                    p[i] += 1
                }
                rightPointer -= 1
                leftPointer += 1
            //check if the expanded palindrome at i is expanding beyond the right boundary of current longest palindrome at center c
            //if it is, the new center is i
            
            if rightPointer > r {
                r = rightPointer
                l = leftPointer
                c = i
            }
            if maxLen < p[i] {
                maxLen = p[i]
                maxR = rightPointer
                maxL = leftPointer
            }
        }
        let outputStr = getReducedString(String(Array(strArr[maxL...maxR])))
        return outputStr
    }
    
    func getModifiedString(_ str: String) -> String {
        var newStr = ""
        for s in str {
            newStr.append("#")
            newStr.append("\(s)")
        }
        newStr.append("#")
        return newStr
    }
    func getReducedString(_ str: String) -> String {
        var newStr = ""
        for s in str {
            if "\(s)" != "#" {
                newStr += "\(s)"
            }
        }
        return newStr
    }
}
let sol = Solution()
print(sol.longestPalindrome("aaaaaaaaaaaaabaaaaaaaaaaaaabcbcbc"))
