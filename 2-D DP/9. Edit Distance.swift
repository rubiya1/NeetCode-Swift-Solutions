//
//  9. Edit Distance.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 07/01/25.
//

import Foundation


func minDistance(_ word1: String, _ word2: String) -> Int {
    
    let s = Array(word1), d = Array(word2)
    let m = s.count, n = d.count
    
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
    
    for i in 1...m { dp[i][0] = i }
    for j in 1...n { dp[0][j] = j }
    
    for i in 1...m {
        for j in 1...n {
            if s[i - 1] == d[j - 1] {
                dp[i][j] = dp[i - 1][j - 1]
            }else {
                let deleteCost = dp[i - 1][j] + 1
                let insertCost = dp[i][j - 1] + 1
                let replaceCost = dp[i - 1][j - 1] + 1
                dp[i][j] = min(deleteCost, insertCost, replaceCost)
                
            }
        }
    }
    return dp[m][n]
}
