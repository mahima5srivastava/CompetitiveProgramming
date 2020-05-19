/* 
https://www.hackerrank.com/challenges/drawing-book/problem
*/
func pageCount(n: Int, p: Int) -> Int {
let totalPages = n % 2 == 0 ? n + 1 : n
var begining = 0
var end = 0
if (p % 2) == 0 {
    begining = p / 2
    end = (totalPages - 1 - p) / 2
} else {
    begining = (p - 1) / 2
    end = (totalPages - p) / 2
}
return begining > end ? end : begining
}