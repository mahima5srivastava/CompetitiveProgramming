/* Solution for Product of consecutive Fib numbers.
    Link: https://www.codewars.com/kata/5541f58a944b85ce6d00006a
 
 The Fibonacci numbers are the numbers in the following integer sequence (Fn):

 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, ...

 such as

 F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.

 Given a number, say prod (for product), we search two Fibonacci numbers F(n) and F(n+1) verifying

 F(n) * F(n+1) = prod.

 Your function productFib takes an integer (prod) and returns an array:

 [F(n), F(n+1), true] or {F(n), F(n+1), 1} or (F(n), F(n+1), True)
 depending on the language if F(n) * F(n+1) = prod.

 If you don't find two consecutive F(m) verifying F(m) * F(m+1) = prodyou will return

 [F(m), F(m+1), false] or {F(n), F(n+1), 0} or (F(n), F(n+1), False)
 F(m) being the smallest one such as F(m) * F(m+1) > prod.

 Some Examples of Return:
 (depend on the language)

 productFib(714) # should return (21, 34, true),
                 # since F(8) = 21, F(9) = 34 and 714 = 21 * 34

 productFib(800) # should return (34, 55, false),
                 # since F(8) = 21, F(9) = 34, F(10) = 55 and 21 * 34 < 800 < 34 * 55
 -----
 productFib(714) # should return [21, 34, true],
 productFib(800) # should return [34, 55, false],
 -----
 productFib(714) # should return {21, 34, 1},
 productFib(800) # should return {34, 55, 0},
 -----
 productFib(714) # should return {21, 34, true},
 productFib(800) # should return {34, 55, false},
 */
import Foundation


func productFib(_ prod : UInt64) -> (UInt64,UInt64,Bool) {
    
    let list = createFibonacci(till: prod)
    var start = 0
    var end = list.count - 1
    var middle = 0
    while start <= end {
        middle = (start + end)/2
        let prodSmall = list[middle] * list[middle - 1]
        let prodLarge = list[middle] * list[middle + 1]
        if prod == prodSmall {
            return (list[middle - 1], list[middle], true)
        } else if prod == prodLarge {
            return (list[middle], list[middle + 1], true)
        } else if prod < prodSmall {
            end = middle
        } else if prod > prodLarge {
            start = middle
        } else {
            return (list[middle], list[middle + 1], false)
        }
    }
    return (list[middle], list[middle + 1], false)
}

func createFibonacci(till limit: UInt64) -> [UInt64] {
    var a: UInt64 = 0
    var b: UInt64 = 1
    var c: UInt64 = 1
    var series: [UInt64] = [0,1]
    
    while c <= limit {
        c = a + b
        series.append(c)
        b = c
        a = c - a
    }
    print(series)
    return series
}
print(productFib(5895))
