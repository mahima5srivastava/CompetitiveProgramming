/*
Sherlock considers a string to be valid if all characters of the string appear the same number of times. It is also valid if he can remove just  character at  index in the string, and the remaining characters will occur the same number of times. Given a string , determine if it is valid. If so, return YES, otherwise return NO.

For example, if , it is a valid string because frequencies are . So is  because we can remove one  and have  of each character in the remaining string. If  however, the string is not valid as we can only remove  occurrence of . That would leave character frequencies of .

Function Description

Complete the isValid function in the editor below. It should return either the string YES or the string NO.

isValid has the following parameter(s):

s: a string
Input Format

A single string .

Constraints

Each character 
Output Format

Print YES if string  is valid, otherwise, print NO.
*/


func isValid(s: String) -> String {

    var dict: [Character: Int] = [:]
    for ch in s {
        dict[ch] = (dict[ch] ?? 0) + 1
    }
    var uniqueDict: [Int: Int] = [:]

    for obj in dict {
        uniqueDict[obj.value] = (uniqueDict[obj.value] ?? 0) + 1
    }
    if uniqueDict.count < 2 {
        return "YES"
    } else if uniqueDict.count > 2 {
        return "NO"
    } else {
        var firstValue = 0
        var secondValue = 0
        var firstKey = 0
        var secondKey = 0
        for val in uniqueDict {
            if firstValue == 0 {
                firstValue = val.value
                firstKey = val.key
            } else {
                secondValue = val.value
                secondKey = val.key
            }
        }
        if (firstValue == 1 && firstKey == 1) || (secondValue == 1 && secondKey == 1) {
            return "YES"
        } else if abs(firstKey - secondKey) == 1 && (firstValue == 1 || secondValue == 1) {
            return "YES"
        } else {
            
            return "NO"
        }
    }


}


    print(isValid(s: "aaaabbcc"))
    