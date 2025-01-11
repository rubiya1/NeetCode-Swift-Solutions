//
//  2.  Longest Common Subsequence.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 03/01/25.
//

import Foundation


func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: text2.count + 1), count: text1.count + 1)
    
    for i in 1...text1.count {
        for j in 1...text2.count {
            if text1[text1.index(text1.startIndex, offsetBy: i-1)] == text2[text2.index(text2.startIndex, offsetBy: j-1)] {
                dp[i][j] = dp[i-1][j-1] + 1
            } else {
                dp[i][j] = max(dp[i-1][j], dp[i][j-1])
            }
        }
    }
    return dp[text1.count][text2.count]
}
