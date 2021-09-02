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

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    let sortedArr = array.sorted()
    
    return sortedArr[0] + sortedArr[1]
}
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

func add(_ n: Int) -> ((Int) -> Int) {
    func a(_ b: Int) -> Int { return n + b }
    return a(_:)
}

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

func rowSumOddNumbers(_ row: Int) -> Int {
    var currentNumber = 1
    var sum = 0
    for r in 1...row {
//        print(row, r)
        for _ in 1...r {
            if r == row {
                sum += currentNumber
            }
//            print(currentNumber)
            currentNumber += 2
        }
    }
    return sum
}

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

toNato("If you can read")
toNato("Did not see that coming")
