import UIKit

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var currentNode = l1
        var arrL1: [Int] = []
        var arrL2: [Int] = []
        while currentNode != nil {
            arrL1.append(currentNode!.val)
            currentNode = currentNode!.next
        }
        currentNode = l2
        while currentNode != nil {
            arrL2.append(currentNode!.val)
            currentNode = currentNode!.next
        }
        var sumArr: [Int] = []
        if arrL1.count > arrL2.count {
            sumArr = add(arrL2, arrL1)
        } else {
            sumArr = add(arrL1, arrL2)
        }
        var head: ListNode?
        var current: ListNode?
        for num in sumArr {
            let node = ListNode(num)
            if head == nil {
                head = node
                current = node
            } else {
                current!.next = node
                current = current!.next
            }
        }
        return head
    }
    func add(_ smallList: [Int], _ largeList: [Int]) -> [Int]{
        var sumArr: [Int] = []
        var carry = 0
        for (i,lVal) in largeList.enumerated() {
                var sVal = 0
                if smallList.count > i {
                   sVal = smallList[i]
                }
                let sum = sVal + lVal + carry
                carry = 0
                if sum <= 9 {
                    sumArr.append(sum)
                } else {
                    carry = sum / 10
                    sumArr.append(sum % 10)
                    if i == largeList.count - 1 {
                        sumArr.append(carry)
                    }
                }
        }
        return sumArr
    }
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

let sol = Solution()
let firstList = ListNode(4)
let secondList = ListNode(5)
let ouputList = sol.addTwoNumbers(firstList, secondList)
var current = ouputList
while current != nil {
    print(current!.val)
    current = current!.next
}
