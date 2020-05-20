func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
var prisoners = Array(1...n)
let effectiveIterations = m % n
print(effectiveIterations)
for i in 0..<effectiveIterations {
    let index = (i + s - 1) % n
    if i == (effectiveIterations - 1) {
        return index + 1
    }
}
return 0
}

print(saveThePrisoner(n: 7, m: 19, s: 2))