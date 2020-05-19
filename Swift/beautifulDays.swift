func beautifulDays(i: Int, j: Int, k: Int) -> Int {
var count = 0
for val in i...j {
    let reverseVal = Int(String("\(val)".reversed())) ?? 0
    let diff = abs(val - reverseVal)
    if diff % k == 0 {
        count += 1
    }
}
return count
}

print(beautifulDays(i:1, j:2000000 , k:1000000000 ))

