func sherlockAndAnagrams(s: String) -> Int {
    var dict: [Mapper: Int] = [:]
    var str = s
    while str != "" {
        // var temp: String = ""
        var key: [String: Int] = []
        for ch in str {
            // temp += "\(ch)"
            key["\(ch)"] = (key["\(ch)"] ?? 0) + 1
            let map = Mapper(key)
            dict[map] = (dict[map] ?? 0) + 1
        }
        str = String(str.dropFirst())
    }
    var count = 0
 
    for obj in dict {
        if obj.value > 1 {
            count += factorial(obj.value)/(factorial(2) *  factorial(obj.value - 2))
        }
    }
return count
}


func factorial(_ n: Int) -> Int {
  guard n > 0 else {return 1}
  return (1...n).reduce(1, *)
}

struct Mapper: Equatable, Hashable {
    var dict: [String: Any] = [:]
    public var hashValue: Int = 0
    init(_ dict: [String: Any]) {
        self.dict = dict
    }
    static func == (lhs: Mapper, rhs: Mapper) -> Bool {
    var checker = lhs.dict
    for obj in rhs.dict {
        if checker[obj.key] == nil {
            return false
        } else {
            let count = ((checker[obj.key] as? Int ) ?? 0 ) - ((obj.value as? Int) ?? 0)
            if count < 0 {
                return false
            } else if count == 0 {
                checker[obj.key] = nil
            } else {
                checker[obj.key] = count
            }
            
        }
    }
    if checker.count > 0 {
        return false
    }
    return true
    
}

}

print(sherlockAndAnagrams(s: "kkkk"))

func checkAnagram(for s: String, in dict: [String: Int]) -> String? {
    let sDict = getComposition(of: s)
    for obj in dict {
        if getComposition(of: obj.key) == sDict {
            return obj.key
        }
    }
    return nil
}
func getComposition(of str: String) -> [String: Int] {
    var sDict: [String: Int] = [:]
    for ch in str {
     sDict["\(ch)"] = (sDict["\(ch)"] ?? 0) + 1
    }
    return sDict
}