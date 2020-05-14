func sherlockAndAnagrams(s: String) -> Int {
    var dict: [String: Int] = [:]
    var str = s
    while str != "" {
        var temp: String = ""
        for ch in str {
            temp += "\(ch)"
            temp = String(temp.sorted())
            dict[temp] = (dict[temp] ?? 0) + 1
        }
        str = String(str.dropFirst())
        print("str = \(str)")
        print("dict = \(dict)")

    }
    var count = 0
    for obj in dict {
        print(obj)
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

print(sherlockAndAnagrams(s: "bcgdehhbcefeeadchgaheddegbiihehcbbdffiiiifgibhfbchffcaiabbbcceabehhiffggghbafabbaaebgediafabafdicdhg"))
