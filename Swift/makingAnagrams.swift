/*
Alice is taking a cryptography class and finding anagrams to be very useful. We consider two strings to be anagrams of each other if the first string's letters can be rearranged to form the second string. In other words, both strings must contain the same exact letters in the same exact frequency For example, bacdc and dcbac are anagrams, but bacdc and dcbad are not.

Alice decides on an encryption scheme involving two large strings where encryption is dependent on the minimum number of character deletions required to make the two strings anagrams. Can you help her find this number?

Given two strings,  and , that may or may not be of the same length, determine the minimum number of character deletions required to make  and  anagrams. Any characters can be deleted from either of the strings.

For example, if  and , we can delete  from string  and  from string  so that both remaining strings are  and  which are anagrams.

Function Description

Complete the makeAnagram function in the editor below. It must return an integer representing the minimum total characters that must be deleted to make the strings anagrams.

makeAnagram has the following parameter(s):

a: a string
b: a string
*/

func makeAnagram(a: String, b: String) -> Int {
 var dict: [Character: Int] = [:]
 var removeCount = 0

 for str in a {
     dict[str] = (dict[str] ?? 0) + 1
 }
 for str in b {
     if let count = dict[str], count > 0 {
         if count-1 > 0 {
             dict[str] = count - 1
         } else {
             dict[str] = nil
         }
     } else {
         removeCount += 1
     }
 }
 for obj in dict {
     removeCount += obj.value
 }
 return removeCount
}