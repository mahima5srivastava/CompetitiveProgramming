/*
You are given  queries. Each query is of the form two integers described below:
-  : Insert x in your data structure.
-  : Delete one occurence of y from your data structure, if present.
-  : Check if any integer is present whose frequency is exactly . If yes, print 1 else 0.

The queries are given in the form of a 2-D array  of size  where  contains the operation, and  contains the data element. For example, you are given array . The results of each operation are:

Operation   Array   Output
(1,1)       [1]
(2,2)       [1]
(3,2)                   0
(1,1)       [1,1]
(1,1)       [1,1,1]
(2,1)       [1,1]
(3,2)                   1
Return an array with the output: .

Function Description

Complete the freqQuery function in the editor below. It must return an array of integers where each element is a  if there is at least one element value with the queried number of occurrences in the current array, or 0 if there is not.

freqQuery has the following parameter(s):

queries: a 2-d array of integers
Input Format

The first line contains of an integer , the number of queries.
Each of the next  lines contains two integers denoting the 2-d array .

Constraints

All 
Output Format

Return an integer array consisting of all the outputs of queries of type .
*/

func freqQuery(queries: [[Int]]) -> [Int] {
var dict: [Int: Int] = [:]
var freqDict: [Int: Int] = [:]
var outputArray: [Int] = []
for query in queries {
    let operation = query[0]
    let val = query[1]
    switch operation {
        case 1:
            let newFreq = (dict[val] ?? 0) + 1
            let oldFreq = dict[val] ?? 0
            dict[val] = newFreq
            var updatedOldFreq = (freqDict[oldFreq] ?? 1) - 1
            if updatedOldFreq < 0 {
                updatedOldFreq = 0
            }
            freqDict[oldFreq] = updatedOldFreq
            freqDict[newFreq] = (freqDict[newFreq] ?? 0) + 1
        case 2: 
            if let oldFreq = dict[val], oldFreq > 0 {
                let newFreq = oldFreq - 1
                dict[val] = newFreq
                            var updatedOldFreq = (freqDict[oldFreq] ?? 1) - 1
            if updatedOldFreq < 0 {
                updatedOldFreq = 0
            }
            freqDict[oldFreq] = updatedOldFreq
            freqDict[newFreq] = (freqDict[newFreq] ?? 0) + 1
            }
            
            

        case 3:
        if let dictVal = freqDict[val], dictVal > 0 {
            outputArray.append(1)
        } else {
            outputArray.append(0)
        }
        default: break
    }

}
return outputArray
}