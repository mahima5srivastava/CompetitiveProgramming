/*
https://www.hackerrank.com/challenges/library-fine/problem
*/


func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {

if y1 < y2 {
 return 0
} else if y1 == y2 {
    if m1 < m2 {
        return 0
    } else if m1 == m2 {
        if d1 <= d2 {
            return 0
        } else {
            return 15 * (d1 - d2)
        }
    } else { //m1 > m2
            return 500 * (m1 - m2)
    }
} else {
    return 10000
}
}