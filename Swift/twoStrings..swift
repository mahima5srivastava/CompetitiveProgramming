/*
Given two strings, determine if they share a common substring. A substring may be as small as one character.

For example, the words "a", "and", "art" share the common substring . The words "be" and "cat" do not share a substring.

Function Description

Complete the function twoStrings in the editor below. It should return a string, either YES or NO based on whether the strings share a common substring.

twoStrings has the following parameter(s):

s1, s2: two strings to analyze .
Input Format

The first line contains a single integer , the number of test cases.

The following  pairs of lines are as follows:

The first line contains string .
The second line contains string .
Constraints

 and  consist of characters in the range ascii[a-z].
Output Format

For each pair of strings, return YES or NO.
*/

func twoStrings(s1: String, s2: String) -> String {
var isSubstring = false
var countDict: [String: Int] = [:]
for val in s1 {
    countDict["\(val)"] = (countDict["\(val)"] ?? 0) + 1
}

for val in s2 {
    if let count = countDict["\(val)"] {
        isSubstring = true
        break
    }
}
return isSubstring ? "YES" : "NO"
}