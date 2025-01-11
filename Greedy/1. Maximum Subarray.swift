//
//  1. Maximum Subarray.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func maximumSubarray(_ nums: [Int]) -> Int {
    var maxSum = nums[0]
    var currentSum = nums[0]
    for i in 1..<nums.count {
        currentSum = max(nums[i], currentSum + nums[i])
        maxSum = max(maxSum, currentSum)
    }
    return maxSum
}
