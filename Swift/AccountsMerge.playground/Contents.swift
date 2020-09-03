import UIKit

class Solution {
    func accountsMerge(_ accounts: [[String]]) -> [[String]] {
        var mergedAccounts: [[String]] = []
        var dict: [String: (counter: [Int], name: String)] = [:]
        
        for (i, account) in accounts.enumerated() {
            var name = ""
            for (j, info) in account.enumerated() {
                if j == 0 {
                    name = ""
                } else {
                    if var existingInfo = dict[info] {
                        existingInfo.counter.append(i)
                        dict[info] = existingInfo
                    } else {
                        dict[info] = (counter: [i], name: name)
                    }
                }
            }
        }
        var graph: [Int] = Array(repeating: -1, count: dict.keys.count + 1)
        for (_, info) in dict {
            var pointer = info.counter.first ?? -1
            for index in info.counter {
                if graph[index] == -1 {
                    graph[index] = index
                } else {
                    while graph[pointer] != pointer {
                        pointer = graph[pointer]
                    }
                    for i in info.counter {
                        graph[i] = pointer
                    }
                    break
                }
            }
        }
        for (i, _) in graph.enumerated() {
            var pointer = i
            while pointer != graph[pointer] {
                pointer = graph[pointer]
            }
            for (index, email) in accounts[i].enumerated() {
                if index != 0 {
                    mergedAccounts[pointer].append(email)
                }
            }
            mergedAccounts.remove(at: i)
        }
        
        return mergedAccounts
    }
}


let sol = Solution()
print(sol.accountsMerge([["David","David0@m.co","David1@m.co"],["David","David3@m.co","David4@m.co"],["David","David4@m.co","David5@m.co"],["David","David2@m.co","David3@m.co"],["David","David1@m.co","David2@m.co"]]))
