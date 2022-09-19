import UIKit


//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.

///(n2)
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    for (i, el) in nums.enumerated() {
//        for (j, ele) in nums.enumerated() {
//            if el + ele == target && i != j {
//                return [i, j]
//            }
//        }
//    }
//    return []
//}

///Binary Search
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var map: [Int : Int] = [:]
//    for i in 0..<nums.count {
//        if let mapped = map[target - nums[i]]{
//            return [mapped, i]
//        }
//        map[nums[i]] = i
//    }
//    return []
//}
//
//twoSum([1, 3, 5, 4], 4)
//twoSum([2, 11, 15, 6, 7], 9)


    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var num = x
        var initialStr = "\(x)"
        var finalNum: String = ""
        for _ in 0..<"\(num)".count {
            let digit = num % 10
            finalNum.append("\(digit)")
            num = num/10
        }
        if finalNum == initialStr {
            return true
        } else {
            return false
        }
    }

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.

///twoSum O(n log n)
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var lowIndex = 0
//    var highIndex = nums.count - 1
//
//    while lowIndex < highIndex {
//
//        let sumOfItems = nums[lowIndex] + nums[highIndex]
//
//        if sumOfItems == target {
////            print("Sum of \(nums[lowIndex]) and \(nums[highIndex]) = \(target)")
//            print(lowIndex, highIndex)
//            return [lowIndex, highIndex]
//        } else if sumOfItems < target {
//            lowIndex += 1
//        } else if sumOfItems > target {
//            highIndex -= 1
//        }
//
//    }
//    return [0,0]
//}

//Two Sum hash map O(n)
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var hash: [Int : Int] = [:]
    
    for (i, el) in nums.enumerated() {
        let val = el
        hash[val] = i
    }
    
    for (i, el) in nums.enumerated() {
        let potentialKey = target - nums[i]
        
        if (hash[potentialKey] != nil && hash[potentialKey] != i) {
            return [i, hash[potentialKey]!]
        }
    }
    return [0,0]
}

//twoSum([1,3,6,7,7,12,14], 13)
//twoSum([3,2,4], 6)
//twoSum([-1,-2,-3,-4,-5], -8)

//You are climbing a staircase. It takes n steps to reach the top.
//
//Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

func climbStairs(_ n: Int) -> Int {
    var arr: [Int] = []
    
    for i in n...2 {
        
    }
    
    return 0
}

climbStairs(0) //1
climbStairs(1) //1
