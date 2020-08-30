import UIKit
class Solution {
    func minSteps(_ n: Int) -> Int {
       guard n > 1 else {return 0}
       guard n != 0, n % 2 == 0 else {return n}
        
        var count = 1
        var str = "A"
        var copyLen = 1
        while n > str.count {
            if str.count * 2 <= n && copyLen != str.count {
                count += 1
                copyLen = str.count
            }
            count += 1
            str += String(Array(repeating: "A", count: copyLen))
        }
        return count
    }
    
}
let sol = Solution()
print(sol.minSteps(101))
print(sol.minSteps(8))
print(sol.minSteps(0))
print(sol.minSteps(1))
