func isValid(s: String) -> String {

    var dict: [Character: Int] = [:]
    for ch in s {
        dict[ch] = (dict[ch] ?? 0) + 1
    }
    var uniqueDict: [Int: Int] = [:]

    for obj in dict {
        uniqueDict[obj.value] = (uniqueDict[obj.value] ?? 0) + 1
    }
    //uniqueDict - key is numberOf times a value occurred in str, value is for how many it occurred
    print(uniqueDict)
    if uniqueDict.count < 2 {
        return "YES"
    } else if uniqueDict.count > 2 {
        return "NO"
    } else {
        var firstValue = 0
        var secondValue = 0
        var firstKey = 0
        var secondKey = 0
        for val in uniqueDict {
            if firstValue == 0 {
                firstValue = val.value
                firstKey = val.key
            } else {
                secondValue = val.value
                secondKey = val.key
            }
        }
        if (firstValue == 1 || secondValue == 1) {
            return "YES"
        } else if abs(firstKey - secondKey) == 1 && (firstValue == 1 || secondValue == 1) {
            return "YES"
        } else {
            
            return "NO"
        }
    }


}


    print(isValid(s: "aaaabbcc"))
    