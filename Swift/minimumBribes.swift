func minimumBribes(q: [Int]) -> Void {
    var bribeTakenDict: [Int: Int] = [:]
    var swaps = 0
    var isTooChaotic = false

    for (index,val) in q.enumerated() {
        if val - (index + 1) > 2 {
            isTooChaotic = true
        }
    }

    if isTooChaotic == false {

        for (index, val) in q.enumerated() {
            let newIndex = val > 1 ? val - 2 : val - 1
            print("index = \(index), newIndex = \(newIndex)")
            if newIndex < index && newIndex >= 0 {
                for i in newIndex..<index {
                     print("i = \(i), q[i] = \(q[i]), val = \(val)")
                     if q[i] > val {
                        bribeTakenDict[val] = (bribeTakenDict[val] ?? 0) + 1
                    }
                }
            }     
        }
        print("bribeTakenDict = \(bribeTakenDict)")
        for val in bribeTakenDict {
                swaps += val.value
            }
        }

    isTooChaotic ? print("Too chaotic") : print(swaps)
}
minimumBribes(q: [2,1,5,3,4])