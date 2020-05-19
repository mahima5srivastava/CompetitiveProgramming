func dayOfProgrammer(year: Int) -> String {
var febDays = 28

if year <= 1917 {
    if year % 4 == 0 {
        febDays = 29
    } else {
        febDays = 28
    }
    return getDate(with: febDays, year: year)
} else if year == 1918 {
    return "26.09.1918"
} else {
    if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
        febDays = 29
    } else {
        febDays = 28
    }
    return getDate(with: febDays, year: year)
}

}
func getDate(with febDays: Int, year: Int) -> String {
let dict: [Int: Int] = [1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30,12: 31]
var sum = 0 
var lastMonth = 0
for key in dict.keys.sorted() {
    var found = false
    if let val = dict[key] {
        if key == 2 {
            sum += febDays
            if sum >= 256 {
                 found = true
                 sum -= febDays
             }
        } else {
             sum += val 
             if sum >= 256 {
                 found = true
                 sum -= val
             }
             
        }
    }
    if found == true {
        let day = "\(256 - sum)"
        let month = key < 10 ? "0\(key)" : "\(key)"
        let year = year
        return "\(day).\(month).\(year)"
    }
   
}
return ""
}