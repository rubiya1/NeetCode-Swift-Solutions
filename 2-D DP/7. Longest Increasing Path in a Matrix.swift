//
//  7. Longest Increasing Path in a Matrix.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 07/01/25.
//

import Foundation

func longestIncreasingPathInMatrix(_ matrix: [[Int]]) -> Int {
        
    let rows = matrix.count
    let cols = matrix[0].count
    
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: cols), count: rows)
    
    for i in 0..<rows {
        for j in 0..<cols {
            if i > 0 {
                if matrix[i][j] > matrix[i-1][j] {
                    dp[i][j] = dp[i-1][j] + 1
                }
            }
        }
    }
    return dp.max(by: { $0[cols-1] < $1[cols-1] })?.last ?? 0
}
