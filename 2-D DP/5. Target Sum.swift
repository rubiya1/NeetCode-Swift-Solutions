//
//  5. Target Sum.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 06/01/25.
//

import Foundation


func targetSum(_ nums: [Int], _ target: Int) -> Int {
    let total = nums.reduce(0, +)
    guard abs(target) <= total && abs(total + target) % 2 == 0 else { return 0 }
    
    let subsetSum = (total + target) / 2
    var dp = Array(repeating: 0, count: subsetSum + 1)
    dp[0] = 1
    
    for num in nums {
        guard num <= subsetSum else { continue }
        for j in stride(from: subsetSum, through: num, by: -1) {
            dp[j] += dp[j - num]
        }
    }
    return dp[subsetSum]
}
