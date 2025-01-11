//
//  10.  Burst Balloons.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 08/01/25.
//

import Foundation
func maxCoins(_ nums: [Int]) -> Int {
    let nums = [1] + nums + [1]
    var dp = Array(repeating: Array(repeating: 0, count: nums.count), count: nums.count)
    
    // Single length = i...i+len-1
    for len in 1...nums.count-2 {
        for i in 1...nums.count-len-1 {
            let j = i + len - 1
            // Try each k as last balloon to burst
            for k in i...j {
                let coins = nums[i-1] * nums[k] * nums[j+1] + (k > i ? dp[i][k-1] : 0) + (k < j ? dp[k+1][j] : 0)
                dp[i][j] = max(dp[i][j], coins)
            }
        }
    }
    return dp[1][nums.count-2]
}
