/*
You are given a string containing characters  and  only. Your task is to change it into a string such that there are no matching adjacent characters. To do this, you are allowed to delete zero or more characters in the string.

Your task is to find the minimum number of required deletions.

For example, given the string , remove an  at positions  and  to make  in  deletions.

Function Description

Complete the alternatingCharacters function in the editor below. It must return an integer representing the minimum number of deletions to make the alternating string.

alternatingCharacters has the following parameter(s):

s: a string
*/

func alternatingCharacters(s: String) -> Int {
var removeCount = 0
var prev: Character?

for ch in s {
    if prev == nil {
        prev = ch
    }else if prev == ch {
        removeCount += 1 
    }
    prev = ch
}
return removeCount
}

print(alternatingCharacters(s: "mahimaaaaa"))

