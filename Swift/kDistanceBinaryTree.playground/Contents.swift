import UIKit


  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
      }
  }
 

class Solution {
    var arr: [Int] = []
    var steps = 0
    var found = false
    func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ K: Int) -> [Int] {
        traverse(target, 0, K)
        traverseRoot(target, 0, K)
        return arr
    }

    func traverseRoot(_ node: TreeNode? , _ step: Int, _ k : Int) {
        var step = step
        if let node = node {
            if step < k {
                step += 1
                traverseRoot(node.parent, step, k)
            }
            traverse(node, step, k)
        }
        
        
    }
    func traverse(_ node: TreeNode?,_ n: Int, _ k: Int) {
        var n = n
        if let node = node {
           if n < k {
            n += 1
            traverse(node.left, n, k)
            traverse(node.right, n, k)
           } else if n == k {
            arr.append(node.val)
            }
        }
    }
}
extension TreeNode {
 var parent: TreeNode? {
     get{return self}
     set {}}
}
