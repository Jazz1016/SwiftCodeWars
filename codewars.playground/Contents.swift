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
//
//func digitalRoot(of number: Int) -> Int {
//    let n = "\(number)".compactMap{ $0.wholeNumberValue }.reduce(0, +)
//
//    return n > 9 ? digitalRoot(of: n) : n
//}

//digitalRoot(of: 762)

//Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.
//
//For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.
//
//[10, 343445353, 3453445, 3453545353453] should return 3453455.

//func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
//    let sortedArr = array.sorted()
//
//    return sortedArr[0] + sortedArr[1]
//}

//func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
//    let sortedArr = array.sorted()
//
//    return sortedArr[0] + sortedArr[1]
//}
//sumOfTwoSmallestIntegersIn([5, 8, 12, 18, 22])

//Each day a plant is growing by upSpeed meters. Each night that plant's height decreases by downSpeed meters due to the lack of sun heat. Initially, plant is 0 meters tall. We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.
//
//Example
//For upSpeed = 100, downSpeed = 10 and desiredHeight = 910, the output should be 10.

//func growingPlant(_ upSpeed: Int, _ downSpeed: Int, _ desiredHeight: Int) -> Int {
//    var days = 1
//    var currentHeight = 0
//    func checkPlantGrowth(){
//        if currentHeight < desiredHeight {
//            currentHeight += upSpeed
//            if currentHeight < desiredHeight {
//                currentHeight -= downSpeed
//                days += 1
//                checkPlantGrowth()
//            } else {
//                return
//            }
//        } else {
//            return
//        }
//    }
//    checkPlantGrowth()
//
//    return days
//}

//func growingPlant(_ upSpeed: Int, _ downSpeed: Int, _ desiredHeight: Int) -> Int {
//    var days = 1
//    var currentHeight = 0
//
//    while currentHeight <= desiredHeight {
//        currentHeight = currentHeight + upSpeed
//        if currentHeight < desiredHeight {
//            days += 1
//            currentHeight - downSpeed + upSpeed
//        } else {
//
//        }
//    }
//    return days
//}
//
//
//
//growingPlant(100, 10, 910) //10
//growingPlant(10, 9, 4) //1
//growingPlant(5, 2, 5) // 1
//growingPlant(5, 2, 6) // 2
//growingPlant(67, 21, 818) // 18


//Definition
//Balanced number is the number that * The sum of all digits to the left of the middle digit(s) and the sum of all digits to the right of the middle digit(s) are equal*.
//
//Task
//Given a number, Find if it is Balanced or not .
//
//Warm-up (Highly recommended)
//Playing With Numbers Series
//Notes
//If the number has an odd number of digits then there is only one middle digit, e.g. 92645 has middle digit 6; otherwise, there are two middle digits , e.g. 1301 has middle digits 3 and 0
//
//The middle digit(s) should not be considered when determining whether a number is balanced or not, e.g 413023 is a balanced number because the left sum and right sum are both 5.
//
//Number passed is always Positive .
//
//Return the result as String
//
//Input >> Output Examples
//(balanced-num 7) ==> return "Balanced"
//Explanation:
//Since , The sum of all digits to the left of the middle digit (0)
//
//and the sum of all digits to the right of the middle digit (0) are equal , then It's Balanced
//
//(balanced-num 295591) ==> return "Not Balanced"
//Explanation:
//Since , The sum of all digits to the left of the middle digits (11)
//
//and the sum of all digits to the right of the middle digits (10) are Not equal , then It's Not Balanced
//
//Note : The middle digit(s) are 55 .

//func balancedNumber(_ number: Int) -> String {
//    var numStr = "\(number)"
//    var leftSide = 0
//    var rightSide = 0
//
//    if numStr.count % 2 == 0 {
//
//
//    } else {
//
//
//
//    }
//
//    return ""
//}

//Don't give me five!
//In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!
//
//Examples:
//
//1,9 -> 1,2,3,4,6,7,8,9 -> Result 8
//4,17 -> 4,6,7,8,9,10,11,12,13,14,16,17 -> Result 12
//The result may contain fives. ;-)
//The start number will always be smaller than the end number. Both numbers can be also negative!
//
//I'm very curious for your solutions and the way you solve it. Maybe someone of you will find an easy pure mathematics solution.
//
//Have fun coding it and please don't forget to vote and rank this kata! :-)
//
//I have also created other katas. Take a look if you enjoyed this kata!

func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    var counter = 0
    for i in start...end {
        if "\(i)".contains("5") {

        } else {
            counter += 1
        }
    }

    return counter
}

//dontGiveMeFive(4,17)
//dontGiveMeFive(1,9)
//dontGiveMeFive(1,4)
//dontGiveMeFive(3, 10)

//Your task is to write function findSum.
//
//Upto and including n, this function will return the sum of all multiples of 3 and 5.
//
//For example:
//
//findSum(5) should return 8 (3 + 5)
//
//findSum(10) should return 33 (3 + 5 + 6 + 9 + 10)

func findSum(_ n: Int) -> Int {
    var num = 0
    
    for i in 0...n {
        if i % 3 == 0 || i % 5 == 0 {
            num += i
        }
    }
    
    return num
}

//findSum(5)
//
//Write function replaceAll (Python: replace_all) that will replace all occurrences of an item with another.
//
//Python / JavaScript: The function has to work for strings and lists.
//
//Example: replaceAll [1,2,2] 1 2 -> in list [1,2,2] we replace 1 with 2 to get new list [2,2,2]
//
//replaceAll(replaceAll(array: [1,2,2], old: 1, new: 2) // [2,2,2]

func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
    
    let newArr = array.map { el -> T in
        if el == old {
            return new
        } else {
            return el
        }
    }
    
    return newArr
}

//replaceAll(array: ["ooh", "la", "la"], old: "la", new: "baby")

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    
    return []
}

//Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
//
//Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

func reverse(_ x: Int) -> Int {
    var num = x
    var numBool = true
    if x < 0 {
        num = num * -1
        numBool.toggle()
    }
    var finalNum: String = ""
    
    for i in 0..<"\(num)".count {
        var digit = num % 10
        finalNum.append("\(digit)")
        num = num/10
    }
    
    if Int(finalNum) ?? 0 > Int32.max {
        return 0
    }
    
    if numBool {
        return Int(finalNum) ?? 0
    } else {
        finalNum = "-\(finalNum)"
        return Int(finalNum) ?? 0
    }
}
//
//reverse(1534236469)

//reate a function oddOne that takes an [Int] as input and outputs the index at which the sole odd number is located.
//
//This method should work with arrays with negative numbers. If there are no odd numbers in the array, then the method should output nil.

func oddOne(_ arr: [Int]) -> Int? {
    for (i, el) in arr.enumerated() {
        if el % 2 != 0 {
        return i
        }
    }
    return nil
}
//
//oddOne([2,4,6,7,10])
//oddOne([2,16,98,10,13,78])
//

func booleanToString(_ b: Bool) -> String {
    return "\(b)"
}

booleanToString(true)

//Modify the spacify function so that it returns the given string with spaces inserted between each character.
//
//spacify("hello world") // "h e l l o   w o r l d"

func spacify(_ str: String) -> String {
    var finalStr = ""
    for (_, el) in str.enumerated() {
        finalStr.append(String(el) + " ")
    }
    if finalStr.count > 0 {
        finalStr.removeLast()
    }
    return finalStr
}

spacify("hello world")

//Create a function add(n)/Add(n) which returns a function that always adds n to any number
//
//Note for Java: the return type and methods have not been provided to make it a bit more challenging.

//func add(_ n: Int) -> ((Int) -> Int) {
//    func addOne(num: Int) -> Int {
//
//        return num + 1
//    }
//
//    return addOne(num: )
//}

//func add(_ n: Int) -> ((Int) -> Int) {
//    func a(_ b: Int) -> Int { return n + b }
//    return a(_:)
//}

//add(5)(10)


//Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

func boolToWord(_ bool: Bool) -> String {
    if bool {
        return "yes"
    } else {
        return "no"
    }
}

//boolToWord(true)
//boolToWord(false)

//Given the triangle of consecutive odd numbers:

//func rowSumOddNumbers(_ row: Int) -> Int {
//    var oddNums: [Int] = []
//    var currentNum = 1
//    for i in 0...row {
//        for j in 0...i {
//            print(j)
//            if j % 2 != 0 {
//                oddNums.append(currentNum)
//                currentNum += 2
//            }
//        }
//    }
//    print(oddNums)
//
//    return 0
//}
//
//func rowSumOddNumbers(_ row: Int) -> Int {
//    var currentNumber = 1
//    var sum = 0
//    for r in 1...row {
////        print(row, r)
//        for _ in 1...r {
//            if r == row {
//                sum += currentNumber
//            }
////            print(currentNumber)
//            currentNumber += 2
//        }
//    }
//    return sum
//}

//rowSumOddNumbers(2)
//rowSumOddNumbers(3)
//rowSumOddNumbers(4)

func getAverage(_ marks: [Int]) -> Int {
    return marks.reduce(0, +)/marks.count
}

getAverage([2,2,2,2])
getAverage([1,2,3,4,5,])
getAverage([1,1,1,1,1,1,1,2])

//Determine the total number of digits in the integer (n>=0) given as input to the function. For example, 9 is a single digit, 66 has 2 digits and 128685 has 6 digits. Be careful to avoid overflows/underflows.
//
//All inputs will be valid.

func digits(num n: UInt64) -> Int {
    return "\(n)".count
}

//digits(num: 12345)
//digits(num: 9876543210)

var tupleTest = (1, "Test", 2.3)

tupleTest.1

//Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.
//
//Example:
//
//Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    return arr.flatMap{ $0 }.sorted()
}

//flattenAndSort([[3, 2, 1], [7, 9, 8], [6, 4, 5]])
//var six: Double = 5
//var doub: Double = 2
//
//var result = six / doub
//print(type(of: result))

func testFunc(bool: Bool) -> Any {
    if bool {
        return ""
    } else {
        return 1
    }
}

//testFunc(bool: true)
//testFunc(bool: false)

//Write a method that will search an array of strings for all strings that contain another string, ignoring capitalization. Then return an array of the found strings.
//
//The method takes two parameters, the query string and the array of strings to search, and returns an array.
//
//If the string isn't contained in any of the strings in the array, the method returns an array containing a single string: "Empty" (or Nothing in Haskell, or "None" in Python and C)

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    let filtered = arr.filter{ $0.lowercased().contains(str.lowercased()) }
    if filtered.count == 0 {
        return ["Empty"]
    } else {
        return filtered
    }
}

//wordSearch("ab", ["za", "ab", "abc", "zab", "zbc"])
//wordSearch("aB", ["za", "ab", "abc", "zab", "zbc"])
//wordSearch("ab", ["za", "aB", "Abc", "zAB", "zbc"])
//wordSearch("me", ["home", "milk", "Mercury", "fish"])

//Your task is to add up letters to one letter.
//
//The function will be given an Array<Character>, each one being a letter to add, and the function will return a Character.
//
//Notes:
//Letters will always be lowercase.
//Letters can overflow (see second to last example of the description)
//If no letters are given, the function should return 'z'

func addLetters(_ letters: [Character]) -> Character {
    if letters.count == 0 {
        return Character("z")
    }
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var num: Int = 0
    for i in letters {
        num += alphabet.firstIndex(of: String(i)) ?? 0
        num += 1
    }
    if num % 26 != 0 && num > 26 {
        let numDivisor: Int = num/26
        num -= numDivisor * 26
    }
    return Character(alphabet[num - 1])
}

//addLetters(["a", "b", "c"])
//addLetters(["z"])
//addLetters(["a", "b"])
//addLetters(["y", "c", "b"])
//addLetters(["z", "b", "g", "x"])
//addLetters([])

//Write a function that takes two strings, A and B, and returns the length of the longest possible substring that can be formed from the concatenation of either A + B or B + A containing only characters that do not appear in both A and B.

func longestSubstring(_ a: String, _ b: String) -> Int {
    var finalStr = ""
    var str = ""
    var noDuplicates = ""
    let first = a + b
    let second = b + a
    
    for i in b {
        if !a.contains(i) {
            noDuplicates.append(i)
        }
    }
    for i in a {
        if !b.contains(i) {
            noDuplicates.append(i)
        }
    }
    for (_, el) in first.enumerated() {
        if noDuplicates.contains(el) {
            str.append(el)
            if str.count > finalStr.count {
                finalStr = str
            }
        } else {
            str = ""
        }
    }
    for (_, el) in second.enumerated() {
        if noDuplicates.contains(el) {
            str.append(el)
            if str.count > finalStr.count {
                finalStr = str
            }
        } else {
            str = ""
        }
    }
    return finalStr.count
}

//longestSubstring("piquancy", "refocusing")
//longestSubstring("aerospace", "ominous")

//Jaden Smith, the son of Will Smith, is the star of films such as The Karate Kid (2010) and After Earth (2013). Jaden is also known for some of his philosophy that he delivers via Twitter. When writing on Twitter, he is known for almost always capitalizing every word. For simplicity, you'll have to capitalize each word, check out how contractions are expected to be in the example below.
//
//Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.

extension String {
    func toJadenCase() -> String {
        var strArr = self.split(separator: Character(" "))
        for i in 0..<strArr.count {
            strArr[i] = strArr[i].prefix(1).capitalized + strArr[i].dropFirst(1)
        }
        return strArr.joined(separator: " ")
    }
}

//We will call a natural number a "doubleton number" if it contains exactly two distinct digits. For example, 23, 35, 100, 12121 are doubleton numbers, and 123 and 9980 are not.
//
//For a given natural number n (from 1 to 1 000 000), you need to find the next doubleton number. If n itself is a doubleton, return the next bigger than n.

func doubleton(_ num: Int) -> Int {
    var numStr = ""
    for i in num + 1...1000000 {
        numStr = ""
        for j in "\(i)" {
            if !numStr.contains(j) {
                numStr.append(j)
            }
        }
        if numStr.count == 2 {
            return i
        }
    }
    return 0
}

//doubleton(120)
//doubleton(1234)
//doubleton(10)

//ask
//You'll have to translate a string to Pilot's alphabet (NATO phonetic alphabet).
//
//Input:
//
//If, you can read?
//
//Output:
//
//India Foxtrot , Yankee Oscar Uniform Charlie Alfa November Romeo Echo Alfa Delta ?
//
//Note:
//
//There are preloaded dictionary you can use, named NATO
//The set of used punctuation is ,.!?.
//Punctuation should be kept in your return string, but spaces should not.
//Xray should not have a dash within.
//Every word and punctuation mark should be seperated by a space ' '.
//There should be no trailing whitespace

func toNato(_ words: String) -> String {
    var str = ""
    for i in words {
        switch i.lowercased() {
        case "a":
            str.append("Alfa ")
        case "b":
            str.append("Bravo ")
        case "c":
            str.append("Charlie ")
        case "d":
            str.append("Delta ")
        case "e":
            str.append("Echo ")
        case "f":
            str.append("Foxtrot ")
        case "g":
            str.append("Golf ")
        case "h":
            str.append("Hotel ")
        case "i":
            str.append("India ")
        case "j":
            str.append("Juliett ")
        case "k":
            str.append("Kilo ")
        case "l":
            str.append("Lima ")
        case "m":
            str.append("Mike ")
        case "n":
            str.append("November ")
        case "o":
            str.append("Oscar ")
        case "p":
            str.append("Papa ")
        case "q":
            str.append("Quebec ")
        case "r":
            str.append("Romeo ")
        case "s":
            str.append("Sierra ")
        case "t":
            str.append("Tango ")
        case "u":
            str.append("Uniform ")
        case "v":
            str.append("Victor ")
        case "w":
            str.append("Whiskey ")
        case "x":
            str.append("Xray ")
        case "y":
            str.append("Yankee ")
        case "z":
            str.append("Zulu ")
        case "1":
            str.append("One ")
        case "2":
            str.append("Two ")
        case "3":
            str.append("Three ")
        case "4":
            str.append("Four ")
        case "5":
            str.append("Five ")
        case "6":
            str.append("Six ")
        case "7":
            str.append("Seven ")
        case "8":
            str.append("Eight ")
        case "9":
            str.append("Nine ")
        case "0":
            str.append("Zero ")
        case ",":
            str.append(", ")
        case ".":
            str.append(". ")
        case "!":
            str.append("! ")
        case "?":
            str.append("? ")
        case "(":
            str.append("( ")
        case ")":
            str.append(") ")
        case "\"":
            str.append("\" ")
        default:
            break
        }
    }
    str.removeLast()
    
    return str
}

//toNato("If you can read")
//toNato("Did not see that coming")

func inviteMoreWomen(_ arr: [Int]) -> Bool {
    let num = arr.reduce(0, { $0 + $1 })

    let number = arr.enumerated().reduce(0, {$0 + $1.element + $1.offset})
    print(number)
    return num > 0 ? true : false
}

//inviteMoreWomen([1, -1, 1, -1, -1, -1])
//inviteMoreWomen([-1, -1, -1])

//In this kata you need to write a function that will receive two strings (n1 and n2), each representing an integer as a binary number. A third parameter will be provided (o) as a string representing one of the following operators: add, subtract, multiply.
//
//Your task is to write the calculate function so that it will perform the arithmetic and the result returned should be a string representing the binary result.

//enum Operator {
//    case ADD, SUBTRACT, MULTIPLY
//}
//
//func calculate(_ a:String, _ b:String, _ op:Operator) -> String {
//
//
//
//
//    return ""
//}
//
//
//calculate("1", "1", .ADD)
//calculate("1", "1", .MULTIPLY)
//calculate("10", "10", .MULTIPLY)
//calculate("100", "10", .SUBTRACT)

//Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (like the name of this kata).
//
//Strings passed in will consist of only letters and spaces.
//Spaces will be included only when more than one word is present.

func spinWords(in sentence: String) -> String {
    var spunWords = sentence.components(separatedBy: " ").map({ $0.count >= 5 ? String($0.reversed()) : $0 }).reduce("", {$0 + $1 + " "})
    spunWords.removeLast()
    return spunWords
}
//spinWords(in: "Hey fellow warriors")
//spinWords(in: "This is a test")
//spinWords(in: "This is another test")
//    for (i, el) in wordArr.enumerated() {
//        print(el)
//        if el.count >= 5 {
//            let reversed = String(el.reversed())
//            wordArr[i] = reversed
//        }
//    }

//There is an array with some numbers. All numbers are equal except for one. Try to find it!
//
//findUniq([ 1, 1, 1, 2, 1, 1 ]) == 2
//findUniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
//It’s guaranteed that array contains at least 3 numbers.
//
//The tests contain some very huge arrays, so think about performance.

func findUniq(_ arr: [Double]) -> Double {
    return arr.reduce(0.0, { $1 != arr[0] && $1 != arr[1] ? $0 + $1 : $0 + 0 })
}
//findUniq([ 1, 1, 1, 2, 1, 1 ])
//findUniq([ 0, 0, 0.55, 0, 0 ])
//findUniq([ 3, 10, 3, 3, 3 ])

//Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

func comp(_ a: [Int], _ b: [Int]) -> Bool {

    for i in a {
        if b.contains(i * i) {
            continue
        } else {
            return false
        }
    }

    for i in b {
        if a.contains(Int(sqrt(Double(i)))) {
            continue
        } else {
            return false
        }
    }

    return true
}

//func comp(_ a: [Int], _ b: [Int]) -> Bool {
//    let sortedA = a.sorted()
//    let sortedB = b.sorted()
//    print(sortedA)
//    print(sortedB)
//    for (i, el) in sortedA.enumerated() {
//        print(el * el, sortedB[i])
//        if el * el != sortedB[i] {
//            return false
//        }
//    }
//    return true
//}
//true
//comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361])

//false
//comp([4, 4], [1, 31])
//comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361])
//comp([11, 19, 121, 144, 161, 1008], [121, 361, 14641, 20736, 25921, 36100])
//comp([1, 4, 2, 6, 5, 7, 5, 7], [1, 16, 4, 36, 25, 49, 25, 49, 50])


//You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    var str = ""
    
    for (i, _) in strarr.enumerated() {
        if i + k > strarr.count {
            break
        }

        var stringToCheck = ""
        for j in 0..<k {
            stringToCheck += strarr[i + j]
        }
        
        if stringToCheck.count > str.count {
            str = stringToCheck
        }
    }
    return str
}

//longestConsec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)
//longestConsec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2)
//longestConsec([], 3)


//Some new cashiers started to work at your restaurant.
//
//They are good at taking orders, but they don't know how to capitalize words, or use a space bar!
//
//All the orders they create look something like this:
//
//"milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"
//
//The kitchen staff are threatening to quit, because of how difficult it is to read the orders.
//
//Their preference is to get the orders as a nice clean string with spaces and capitals like so:
//
//"Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"
//
//The kitchen staff expect the items to be in the same order as they appear in the menu.

func getOrder(_ input: String) -> String {
    func numFunc(str: String) -> Int {
        switch str {
        case "Burger":
        return 1
        case "Fries":
        return 2
        case "Chicken":
        return 3
        case "Pizza":
        return 4
        case "Sandwich":
        return 5
        case "Onionrings":
        return 6
        case "Milkshake":
        return 7
        case "Coke":
        return 8
        default:
            0
        }
        return 0
    }
    
    var str = ""
    var strArr: [String] = []
    
    for i in input {
        str.append(i)
        if str == "burger" || str == "fries" || str == "chicken" || str == "pizza" || str == "sandwich" || str == "onionrings" || str == "milkshake" || str == "coke" {
            strArr.append(str.capitalized)
            str = ""
        }
    }
    return strArr.sorted {numFunc(str: $0) < numFunc(str: $1)}.joined(separator: " ")
}

getOrder("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza")
getOrder("pizzachickenfriesburgercokemilkshakefriessandwich")

//Jamie is a programmer, and James' girlfriend. She likes diamonds, and wants a diamond string from James. Since James doesn't know how to make this happen, he needs your help.
//
//Task
//You need to return a string that looks like a diamond shape when printed on the screen, using asterisk (*) characters. Trailing spaces should be removed, and every line must be terminated with a newline character (\n).
//
//Return null/nil/None/... if the input is an even number or negative, as it is not possible to print a diamond of even or negative size.

//func diamond(_ size: Int) -> String? {
//    guard size > 0 else { return nil }
//    guard size % 2 == 1 else { return nil }
//    let upperHalf = (0..<(size / 2 + 1))
//        .map { String(repeating: " ", count: size / 2 - $0) + String(repeating: "*", count: 2 * $0 + 1) + "\n" }
//    let lowerHalf = (0..<(size / 2)).reversed()
//        .map { String(repeating: " ", count: size / 2 - $0) + String(repeating: "*", count: 2 * $0 + 1) + "\n" }
//    return (upperHalf + lowerHalf).reduce("", +)
//}





func secondLargestSmallest(arr1: [Int], arr2: [Int]) -> [Int] {
    let newArr = [arr1, arr2].flatMap { el in
        return el
    }
    let set = Array(Set(newArr)).sorted()
    return [set[set.count - 2], set[1]]
}

//secondLargestSmallest(arr1: [10,5,7,2,4,1,24], arr2: [8,23,29,25,40,0,24,40,40])

func getElementsCharacters(str: String) -> [[String: Int]] {
    var array: [[String: Int]] = []
    var arr2: [Character] = []
    for (i, el) in str.enumerated() {
        if i % 2 != 0 && !arr2.contains(el) {
            arr2.append(el)
            var count = 0
            for j in str {
                if j == el {
                    count += 1
                }
            }
            array.append([String(el) : count])
        }
    }
    
    
    
    return array
}

//getElementsCharacters(str: "abbloseckc")

func findIndex(arr: [Int], num: Int) -> Int {
    if arr.contains(num) {
        return arr.firstIndex(of: num)!
    } else {
        var newArr: [Int] = arr
        newArr.append(num)
        newArr = newArr.sorted()
        return newArr.firstIndex(of: num)!
    }
}

//findIndex(arr: [1, 2, 4, 5, 6], num: 5) //3
//findIndex(arr: [1, 2, 4, 5, 6], num: 0) //0
//findIndex(arr: [1, 2, 4, 5, 6], num: 7) //5

//[1, 2, 4, 5, 6] (target) -> 5(index)

//func twoSum(numbers: [Double], target: Double) -> [Int] {
//
//
//    return [1]
//}

//twoSum([1, 54, 24, 35], 59)

func persistence(for num: Int) -> Int {
    var number = num
    
    var count = 0
    
    while number > 9 {
        count += 1
        var numHolder = 1
        for i in "\(number)" {
            numHolder *= Int(String(i)) ?? 0
        }
        number = numHolder
    }
    
    return count
}

//persistence(for: 39)

//You are given an input string.
//
//For each symbol in the string if it's the first character occurrence, replace it with a '1', else replace it with the amount of times you've already seen it.

func numericals(_ str: String) -> String {
    var dict = [String : Int]()
    
    for i in str {
//        if dict.i != nil {
//
//        }
    }
    
    return ""
}

//numericals("Hello, World!")



//func greet(_ name: String) -> String {
//    return "Hello, \(name) how are you doing today?"
//}
//
//protocol Foo {
//    var moo: String { get }
//}
//
//extension Foo {
//    var moo: String {
//        return "Moo"
//    }
//    func test(){
//        print("Foo \(moo)")
//    }
//}
//
//class Bar: Foo {
//    var moo: String {
//        return "Mooo"
//    }
//    func test() {
//        print("Bar \(moo)")
//    }
//}
//
//let b: Foo = Bar()
//b.test()

//let b = zip([1,2,3,4,5,6,7,8], ["a","b","c"])
//print(b)


//func subtractSum(_ n: Int) -> String {
//    var num = 0
//    for i in "\(n)" {
//        print(Int(String(i)))
//        num = num + Int(String(i))!
//    }
//    return "\(n - num)"
//}
//
//subtractSum(325)


func switchItUp(_ number: Int) -> String {
            if number == 0 {
                return "Zero"
            }
            else if number == 1 {
                return "One"
            }
            else if number == 2 {
                return "Two"
            }
            else if number == 3 {
                return "Three"
            }
            else if number == 4 {
                return "Four"
            }
            else if number == 5 {
                return "Five"
            }
            else if number == 6 {
                return "Six"
            }
            else if number == 7 {
                return "Seven"
            }
            else if number == 8 {
                return "Eight"
            }
            else {
                return "Nine"
            }
}

switchItUp(1)
    
//This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.

//func simpleMultiplication(_ num: Int) -> Int {
//  if num % 2 == 0 {
//    return num * 8
//  } else {
//    return num * 9
//  }
//}


//The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.
//
//Task
//Given a year, return the century it is in.
//
//Examples
//1705 --> 18
//1900 --> 19
//1601 --> 17
//2000 --> 20

//func century(_ year: Int) -> Int {
//    var num = year/100
//
//    if year % 100 == 0 {
//        return num
//    } else {
//        return num + 1
//    }
//}

//century(89)
//century(1900)
//century(1705)
//century(1706)

//Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.
//
//For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter; and month 11 (November), is part of the fourth quarter.

func quarter(of month: Int) -> Int {
    if month <= 3 {
        return 1
    } else if month <= 6 {
        return 2
    } else if month <= 9 {
        return 3
    } else {
        return 4
    }
}

//print(quarter(of: 9))

//The company you work for has just been awarded a contract to build a payment gateway. In order to help move things along, you have volunteered to create a function that will take a float and return the amount formatting in dollars and cents.
//
//39.99 becomes $39.99
//
//The rest of your team will make sure that the argument is sanitized before being passed to your function although you will need to account for adding trailing zeros if they are missing (though you won't have to worry about a dangling period).

func formatMoney(_ val:Double) -> String {
    var decimalSeen = false
    var decimalSeenCount = 0
    var decimalSeenNumbers = ""
    var newNum = ""
    
    for el in "\(val)" {
        if decimalSeen && decimalSeenCount < 3 {
            decimalSeenCount += 1
            if decimalSeenCount == 3 {
                decimalSeenNumbers += String(".")
            }
            decimalSeenNumbers += String(el)
            
        } else if decimalSeen == false {
            newNum += String(el)
        }
        if el == "." {
            decimalSeen = true
        }
    }
    if decimalSeenCount > 2 {
        decimalSeenNumbers = "\(ceil(Double(decimalSeenNumbers)!))"
        decimalSeenNumbers.removeLast()
        decimalSeenNumbers.removeLast()
    }
    if decimalSeenCount == 1 {
        return "$\(newNum)\(decimalSeenNumbers)0"
    }
    if decimalSeenCount > 2 {
        print(newNum.last!)
    }
    return "$\(newNum)\(decimalSeenNumbers)"
}

//formatMoney(3)
//formatMoney(3.1)
//formatMoney(30.1)
//formatMoney(3.1431241234)

//Definition
//Jumping number is the number that All adjacent digits in it differ by 1.
//
//Task
//Given a number, Find if it is Jumping or not .
//
//Warm-up (Highly recommended)
//Playing With Numbers Series
//Notes
//Number passed is always Positive .
//
//Return the result as String .
//
//The difference between ‘9’ and ‘0’ is not considered as 1 .
//
//All single digit numbers are considered as Jumping numbers.

//Input >> Output Examples
//jumpingNumber(9) ==> return "Jumping!!"
//Explanation:
//It's single-digit number
//jumpingNumber(79) ==> return "Not!!"
//Explanation:
//Adjacent digits don't differ by 1
//jumpingNumber(23) ==> return "Jumping!!"
//Explanation:
//Adjacent digits differ by 1
//jumpingNumber(556847) ==> return "Not!!"
//Explanation:
//Adjacent digits don't differ by 1
//jumpingNumber(4343456) ==> return "Jumping!!"
//Explanation:
//Adjacent digits differ by 1
//jumpingNumber(89098) ==> return "Not!!"
//Explanation:
//Adjacent digits don't differ by 1
//jumpingNumber(32) ==> return "Jumping!!"
//Explanation:
//Adjacent digits differ by 1

func jumpingNumber(_ number: Int) -> String {
    if number < 10 {
        return "Jumping!!"
    }
    let numStr = "\(number)"
    var jumpingBool = true
    for (i, el) in numStr.enumerated() {
        if i == numStr.count - 1 {
            break
        }
        if (Int(String(el)) ?? 0) + 1 == Int(String(numStr[numStr.index(numStr.startIndex, offsetBy: i + 1)])) ?? 0 || (Int(String(el)) ?? 0) - 1 == Int(String(numStr[numStr.index(numStr.startIndex, offsetBy: i + 1)])) ?? 0  {
            print("still jumping")
        } else {
            jumpingBool = false
        }
    }
    if jumpingBool {
        return "Jumping!!"
    } else {
        return "Not!!"
    }
}

//jumpingNumber(1)
//jumpingNumber(23)
//jumpingNumber(4345)
//jumpingNumber(92)

//You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
//
//The type of a and x can be String or Int.
//
//Return true if the array contains the value, false if not.

func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    for i in a {
        if i == x {
            return true
        }
    }
    return false
}

//check(["t", "e", "s", "t"], "e") //true
//check(["what", "a", "great", "kata"], "kat") //false
//check([80, 117, 115, 104, 45, 85, 112, 115], 45) //true

//Create a function that takes 2 integers in form of a string as an input, and outputs the sum (also as a string):
//
//Example: (Input1, Input2 -->Output)
//
//"4",  "5" --> "9"
//"34", "5" --> "39"
//"", "" --> "0"
//"2", "" --> "2"
//"-5", "3" --> "-2"
//Notes:
//
//If either input is an empty string, consider it as zero.
//
//Inputs and the expected output will never exceed the signed 32-bit integer limit (2^31 - 1)
//
//func sum_str(_ a:String, _ b:String) -> String {
//    let aNum: Int = Int(a) ?? 0
//    let bNum: Int = Int(b) ?? 0
//    return "\(aNum + bNum)"
//}

//sum_str("4","5")
//sum_str("34","5")

//Build a function that returns an array of integers from n to 1 where n>0.
//
//Example : n=5 --> [5,4,3,2,1]

//func reverseSeq(n: Int) -> [Int] {
//    var arr: [Int] = []
//    for i in stride(from: n, to: 1, by: -1) {
//        arr.append(i)
//    }
//    return arr
//}
//
//reverseSeq(n: 6)
//reverseSeq(n: 3)

//for index in stride(from: 10, to: 1, by: -1) {
//    print(index)
//}


func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
  let arr = array.sorted()
  return arr[0] + arr[1]
}

//Given the triangle of consecutive odd numbers:
//
//             1
//          3     5
//       7     9    11
//   13    15    17    19
//21    23    25    27    29
//...
//Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)
//
//1 -->  1
//2 --> 3 + 5 = 8

//func rowSumOddNumbers(_ row: Int) -> Int {
//  return row * row * row
//}
//
//func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
//  let arr = array.sorted()
//  return arr[0] + arr[1]
//}
//
//func grow(_ arr: [Int]) -> Int {
//  var num = 1
//  for val in arr {
//    num = num * val
//  }
//  return num
//}

//Make a simple function called greet that returns the most-famous "hello world!".
//
//Style Points
//Sure, this is about as easy as it gets. But how clever can you be to create the most creative "hello world" you can think of? What is a "hello world" solution you would want to show your friends?

func greet() -> String {
  return "hello world!"
}

//In this kata you should simply determine, whether a given year is a leap year or not. In case you don't know the rules, here they are:
//
//years divisible by 4 are leap years
//but years divisible by 100 are not leap years
//but years divisible by 400 are leap years
//Additional Notes:
//
//Only valid years (positive integers) will be tested, so you don't have to validate them

func isLeapYear(_ year: Int) -> Bool {
    if year % 400 == 0 {
        return true
    } else if year % 100 == 0 {
        return false
    } else if year % 4 == 0 {
        return true
    } else {
        return false
    }
}


//
//If you've completed this kata already and want a bigger challenge, here's the 3D version
//
//Bob is bored during his physics lessons so he's built himself a toy box to help pass the time. The box is special because it has the ability to change gravity.
//
//There are some columns of toy cubes in the box arranged in a line. The i-th column contains a_i cubes. At first, the gravity in the box is pulling the cubes downwards. When Bob switches the gravity, it begins to pull all the cubes to a certain side of the box, d, which can be either 'L' or 'R' (left or right). Below is an example of what a box of cubes might look like before and after switching gravity.
//
//+---+                                       +---+
//|   |                                       |   |
//+---+                                       +---+
//+---++---+     +---+              +---++---++---+
//|   ||   |     |   |   -->        |   ||   ||   |
//+---++---+     +---+              +---++---++---+
//+---++---++---++---+         +---++---++---++---+
//|   ||   ||   ||   |         |   ||   ||   ||   |
//+---++---++---++---+         +---++---++---++---+
//Given the initial configuration of the cubes in the box, find out how many cubes are in each of the n columns after Bob switches the gravity.
//
//Examples (input -> output:
//* 'R', [3, 2, 1, 2]      ->  [1, 2, 2, 3]
//* 'L', [1, 4, 5, 3, 5 ]  ->  [5, 5, 4, 3, 1]

func flip(_ direction: String, _ a: [Int]) -> [Int] {
  if direction == "R" {
    return a.sorted()
  } else if direction == "L" {
    return a.sorted(by: >)
  }
  return []
}

//You have to search all numbers from inclusive 1 to inclusive a given number x, that have the given digit d in it.
//The value of d will always be 0 - 9.
//The value of x will always be greater than 0.
//
//You have to return as an array
//
//the count of these numbers,
//their sum
//and their product.
//
//For example:
//x = 11
//d = 1
//->
//Numbers: 1, 10, 11
//Return: [3, 22, 110]
//
//If there are no numbers, which include the digit, return [0,0,0].
//
//Have fun coding it and please don't forget to vote and rank this kata! :-)
//
//I have created other katas. Have a look if you like coding and challenges.


func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {
  var arr: [Int64] = []
  
  if d > x {
    return [0, 0, 0]
  }
  
  for i in d...x {
      if i == 0 {
          continue
      }
    let strToSplit = "\(i)"
    for char in strToSplit {
      if let digit = Int(String(char)), digit == d {
        arr.append(i)
        break
      }
    }
  }
  let sum = arr.reduce(0, {$0 + $1})
    let product = arr.isEmpty ? 0 : arr.reduce(1) { $0 * $1 }
  return [Int64(arr.count), sum, product]
}

//My friend John likes to go to the cinema. He can choose between system A and system B.
//
//System A : he buys a ticket (15 dollars) every time
//System B : he buys a card (500 dollars) and a first ticket for 0.90 times the ticket price,
//then for each additional ticket he pays 0.90 times the price paid for the previous ticket.
//Example:
//If John goes to the cinema 3 times:
//
//System A : 15 * 3 = 45
//System B : 500 + 15 * 0.90 + (15 * 0.90) * 0.90 + (15 * 0.90 * 0.90) * 0.90 ( = 536.5849999999999, no rounding for each ticket)
//John wants to know how many times he must go to the cinema so that the final result of System B, when rounded up to the next dollar, will be cheaper than System A.
//
//The function movie has 3 parameters: card (price of the card), ticket (normal price of a ticket), perc (fraction of what he paid for the previous ticket) and returns the first n such that
//
//ceil(price of System B) < price of System A.
//More examples:
//movie(500, 15, 0.9) should return 43
//    (with card the total price is 634, with tickets 645)
//movie(100, 10, 0.95) should return 24
//    (with card the total price is 235, with tickets 240)


func movie(card: Double, ticket: Double, perc: Double) -> Int {
  print(card, ticket, perc)
  var aTotal: Double = 0
  var bTotal: Double = 0
  var cardCost: Double = 0
  var counter: Double = 0
  
  aTotal -= card
  cardCost = ticket
    
    print(cardCost, aTotal)
  
  while aTotal < bTotal {
      print("hit")
    counter += 1
    bTotal -= ticket
      if counter > 1 {
          cardCost = cardCost * perc
      }
    aTotal -= cardCost
      print(aTotal, bTotal)
  }
  
  return Int(counter)
}

//The Arara are an isolated tribe found in the Amazon who count in pairs. For example one to eight is as follows:
//
//1 = anane
//2 = adak
//3 = adak anane
//4 = adak adak
//5 = adak adak anane
//6 = adak adak adak
//7 = adak adak adak anane
//8 = adak adak adak adak
//
//Take a given number and return the Arara's equivalent.
//
//e.g.
//
//countArara 3 // -> "adak anane"
//
//countArara 8 // -> "adak adak adak adak"
//countArara(3) // "adak anane"
//
//countArara(8) // "adak adak adak adak"
//https://en.wikipedia.org/wiki/Arara_people
//


//
//func countArare(_ n: Int) -> String {
//  var string = ""
//    for i in 0...n/2 {
//      if i == 0 {
//        continue
//      }
//      string += "adak "
//    }
//
//  if n % 2 != 0 {
//    string += "anane"
//  }
//
//  return string
//}


//Task
//You've just moved into a perfectly straight street with exactly n identical houses on either side of the road. Naturally, you would like to find out the house number of the people on the other side of the street. The street looks something like this:
//
//Street
//1|   |6
//3|   |4
//5|   |2
//  you
//Evens increase on the right; odds decrease on the left. House numbers start at 1 and increase without gaps. When n = 3, 1 is opposite 6, 3 opposite 4, and 5 opposite 2.
//
//Example (address, n --> output)
//Given your house number address and length of street n, give the house number on the opposite side of the street.
//
//1, 3 --> 6
//3, 3 --> 4
//2, 3 --> 5
//3, 5 --> 8
//Note about errors
//If you are timing out, running out of memory, or get any kind of "error", read on. Both n and address could get upto 500 billion with over 200 random tests. If you try to store the addresses of 500 billion houses in a list then you will run out of memory and the tests will crash. This is not a kata problem so please don't post an issue. Similarly if the tests don't complete within 12 seconds then you also fail.
//
//To solve this, you need to think of a way to do the kata without making massive lists or huge for loops. Read the discourse for some inspiration :)

func overTheRoad(address: Int, street: Int) -> Int {
    var streetTotal = street * 2
    var num: Int
    
    num = streetTotal - address + 1
    
  return num;
}

//overTheRoad(address: 4, street: 3)

//A new task for you!
//
//You have to create a method, that corrects a given time string.
//There was a problem in addition, so many of the time strings are broken.
//Time is formatted using the 24-hour clock, so from 00:00:00 to 23:59:59.
//Examples
//"09:10:01" -> "09:10:01"
//"11:70:10" -> "12:10:10"
//"19:99:99" -> "20:40:39"
//"24:01:01" -> "00:01:01"
//If the input-string is null or empty return exactly this value! (empty string for C++) If the time-string-format is invalid, return null. (empty string for C++)
//
//Have fun coding it and please don't forget to vote and rank this kata! :-)
//
//I have created other katas. Have a look if you like coding and challenges.

func correct(_ timeString: String?) -> String? {
    guard let timeStr = timeString else { return nil }
    
    var arr = timeStr.split(separator: ":")
    var intArr: [Int] = []
  
    for i in 0...arr.count - 1 {
        let intToAdd = Int(arr[i])
        intArr.append(intToAdd!)
    }
    
    var firstDigit = intArr[0]
    var secondDigit = intArr[1]
    var thirdDigit = intArr[2]
    
    var firstCounter = 0
    var secondCounter = 0
    var thirdCounter = 0
    
    while thirdDigit >= 60 {
        thirdDigit -= 60
        thirdCounter += 1
    }
    
    secondDigit += thirdCounter
    
    while secondDigit >= 60 {
        secondDigit -= 60
        secondCounter += 1
    }
    
    firstDigit += secondCounter
    
    while firstDigit >= 24 {
        firstDigit -= 24
    }
    
    let firstString = firstDigit < 10 ? "\(firstDigit)0" : "\(firstDigit)"
    let secondString = secondDigit < 10 ? "\(secondDigit)0" : "\(secondDigit)"
    let thirdString = thirdDigit < 10 ? "\(thirdDigit)0" : "\(thirdDigit)"
        
  return "\(firstString):\(secondString):\(thirdString)"
}

//correct("19:99:99") ///-> "09:10:01"
//correct("11:70:10") ///-> "12:10:10"
//correct("19:99:99") ///-> "20:40:39"
//correct("24:01:01") ///->"00:01:01"

//Create a function add(n)/Add(n) which returns a function that always adds n to any number
//
//Note for Java: the return type and methods have not been provided to make it a bit more challenging.
//
//addOne = add(1)
//addOne(3) // 4

func add(_ n: Int) -> ((Int) -> Int) {
    func fxToReturn(num: Int) -> Int {
        return n + num
    }
    
    return fxToReturn(num: )
}

//add(4)(2)

//Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.
//
//Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array:
//
//[sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep]      (YOU ARE HERE AT THE FRONT OF THE QUEUE)
//   7      6      5      4      3            2      1
//If the wolf is the closest animal to you, return "Pls go away and stop eating my sheep". Otherwise, return "Oi! Sheep number N! You are about to be eaten by a wolf!" where N is the sheep's position in the queue.
//
//Note: there will always be exactly one wolf in the array.
//
//Examples
//Input: ["sheep", "sheep", "sheep", "wolf", "sheep"]
//Output: "Oi! Sheep number 1! You are about to be eaten by a wolf!"
//
//Input: ["sheep", "sheep", "wolf"]
//Output: "Pls go away and stop eating my sheep"
//

func warnTheSheep(_ queue: [String]) -> String {
    print(queue)
    var counter = 0
    var wolfLocation = 0
    var sheepInDanger = 0
    for i in queue {
        print(i)
        if i == "wolf" {
            wolfLocation = counter
        }
        counter += 1
    }
    
    sheepInDanger = queue.count - wolfLocation - 1
    
    if wolfLocation == queue.count - 1 {
        return "Pls go away and stop eating my sheep"
    } else {
        return "Oi! Sheep number \(sheepInDanger)! You are about to be eaten by a wolf!"
    }
}

//warnTheSheep(["sheep", "sheep", "sheep", "wolf", "sheep"])


let testScanStr = "dew sensory (os) - mojas de calculo de boogie3827 JOHN ST, SAN DIEGO, CA 921063830 JOHN ST, SAN DIEGO, CA 921063833 JOHN ST, SAN DIEGO, CA 921063803 TALBOT ST. SAN DIEGO, CA 921063828 TALBOT ST, SAN DIEGO, CA 92106 D3834 TALBOT ST, SAN DIEGO, CA 92106 W3840 TALBOT ST, SAN DIEGO, CA 92106 W3846 TALBOT ST, SAN DIEGO, CA 921063855 TALBOT ST, SAN DIEGO, CA 92106X 3856 TALBOT ST. SAN DIEGO, CA 921063868 TALBOT ST, SAN DIEGO, CA 921063876 TALBOT ST. SAN DIEGO, CA 92106803 TARENTO DR, SAN DIEGO, CA 92106819 TARENTO DR, SAN DIEGO, CA 92106841 TARENTO DR. SAN DIEGO, CA 92106 / D871 TARENTO DR, SAN DIEGO, CA 92106921 TARENTO DR. SAN DIEGO. CA 92106X(927 TARENTO DR, SAN DIEGO, CA 92106 C.P933 TARENTO DR, SAN DIEGO, CA 92106 C939 TARENTO DR, SAN DIEGO, CA 92106 C P945 TARENTO DR, SAN DIEGO, CA 92106951 TARENTO DR. SAN DIEGO, CA 92106804 TEMPLE ST, SAN DIEGO, CA 92106811 TEMPLE ST, SAN DIEGO. CA 92106 / D812 TEMPLE ST, SAN DIEGO, CA 92106 / P820 TEMPLE ST, SAN DIEGO, CA 92106 ( P828 TEMPLE ST. SAN DIEGO. CA 921061 833 TEMPLE ST. SAN DIEGO, CA 92106834 TEMPLE ST, SAN DIEGO, CA 92106901 TEMPLE ST. SAN DIEGO. CA 92106907 TEMPLE ST. SAN DIEGO, CA 92106911 TEMPLE ST. SAN DIEGO. CA 92106916 TEMPLE ST. SAN DIEGO. CA 92106 /A917 TEMPLE ST, SAN DIEGO, CA 92106924 TEMPLE ST, SAN DIEGO, CA 92106 C P933 TEMPLE ST. SAN DIEGO, CA 92106 /934 TEMPLE ST, SAN DIEGO, CA 92106940 TEMPLE ST. SAN DIEGO. CA 92106UnknownUnknownREBECCA YERKESUnknownBRANT WILLIAMSONCARMEN JACOBSENDAVID MCCALLUMUnknownCAROLYN RUMSEYUnknownUnknownTRACY FISHNELS ROBINSONUnknownELAINE EASTLEYJESSE NOBLESUnknownANN LINKJOE HARRISO NoO NoO Noo No0 NoalatesAves3 No1 No0 No0 No0 NoON.O No@No0 NoO NoANO• NoSCOTT WHITEUnknowno NolinknownO NoUnknown0 NoSTEPHANIE ARBOGAS O NoJOHN THOMPSONGNOSUSAN T BALISTRIERI@NoUnknown0 NoMITCHELL SHIRTSFINoJACOB PETERSONUnknownoNoUnknowno NoUnknownoNoKEN WHITEDANoUnknownO NoDON KELLYPINoANOContactinues theGNo1000100010001000TY1000 Asia500g.1000100010001000TX10001000100010001000100010001000100010001000(000Кзо0Dealspote1000100011000Busy, deinggarden1000 Hsia5000710007Cano. Tin time bufferint1000 sia500g10001000TOP seed,(300 TY10001000100010001000\\(10081000100010001screen10001 Hsia500g)Freezos UpEmerin10001000seoKe Judy 2-2:30do tto an houron him.https://docs.google.com/spreadsheets/d/ISzR8isHwv-oWWec6-Vw-b06qvwpaBsriKwIZuCnRaHO/edit/feid=0"

let testScan2 = "Fernando Territory (108)Address1704 ORIOLE ST, SAN DIEGO, CA 9211411712 ORIOLE ST, SAN DIEGO, CA 921141720 ORIOLE ST, SAN DIEGO, CA 92114 C1726 ORIOLE ST, SAN DIEGO, CA 92114 V1732 ORIOLE ST, SAN DIEGO, CA 92114 W795 ORIOLE ST, SAN DIEGO, CA 921141741 ORIOLE ST, SAN DIEGO, CA 92114 W1808 ORIOLE ST, SAN DIEGO, CA 921141821 ORIOLE ST, SAN DIEGO, CA 92114 .1826 ORIOLE ST, SAN DIEGO, CA 921141833 ORIOLE ST, SAN DIEGO, CA 921141836 ORIOLE ST, SAN DIEGO, CA 9211A WJR91841 ORIOLE ST, SAN DIEGO, CA 921141907 ORIOLE ST, SAN DIEGO, CA 92114 T X1910 PARADISE ST, SAN DIEGO, CA 921141920 PARADISE ST, SAN DIEGO, CA 921141936 PARADISE ST, SAN DIEGO, CA 92114T84E-PARADISE ST, SAN DIEGO, CA 921141956 PARADISE ST, SAN DIEGO, CA 92114W6353 RADIO DR, SAN DIEGO, CA 921146356 RADIO DR, SAN DIEGO, CA 921146359 RADIO DR, SAN DIEGO, CA 92114C06367 RADIO DR, SAN DIEGO, CA 921146368 RADIO DR, SAN DIEGO, CA 921146372 RADIO DR, SAN DIEGO, CA 921146387 RADIO DR, SAN DIEGO, CA 921146397 RADIO DR, SAN DIEGO, CA 921146406 RADIO DR, SAN DIEGO, CA 921146408 RADIO DR, SAN DIEGO, CA 921145409 RADIO DR, SAN DIEGO, CA 92114 W TA6432 RADIO DR, SAN DIEGO, CA 921146433 RADIO DR, SAN DIEGO, CA 92114 - 76438 RADIO DR, SAN DIEGO. CA 921146440 RADIO DR, SAN DIEGO, CA 92114 p TB°6451 RADIO DR, SAN DIEGO, CA 921146400 RADIO DR, SAN DIEGO, CA 92114 16507 RADIO DR, SAN DIEGO, CA 9211465186524 RADIO DR, SAN BIEGO, CA. 92114^4/2023TZIce.Lead NameUnknownCSI Wireless Max Speed Current InternetO NoPEARL BROWN50000 NoUnknown50001 No5000DAVID NORLINGoVesDIANA QUINTERO5000600o CesUnknown5000O NoG% STUART ALLAN A5000olle5000CHERYL NOBLE0 NoLEONNA CONNERO No50005000ROBERT HADAO NoDANK 400UnknownONo50005000FABIOLA CARAPIAodesUnknownO NoUnknownO No] UnknownO NoUnknownONoJAIME PANUELA A 0 NoUnknownO NoCATHY KOBAYASH.UnknownUnknownGRISELDA PENAUnknownUnknownUnknownUnknownMARSHELA SALGAUnknownDIONDE SMITHMARIOADRIAN T NUnknownUnknownUnknown[JACK FORTENBERUnknownRICK ADAMSSEAN DONLON.Unknown0 No0 No0 No0 No0 NoO NoNoO No0 Noo Reso des0 No0 No0 NoNo0 No0 NoO NoO No| UnknownSINDAGes50005000500050005000500050005000500050005000500050005000500050005000500050005000500050005000500050005000500050005000[Asia50×18PANt(Боб73005NOTESTNFI HP + Cable premium.dragiteInn resues"

let testScan2Two = "Fernando Territory (108)AddressCSI Wireless Max Speed Current InternetNOTES1704 ORIOLE ST, SAN DIEGO, CA 92114O No5000|1712 ORIOLE ST, SAN DIEGO, CA 921141720 ORIOLE ST, SAN DIEGO, CA 92114 COUnknown OwNO No50001 No5000(00)1726 ORIOLE ST, SAN DIEGO, CA 92114 VDAVID NORLINGOVes)50001732 ORIOLE ST, SAN DIEGO, CA 92114 WDIANA QUINTEROO Ves5000LAS ORIOLE ST, SAN DIEGO, CA 92114UnknownO No50001741 ORIOLE ST, SAN DIEGO, CA 92114 WG.% STUART ALLAN A YOles)50001808 ORIOLE ST, SAN DIEGO, CA 92114CHERYL NOBLEO No50001821 ORIOLE ST, SAN DIEGO, CA 92114 G.LEONNA CONNERO No5000| ADAM D4901826 ORIOLE ST, SAN DIEGO, CA 92114ROBERT HADAO No50001833 ORIOLE ST, SAN DIEGO, CA 92114UnknownO No5000186 ORIOLE ST, SAN DIEGO, CA 92114 W409 IS FABIOLA CARAPIAOdes5000 HelaboxiD OMNI1841 ORIOLE ST, SAN DIEGO, CA 92114O No50001907 ORIOLE ST, SAN DIEGO, CA 92114UnknownO No50001910 PARADISE ST, SAN DIEGO, CA 92114UnknownO No50001920 PARADISE ST, SAN DIEGO, CA 92114UnknownO No5000- 1936 PARADISE ST, SAN DIEGO, CA 92114JAIME PANUELALEO No5000TOME PARADISE ST, SAN DIEGO, CA 92114UnknownO No5000|1956 PARADISE ST, SAN DIEGO, CA 92114_CATHY KOBAYASHI o res5000|6353 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006356 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006359 RADIO DR, SAN DIEGO, CA 921140€GRISELDA PENAO No50006367 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006368 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006372 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006387 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006397 RADIO DR, SAN DIEGO, CA 92114MARSHELA SALGAO No50006406 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006408 RADIO DR, SAN DIEGO, CA 92114 WDIONDE SMITH0 Pes)50006409 RADIO DR, SAN DIEGO, CA 92114 \\ TIMARIOADRIAN T MOdes5000 PINT6432 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006433 RADIO DR, SAN DIEGO, CA 92114 TXUnknownO No50006438 RADIO DR, SAN DIEGO, CA 92114UnknownO No50006440 RADIO DR, SAN DIEGO, CA 92114 A TAXJACK FORTENBER1 No50006451 RADIO DR, SAN DIEGO, CA 92114UnknownO No50005400 RADIO DR, SAN DIEGO, CA 92114 \\RICK ADAMSO No50006507 RADIO DR, SAN DIEGO, CA 92114SEAN DONLON.O No50006518 RADIO6524 RADIO DR, SAN DECO, CA 92114Unknown0 No5000Unknown0 No5000ORIINDAGI50005000 (Asia50x18^6/2023HP + cable premian:Inn Issues(3003000"

let freshTestString = "James Territory (111)Address2175 CLOVE ST, SAN DIEGO, CA 921062209 CLOVE ST, SAN DIEGO, CA 921062255 CLOVE ST, SAN DIEGO, CA 921063103 EDITH LN, SAN DIEGO, CA 921063107 EDITH LN, SAN DIEGO, CA 921063111 EDITH LN, SAN DIEGO, CA 921063115 EDITH LN, SAN DIEGO, CA 921063125 EDITH LN, SAN DIEGO, CA 921063205 EDITH LN, SAN DIEGO, CA 921063211 EDITH LN, SAN DIEGO, CA 921063217 EDITH LN, SAN DIEGO, CA 921063221 EDITH LN, SAN DIEGO, CA 921062252 EVERGREEN ST, SAN DIEGO, CA 921062255 EVERGREEN ST. SAN DIEGO, CA 921062275 LOCUST ST, SAN DIEGO, CA 921062153 PLUM ST, SAN DIEGO, CA 921062154 PLUM ST, SAN DIEGO, CA 921062172 PLUM ST, SAN DIEGO, CA 921062207 PLUM ST, SAN DIEGO, CA 921062210 PLUM ST, SAN DIEGO, CA 921062244 PLUM ST, SAN DIEGO, CA 921062164 ROSECRANS ST, SAN DIEGO, CA 921062170 ROSECRANS ST, SAN DIEGO, CA 921062204 ROSECRANS ST, SAN DIEGO, CA 921062212 ROSECRANS ST, SAN DIEGO, CA 921062220 ROSECRANS ST, SAN DIEGO, CA 921062250 ROSECRANS ST, SAN DIEGO, CA 921062260 ROSECRANS ST, SAN DIEGO, CA 921063020 UDALL ST, SAN DIEGO, CA 921063032 UDALL ST, SAN DIEGO. CA 921063038 UDALL ST, SAN DIEGO, CA 921063040 UDALL ST, SAN DIEGO, CA 921063050 UDALL ST, SAN DIEGO, CA 921063120 UDALL ST, SAN DIEGO, CA 921063130 UDALL ST, SAN DIEGO, CA 921063130 UDALL ST, SAN DIEGO, CA 921063146 UDALL ST, SAN DIEGO, CA 921063202 UDALL ST, SAN DIEGO, CA 921063226 UDALL ST, SAN DIEGO, CA 921063312 UDALL ST, SAN DIEGO, CA 921063320 UDALL ST, SAN DIEGO, CA 921063330 UDALL ST, SAN DIEGO. CA 921063334 UDALL ST, SAN DIEGO, CA 921061/9/2024Lead NameBETTY HUBERGIBSON PRATTHEIDI SMITHUnknownUnknownCHRIS EWELLAMY YIMUnknownUnknownUnknownJAMES HIGGINSONUnknownSTACEY SMITHJOHN ZOLEZZIMR. ROBERT CALDCHRIS POWELLUnknownBRAD RODIUnknownMANJU HURVITZUnknownHENDRIK VANBRUNUnknownDOLORES BERGENUnknownGABRIEL LANDESJOAN OLSONGEORGE GEBHARDUnknownUnknownUnknownUnknownSCOTT MOLLOYVIRGINIA EVESUnknownUnknownUnknownSTORM OLIVERUnknownLESA M BURTONWALTER COFFMANLUKE BURMANUnknownCSI Wireless Max Speed Current Internet NOTESNo10003000 Yes10000 No1000O No10000 No10000 No1000|0 Yes1000O No10000 No10000 No10001 No1000 Hsia500g0 No10001 No10000 No100010003001 No1000 Hsia500g1 No1000 Hsia500g0 No10000 Yes1000O| No1000o No10003001No1000\\O No1000 Hsia500g1 No1000o Yes10000 No1000o No1000300O No1000O Yes1000|o No1000No1000O No1000o No10001 No10003000 Yes10000 No10000 No10000 No10001o Yes10000 No1000O No1000 Max TurboO No10001 No10001000300O No1000"

let got = "James Territory (111)Address2175 CLOVE ST, SAN DIEGO, CA 921062209 CLOVE ST, SAN DIEGO, CA 921062255 CLOVE ST, SAN DIEGO, CA 921063103 EDITH LN, SAN DIGO, CA 921063107 EDITH LN, SAN DIEGO, CA 921063111 EDITH LN, SAN DIEGO, CA 921063115 EDITH LN, SAN DIEGO, CA 921063125 EDITH LN, SAN DIEGO, CA 921063205 EDITH LN, SAN DIEGO, CA 921063211 EDITH LN, SAN DIEGO, CA 921063217 EDITH LN, SAN DIEGO, CA 921063221 EDITH LN, SAN DIEGO, CA 921062252 EVERGREEN ST, SAN DIEGO. CA 921062255 EVERGREEN ST, SAN DIEGO, CA 92106[2275 LOCUST ST, SAN DIEGO, CA 921062153 PLUM ST, SAN DIEGO, CA 921062154 PLUM ST, SAN DIEGO, CA 92106[2172 PLUM ST, SAN DIEGO, CA 921062207 PLUM ST, SAN DIEGO, CA 921062210 PLUM ST, SAN DIEGO, CA 921062244 PLUM ST, SAN DIEGO, CA 921062164 ROSECRANS ST, SAN DIEGO, CA 921062170 ROSECRANS ST, SAN DIEGO. CA 921062204 ROSECRANS ST, SAN DIEGO, CA 921062212 ROSECRANS ST, SAN DIEGO, CA 921062220 ROSECRANS ST, SAN DIEGO, CA 921062250 ROSECRANS ST, SAN DIEGO, CA 921062260 ROSECRANS ST, SAN DIEGO, CA 921063020 UDALL ST, SAN DIEGO, CA 921063032 UDALL ST, SAN DIEGO, CA 921063038 UDALL ST, SAN DIEGO, CA 921063040 UDALL ST, SAN DIEGO, CA 921063050 UDALL ST, SAN DIEGO, CA 921063120 UDALL ST, SAN DIEGO, CA 921063130 UDALL ST, SAN DIEGO, CA 921063130 UDALL ST. SAN DIEGO. CA 921063146 UDALL ST. SAN DIEGO. CA 921063202 UDALL ST, SAN DIEGO, CA 921063226 UDALL ST. SAN DIEGO, CA 921063312 UDALL ST, SAN DIEGO, CA 921063320 UDALL ST, SAN DIEGO, CA 921063330 UDALL ST, SAN DIEGO, CA 921063334 UDALL ST, SAN DIEGO, CA 921061/9/2024CSI Wireless Max Speed Current Internet NOTES1 No0 YesO NoO NoO NoO Noo Yeso NoO NoO NoNoO NoNoO NoNoNo0 Noo YesO NoO NoNoO No1 Noo YesO NoO NoO Noo Yeso No1 NoO NoO NoNoo YesO Noo NoO Noo YesO NoO NoO No1 No0 No10003001000100010001000100010001000100010001000 Hsia500g10001000100010003001000 Hsia500g1000 Hsia500g100010001000100030010001000 Hsia500g100010001000100030010001000100010001000100010003001000100010001000100010001000 Max Turbo1000100010003001000"

func splitOnAddress(visionScan: String) -> [String] {
    for (index, character) in visionScan.enumerated() {
        print("index: \(index), character: \(character)")
    }
    
    return [""]
}

//splitOnAddress(visionScan: got)

func filterAddresses(scanStr: String) -> [String] {
    
    let testString = "123 Main Street, City, State, 12345"

    // Regular expression pattern for a simple address format
    let addressPattern = #"\b\d+\s+[A-Za-z0-9\s,]+,\s+[A-Za-z\s]+,\s+[A-Z]{2}\s+\d{5}\b"#
    let zipCodePattern = #"\b92106\b"#
    
    let regex = try! NSRegularExpression(pattern: addressPattern, options: [])

    let range = NSRange(scanStr.startIndex..<scanStr.endIndex, in: scanStr)
    if let match = regex.firstMatch(in: scanStr, options: [], range: range) {
        let fullAddress = scanStr[Range(match.range, in: scanStr)!]
        print("Found address: \(fullAddress)")
    } else {
        print("Address not found.")
    }
    
    return [""]
}

//filterAddresses(scanStr: got)

func extractAddresses(from inputString: String, zipCode: String) -> [String] {
    let addressPattern = #"\b\d+\s+[A-Za-z0-9\s,]+,\s+[A-Za-z\s]+,\s+CA\s+\#(zipCode)\b|\b\d{5}\s+[A-Za-z0-9\s,]+,\s+[A-Za-z\s]+,\s+CA\b"#

    do {
        let regex = try NSRegularExpression(pattern: addressPattern, options: [])
        let matches = regex.matches(in: inputString, options: [], range: NSRange(location: 0, length: inputString.utf16.count))

        let addresses = matches.map { match in
            let range = match.range
            return (inputString as NSString).substring(with: range)
        }

        return addresses
    } catch {
        print("Error creating regex: \(error)")
        return []
    }
}

print(extractAddresses(from: got, zipCode: "92106"))
