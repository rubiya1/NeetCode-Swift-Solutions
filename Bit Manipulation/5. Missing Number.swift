//
//  5. Missing Number.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 09/01/25.
//

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    var result = nums.count
    for i in 0..<nums.count {
        result ^= i
        result ^= nums[i]
    }
    return result
}

/* Mathematical Approach (Using Sum Formula):
 func missingNumber(_ nums: [Int]) -> Int {
    let sum = nums.reduce(0, +)
    var result = 0
    for i in 0...nums.count {
        result += i
    }
    return result - sum
}
 Sorting Approach (not optimal but easy to understand):
 func missingNumber(_ nums: [Int]) -> Int {
     let sorted = nums.sorted()
     
     for i in 0..<nums.count {
         if sorted[i] != i {
             return i
         }
     }
     
     return nums.count
 }*/
