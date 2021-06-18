import UIKit

func vowelsAndConsonants (str: String) -> (Int, Int) {
    var vowels = 0
    var consonants = 0
    let string = str.lowercased()
    string.forEach {
        if $0.isLetter {
            if $0 == "a" || $0 == "e" || $0 == "i" || $0 == "o" || $0 == "u" {
                vowels += 1
            } else {
                consonants += 1
            }
        }
    }
    return (vowels,consonants)
}

vowelsAndConsonants(str: "jamesisCOolerthanJenny2364781;(&$%#@")
