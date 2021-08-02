import UIKit

//func vowelsAndConsonants (str: String) -> (Int, Int) {
//    var vowels = 0
//    var consonants = 0
//    let string = str.lowercased()
//    string.forEach {
//        if $0.isLetter {
//            if $0 == "a" || $0 == "e" || $0 == "i" || $0 == "o" || $0 == "u" {
//                vowels += 1
//            } else {
//                consonants += 1
//            }
//        }
//    }
//    return (vowels,consonants)
//}

//vowelsAndConsonants(str: "jamesisCOolerthanJenny2364781;(&$%#@")
//
//func overTheRoad(address: Int, n: Int) -> Int {
//    var evenArr: [Int] = []
//    var oddsArr: [Int] = []
//
//
//    for el in 1...(n*2) {
//        if el % 2 == 0 {
//            evenArr.append(el)
//        } else {
//            oddsArr.append(el)
//        }
//    }
//    oddsArr.reverse()
//
//
//    var index = 0
//    var counter = 0
//
//
    //    for i in evenArr {
    //        counter += 1
    //        if i == address || i == address + 1 {
    //            print(i)
    //            index = counter
    //        }
    //    }
//    print(evenArr)
//    print(oddsArr)
//    print(address, "hit")
//
//    print(index)
//
//    if address % 2 == 0 {
//        guard let index = oddsArr.firstIndex(of: 1) else {return 0}
//        return oddsArr[index]
//    } else {
//        guard let index = evenArr.firstIndex(of: 1) else {return 0}
//        return evenArr[index]
//    }
//}

//overTheRoad(address: 1, n: 3)
//overTheRoad(address: 3, n: 3)
//
//func removeDuplicates(str: String) -> String {
//    var strHolder = ""
//    str.forEach { char in
//        if strHolder.contains(char){
//
//        } else {
//            strHolder.append(char)
//        }
//    }
//    return strHolder
//}
//
//func removeDuplicatesOrderMatters(string: String) -> String {
//    return NSOrderedSet(array: Array(string)).reduce("") { $0 + "\($1)"}
//}

//removeDuplicates(str: "jjjjjaabtaw&^%##332")

//func naiveHash(_ string: String) -> Int {
//    let unicodeScalars = string.unicodeScalars.map { Int($0.value) }
//
//    return unicodeScalars.reduce(0, +)
//}
//
//func values(fromCSVString str: String) -> [String] {
//    let separators = CharacterSet(charactersIn: ",;")
//    return str.components(separatedBy: separators)
//}


//func allPossiblePermutations(str: String) -> [String]{
//    var strArr = values(fromCSVString: str)
//    var finalArr = [String].self
//
//    for (el, i) in strArr.enumerated() {
//        for j in 1...strArr.count - 1 {
//
//
//
//        }
//    }
//
//    return [""]
//}


//Write a function that prints all possible permutations of a given input string.

//Example in out:
//In: “abc”
//Out: “abc”, “acb”, “bac”, “bca”, “cab”, “cba”
//var strArr: [String] = []
//
//func permutations(left:Int, right:Int, stringyBoi:String){
//    if(left==right){
//        if !strArr.contains(stringyBoi) {
//            strArr.append(stringyBoi)
//        }
//        print(stringyBoi)
//        return
//    }
//
//
//    print(stringyBoi)
//    var newStringyBoi = stringyBoi
//    for i in Range(left...right){
//        newStringyBoi = swapCharacters(newStringyBoi, index1: left, index2: i)
//        permutations(left: left+1, right: right, stringyBoi: newStringyBoi)
//        newStringyBoi = swapCharacters(newStringyBoi, index1: left, index2: i)
//    }
//}
//func swapCharacters(_ strink: String, index1:Int, index2: Int) ->String{
//    var characters:[Character] = []
//    for i in strink{
//        characters.append(i)
//    }
//    let charindex1 = characters[index1]
//    let charindex2 = characters[index2]
//    characters[index2] = charindex1
//    characters[index1] = charindex2
//    var returnBoi = ""
//    for i in characters{
//        returnBoi += String(i)
//    }
//    return returnBoi
//}
//func giveAllPermutations(_ t: String){
//    permutations(left: 0, right: t.count-1, stringyBoi: t)
//}

//giveAllPermutations("uwqa")
//print(strArr)

//extension String {
//    func findPermutations() -> [String] {
//
//        var set = Set<[String]>()
//        let characters = self.map({ String($0) })
//        characters.permute(characters, toArray: [], set: &set)
//
//        return set.compactMap({ $0.joined(separator: "") })
//    }
//}
//
//extension Array {
//    func permute<T>(_ fromArray: [T], toArray: [T], set: inout Set<[T]>) {
//        if toArray.count >= self.count {
//            set.insert(toArray)
//        }
//        if !fromArray.isEmpty {
//            for (index, item) in fromArray.enumerated() {
//                var newFrom = fromArray
//                newFrom.remove(at: index)
//                permute(newFrom, toArray: toArray + [item], set: &set)
//            }
//        }
//    }
//}

//print("ABC".findPermutations())

//Your goal is to return multiplication table for number that is always an integer from 1 to 10.
//
//For example, a multiplication table (string) for number == 5 looks like below:
//
//func multi_table(_ number: Int) -> String {
//    return "1 * \(number) = \(number * 1)\n2 * \(number) = \(number * 2)\n3 * \(number) = \(number * 3)\n4 * \(number) = \(number * 4)\n5 * \(number) = \(number * 5)\n6 * \(number) = \(number * 6)\n7 * \(number) = \(number * 7)\n8 * \(number) = \(number * 8)\n9 * \(number) = \(number * 9)\n10 * \(number) = \(number * 10)"
//}


//Your task in this kata is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the integers is 3635.

//let stringtest = "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"
//
//func sumOfIntegersInString(_ string: String) -> Int {
//    var numStr: String = ""
//    var numToReturn = 0
//
//    for char in string {
//        if char.isNumber {
//            numStr.append(char)
//        } else {
//            if numStr.count > 0 {
//                numToReturn += Int(numStr)!
//                numStr = ""
//            }
//            numStr = ""
//        }
//    }
//
//    if numStr.count > 0 {
//        numToReturn += Int(numStr)!
//        numStr = ""
//    }
//
//    return numToReturn
//}

//An ordered sequence of numbers from 1 to N is given. One number might have deleted from it, then the remaining numbers were mixed. Find the number that was deleted.
//
//Example:
//
//The starting array sequence is [1,2,3,4,5,6,7,8,9]
//The mixed array with one deleted number is [3,2,4,6,7,8,1,9]
//Your function should return the int 5.
//If no number was deleted from the array and no difference with it, your function should return the int 0.
//
//Note: N may be 1 or less (in the latter case, the first array will be []).

//var arr = [1,2,3,4,5,6,7,8,9]
//var mixedArr = [3,2,4,6,7,8,1,9]
//
//
//func findDeletedNumber(array: [Int], mixArray: [Int]) -> Int {
//    let mixed = mixArray.sorted()
//
//    for (i, _) in mixed.enumerated() {
////        print(arry[i], el)
//        if array[i] == mixed[i] {
//
//        } else {
//            return array[i]
//        }
//    }
//    return 0
//}

//findDeletedNumber(array: arr, mixArray: mixedArr)

//sually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.
//
//Your task is to write a function maskify, which changes all but the last four characters into '#'.

//import Foundation
//
//func maskify(_ string:String) -> String {
//    var finalStr = ""
//    for (i, el) in string.enumerated() {
//        i >= string.count - 4 ? finalStr.append(el) : finalStr.append("#")
//    }
//    return finalStr
//}

//maskify("4556364607935616")

//This time no story, no theory. The examples below show you how to write function accum:
//
//Examples:
//accum("abcd") -> "A-Bb-Ccc-Dddd"
//accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
//accum("cwAt") -> "C-Ww-Aaa-Tttt"
//The parameter of accum is a string which includes only letters from a..z and A..Z.

//func accum(_ s: String) -> String {
//    var str = ""
//
//    for (i, el) in s.enumerated() {
//        for j in 0...i + 1 {
//            if j == 0 {
//                str.append(el.uppercased())
//            } else if j == i + 1 {
//                str.append("-")
//            } else {
//                str.append(el.lowercased())
//            }
//        }
//    }
//    str.popLast()
//    return str
//}

//accum("abcd")
//accum("RqaEzty")


//Simple, given a string of words, return the length of the shortest word(s).
//
//String will never be empty and you do not need to account for different data types.

//func find_short(_ str: String) -> Int
//{
//    var strHolder = ""
//    var finalStr: String = "fahsjdfgshfjghdgjffdhfgfjdfkgjfkfdfgkgfjdgfkgfjfgjghfjgjfjkgkkfgghdjhffjjffkjf"
//
//    for (i, el) in str.enumerated() {
//        if i == str.count - 1 {
//            if strHolder.count < finalStr.count {
//                finalStr = strHolder
//                strHolder = ""
//            } else {
//                strHolder = ""
//            }
//        }
//        if el == " " {
//            if strHolder.count < finalStr.count {
//                finalStr = strHolder
//                strHolder = ""
//            } else {
//                strHolder = ""
//            }
//        } else {
//            strHolder.append(el)
//        }
//    }
//    return finalStr.count
//}


//func find_short(_ str: String) -> Int {
//    var wordsArr = str.split(separator: " ")
//
//    var arr = wordsArr.map { return $0.count }
//
//    arr.sort()
//
//    return arr[0]
//}

//find_short("bitcoin take over the world maybe who knows perhaps")
//find_short("lets talk about javascript the best language")
//find_short("i want to travel the world writing code one day")

func digitalRoot(of number: Int) -> Int {
    let n = "\(number)".compactMap{ $0.wholeNumberValue }.reduce(0, +)
    
    return n > 9 ? digitalRoot(of: n) : n
}

//digitalRoot(of: 762)
