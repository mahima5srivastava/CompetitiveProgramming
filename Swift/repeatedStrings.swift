/*
Lilah has a string, , of lowercase English letters that she repeated infinitely many times.

Given an integer, , find and print the number of letter a's in the first  letters of Lilah's infinite string.

For example, if the string  and , the substring we consider is , the first  characters of her infinite string. There are  occurrences of a in the substring.

Function Description

Complete the repeatedString function in the editor below. It should return an integer representing the number of occurrences of a in the prefix of length  in the infinitely repeating string.

repeatedString has the following parameter(s):

s: a string to repeat
n: the number of characters to consider
*/

func repeatedString(s: String, n: Int) -> Int {
    var aCount = 0
    let rem = n % s.count
    let wholeString = n / s.count
    var countTillRem = 0
    for (index,str) in s.enumerated() {
        if "\(str)" == "a" {
            if index < rem {
                countTillRem += 1
            }
            aCount += 1
        }
    }
    aCount = (aCount * wholeString) + countTillRem
    return aCount
}

print(repeatedString(s: "Mahima", n: 100))