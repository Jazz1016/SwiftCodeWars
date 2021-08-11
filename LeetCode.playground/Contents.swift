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
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map: [Int : Int] = [:]
    for i in 0..<nums.count {
        if let mapped = map[target - nums[i]]{
            return [mapped, i]
        }
        map[nums[i]] = i
    }
    return []
}

twoSum([1, 3, 5, 4], 4)
twoSum([2, 11, 15, 6, 7], 9)
