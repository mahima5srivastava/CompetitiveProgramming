extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(start, offsetBy: min(self.count - range.lowerBound, 
                                             range.upperBound - range.lowerBound))
        return String(self[start..<end])
    }

    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
         return String(self[start...])
    }
}

func commonChild(s1: String, s2: String) -> Int {

var s1Dict: [String: Int] = [:]
var s2Dict: [String: Int] = [:]
var newS1 = ""
var newS2 = ""
var maxCount = 0

//loop to make dict from s1
for val in s1 {
    s1Dict["\(val)"] = (s1Dict["\(val)"] ?? 0) + 1
}
//loop to make dict from s2
for val in s2 {
    s2Dict["\(val)"] = (s2Dict["\(val)"] ?? 0) + 1
}
// loop to eliminate uncommon elements
for val in s1 {
    if s2Dict["\(val)"] == nil {
        s1Dict["\(val)"] = nil
    } else {
        newS1.append(val)
    }
}
for val in s2 {
    if s1Dict["\(val)"] == nil {
        s2Dict["\(val)"] = nil
    } else {
        newS2.append(val)
    }
}

var shorterSubString = ""
var longerSubString = ""
if newS1.count < newS2.count {
    shorterSubString = newS1
    longerSubString = newS2
} else {
    shorterSubString = newS2
    longerSubString = newS1
}

//make substrings

var updatedStr = shorterSubString
for i in (1...shorterSubString.count).reversed() {
    for j in 0..<i {
        
        updatedStr = updatedStr[j..<i]

        print("i = \(i), j = \(j), updatedStr = \(updatedStr)")
        if longerSubString.contains("a")  {
            return updatedStr.count
        }
    }  
}
return 0
}

print(commonChild(s1: "sumit", s2: "mahima"))