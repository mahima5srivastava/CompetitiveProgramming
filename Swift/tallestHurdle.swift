/*
https://www.hackerrank.com/challenges/the-hurdle-race/problem
*/
func hurdleRace(k: Int, height: [Int]) -> Int {
let tallestHurdle = height.max() ?? 0
let diff = tallestHurdle - k
if diff > 0 {
    return diff
} else {
    return 0
}

}