/*
You have a string of lowercase English alphabetic letters. You can perform two types of operations on the string:

Append a lowercase English alphabetic letter to the end of the string.
Delete the last character in the string. Performing this operation on an empty string results in an empty string.
Given an integer, , and two strings,  and , determine whether or not you can convert  to  by performing exactly  of the above operations on . If it's possible, print Yes. Otherwise, print No.

For example, strings  and . Our number of moves, . To convert  to , we first delete all of the characters in  moves. Next we add each of the characters of  in order. On the  move, you will have the matching string. If there had been more moves available, they could have been eliminated by performing multiple deletions on an empty string. If there were fewer than  moves, we would not have succeeded in creating the new string.

Function Description

Complete the appendAndDelete function in the editor below. It should return a string, either Yes or No.

appendAndDelete has the following parameter(s):

s: the initial string
t: the desired string
k: an integer that represents the number of operations
Input Format

The first line contains a string , the initial string.
The second line contains a string , the desired final string.
The third line contains an integer , the number of operations.

Constraints

 and  consist of lowercase English alphabetic letters, .
Output Format

Print Yes if you can obtain string  by performing exactly  operations on . Otherwise, print No.

Sample Input 0

hackerhappy
hackerrank
9
Sample Output 0

Yes
Explanation 0

We perform  delete operations to reduce string  to hacker. Next, we perform  append operations (i.e., r, a, n, and k), to get hackerrank. Because we were able to convert  to  by performing exactly  operations, we print Yes.

Sample Input 1

aba
aba
7
Sample Output 1

Yes
Explanation 1

We perform  delete operations to reduce string  to the empty string (recall that, though the string will be empty after  deletions, we can still perform a delete operation on an empty string to get the empty string). Next, we perform  append operations (i.e., a, b, and a). Because we were able to convert  to  by performing exactly  operations, we print Yes.

Sample Input 2

ashley
ash
2
Sample Output 2

No
Explanation 2

To convert ashley to ash a minimum of  steps are needed. Hence we print No as answer
*/

func appendAndDelete(s: String, t: String, k: Int) -> String {
    let initialString = Array(s)
    let finalString = Array(t)
var appendCount = 0
var deleteCount = 0
var matchingCount = 0
let maxIndex = initialString.count < finalString.count ? initialString.count : finalString.count

for i in 0..<maxIndex {
if initialString[i] == finalString[i] {
    matchingCount += 1
} else {
    break
}
}

if finalString.count > matchingCount {
    appendCount = finalString.count - matchingCount
}
deleteCount = initialString.count - matchingCount
let actionsRequired = deleteCount + appendCount
if  actionsRequired > k {
    return "No"
} else if actionsRequired == k {
    return "Yes"
} else {
    let maxActions = initialString.count + finalString.count
    let extraActions = k - actionsRequired
    if maxActions < k {
        return "Yes"
    }
    if extraActions % 2 == 0 {
        return "Yes"
    } else {
        return "No"
    }
} 

}