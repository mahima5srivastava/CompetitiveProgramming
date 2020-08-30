import UIKit

func longestPalindrome(_ s: String) -> String {
    var pal = ""
    var l = 0
    var dict: [String: [Int]] = [:]
    for (i, ch) in s.enumerated() {
        let str = "\(ch)"
        if let indicies = dict[str]{
            if let firstIndex = indicies.first, i - firstIndex > l {
                for index in indicies {
                    if (i - index) > l {
                        let subStr = String(Array(s)[index...i])
                        if checkPallindrome(subStr) {
                            l = i - index
                            pal = String(Array(s)[index...i])
                        }
                    } else {
                        break
                    }
                }
            }

            let newArr = indicies + [i]
            dict[str] = newArr
        } else {
            dict[str] = [i]
        }
    }
    return pal
}

func checkPallindrome(_ str: String) -> Bool {
    return str == String(str.reversed())
}


//print(longestPalindrome("abbacddc"))
print(longestPalindrome("zudfweormatjycujjirzjpyrmaxurectxrtqedmmgergwdvjmjtstdhcihacqnothgttgqfywcpgnuvwglvfiuxteopoyizgehkwuvvkqxbnufkcbodlhdmbqyghkojrgokpwdhtdrwmvdegwycecrgjvuexlguayzcammupgeskrvpthrmwqaqsdcgycdupykppiyhwzwcplivjnnvwhqkkxildtyjltklcokcrgqnnwzzeuqioyahqpuskkpbxhvzvqyhlegmoviogzwuiqahiouhnecjwysmtarjjdjqdrkljawzasriouuiqkcwwqsxifbndjmyprdozhwaoibpqrthpcjphgsfbeqrqqoqiqqdicvybzxhklehzzapbvcyleljawowluqgxxwlrymzojshlwkmzwpixgfjljkmwdtjeabgyrpbqyyykmoaqdambpkyyvukalbrzoyoufjqeftniddsfqnilxlplselqatdgjziphvrbokofvuerpsvqmzakbyzxtxvyanvjpfyvyiivqusfrsufjanmfibgrkwtiuoykiavpbqeyfsuteuxxjiyxvlvgmehycdvxdorpepmsinvmyzeqeiikajopqedyopirmhymozernxzaueljjrhcsofwyddkpnvcvzixdjknikyhzmstvbducjcoyoeoaqruuewclzqqqxzpgykrkygxnmlsrjudoaejxkipkgmcoqtxhelvsizgdwdyjwuumazxfstoaxeqqxoqezakdqjwpkrbldpcbbxexquqrznavcrprnydufsidakvrpuzgfisdxreldbqfizngtrilnbqboxwmwienlkmmiuifrvytukcqcpeqdwwucymgvyrektsnfijdcdoawbcwkkjkqwzffnuqituihjaklvthulmcjrhqcyzvekzqlxgddjoir"))

