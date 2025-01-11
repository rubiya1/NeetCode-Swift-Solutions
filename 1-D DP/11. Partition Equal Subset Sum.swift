//
//  11. Partition Equal Subset Sum.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 03/01/25.
//

import Foundation

func partitionEqualSubsetSum(_ nums: [Int]) -> Bool {
    let target = nums.reduce(0, +)
    var dp = Array(repeating: false, count: target + 1)
    dp[0] = true
    guard target.isMultiple(of: 2) else { return false }
    
    for num in nums {
        for sum in stride(from: target, through: num, by: -1) {
            dp[sum] = dp[sum] || dp[sum - num]
        }
    }
    return dp[target]
}
