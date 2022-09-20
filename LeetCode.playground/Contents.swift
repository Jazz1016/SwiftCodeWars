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

//26. Remove Duplicates from Sorted Array
//Easy
//
//8174
//
//11862
//
//Add to List
//
//Share
//Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.
//
//Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.
//
//Return k after placing the final result in the first k slots of nums.
//
//Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.
//
//Custom Judge:
//
//The judge will test your solution with the following code:
//
//int[] nums = [...]; // Input array
//int[] expectedNums = [...]; // The expected answer with correct length
//
//int k = removeDuplicates(nums); // Calls your implementation
//
//assert k == expectedNums.length;
//for (int i = 0; i < k; i++) {
//    assert nums[i] == expectedNums[i];
//}
//If all assertions pass, then your solution will be accepted.
//
//
//
//Example 1:
//
//Input: nums = [1,1,2]
//Output: 2, nums = [1,2,_]
//Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
//It does not matter what you leave beyond the returned k (hence they are underscores).
//Example 2:
//
//Input: nums = [0,0,1,1,1,2,2,3,3,4]
//Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
//Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
//It does not matter what you leave beyond the returned k (hence they are underscores).
//
//
//Constraints:
//
//1 <= nums.length <= 3 * 104
//-100 <= nums[i] <= 100
//nums is sorted in non-decreasing order.

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var counter = 0
    for (i, el) in nums.enumerated() {
        if (i == 0) {
            counter += 1
            continue
        }
        if (nums[i] != nums[i - 1]) {
            nums[counter] = nums[i]
            counter += 1
        }
    }
    return counter
}

