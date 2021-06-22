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

//vowelsAndConsonants(str: "jamesisCOolerthanJenny2364781;(&$%#@")

func overTheRoad(address: Int, n: Int) -> Int {
    var evenArr: [Int] = []
    var oddsArr: [Int] = []
    
    
    for el in 1...(n*2) {
        if el % 2 == 0 {
            evenArr.append(el)
        } else {
            oddsArr.append(el)
        }
    }
    oddsArr.reverse()
    
    
    var index = 0
    var counter = 0
    
    
//    for i in evenArr {
//        counter += 1
//        if i == address || i == address + 1 {
//            print(i)
//            index = counter
//        }
//    }
    print(evenArr)
    print(oddsArr)
    print(address, "hit")
    
    print(index)
    
    if address % 2 == 0 {
        guard let index = oddsArr.firstIndex(of: 1) else {return 0}
        return oddsArr[index]
    } else {
        guard let index = evenArr.firstIndex(of: 1) else {return 0}
        return evenArr[index]
    }
}

//overTheRoad(address: 1, n: 3)
//overTheRoad(address: 3, n: 3)

func removeDuplicates(str: String) -> String {
    var strHolder = ""
    str.forEach { char in
        if strHolder.contains(char){
            
        } else {
            strHolder.append(char)
        }
    }
    return strHolder
}

func removeDuplicatesOrderMatters(string: String) -> String {
    return NSOrderedSet(array: Array(string)).reduce("") { $0 + "\($1)"}
}

//removeDuplicates(str: "jjjjjaabtaw&^%##332")
