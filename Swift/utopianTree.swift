/*
https://www.hackerrank.com/challenges/utopian-tree/problem
*/
func utopianTree(n: Int) -> Int {
    var cycle = 0
    var height = 1
while cycle < n {
  if cycle % 2 != 0 {
        height += 1
    } else {
        height *= 2
    }
cycle += 1
}
return height
}