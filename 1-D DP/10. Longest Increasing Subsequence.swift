//
//  10. Longest Increasing Subsequence.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 03/01/25.
//

import Foundation


func logIIS(_ nums: [Int]) -> Int {
    if nums.count <= 1  { return nums.count }
    var dp: [Int] = Array(repeating: 1, count: nums.count)
    var maxLength: Int = 0
    for i in 1..<nums.count {
        for j in 0..<i {
            if nums[i] > nums[j] {
                dp[i] = max(dp[i], dp[j] + 1)
            }
        }
        maxLength = max(maxLength, dp[i])
    }
    return maxLength
}

func longestSubsequence(_ nums: [Int]) -> Int {
    let nums: [Int] = [10, 2, 3, 4, 5]
    var tailIndex = [Int]()
    
    for num in nums {
        if let index = tailIndex.firstIndex(where: { $0 >= num } ) {
            tailIndex[index] = num
        }else {
            tailIndex.append(num)
        }
    }
    return tailIndex.count
}
