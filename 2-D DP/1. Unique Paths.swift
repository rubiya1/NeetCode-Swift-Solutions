//
//  1. Unique Paths.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 03/01/25.
//

import Foundation


func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var dp = Array(repeating: 1, count: 0)
    for _ in 1..<m {
        for j in 1..<n {
            dp[j] += dp[j-1]
        }
    }
    return dp[n-1]
}

