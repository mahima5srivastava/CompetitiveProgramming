import UIKit

class Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var taskCounter: [Character: Int] = [:]
        var steps = 0
        var lastNTasks: [Character] = []
        for task in tasks {
            taskCounter[task] = (taskCounter[task] ?? 0) + 1
        }
        var taskCounterArr : [(task: Character, rem: Int)] = []
        for task in taskCounter {
            taskCounterArr.append((task: task.key, rem: task.value))
        }
        taskCounterArr.sort { (val1, val2) -> Bool in
            return val1 > val2
        }
        var iteration = 0
        while  {
            <#code#>
        }
        for (i, task) in taskCounterArr.enumerated() {
            if task.rem == 0 {
                break
            }
            if lastNTasks.contains(task.task) {
                lastNTasks.append("#")
            } else if task.rem != 0{
                lastNTasks.append(task)
                taskCounterArr[i].rem -= 1
            }
            if lastNTasks.count > n {
                lastNTasks.removeFirst()
            }
            iteration += 1
            if iteration >= n {
                break
            }
        }
        return steps
    }
}
