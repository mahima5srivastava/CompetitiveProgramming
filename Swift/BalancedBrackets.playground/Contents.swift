import UIKit

/*This function will check if the brackets are balanced. For Example -
 1. Input - {[()]} - returns true
 2. Input - {][} - returns false
 3. Input - ((]] - returns false
 4. Input - [(9)] - returns true
 */

func checkBalancedBrackets(in str: String) -> Bool {
    var isBalanced = true
    var bracketStack: [String] = []
    let pairs = ["}" : "{", ")" : "(", "]": "["]
    let validValues = ["{", "}", "[", "]", "(", ")"]
    for s in str {
        if !validValues.contains("\(s)") {
           continue
        }
        if s == "{" || s == "(" || s == "[" {
           bracketStack.append("\(s)")
            continue
        }
        if pairs["\(s)"] == bracketStack.last {
            bracketStack.removeLast()
            continue
        }
        isBalanced = false
        break
    }
    return isBalanced
}

print(checkBalancedBrackets(in: "{[()]}"))
print(checkBalancedBrackets(in: "{][}"))
print(checkBalancedBrackets(in: "((]]"))
print(checkBalancedBrackets(in: "[(9)]"))
