//
//  6. Interleaving String.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 07/01/25.
//

import Foundation


func isInterleaving(_ s1: String, _ s2: String, _ s3: String) -> Bool {
    
    let firstLength = s1.count
    let secondLength = s2.count
    let targetLength = s3.count
    
    guard firstLength + secondLength == targetLength else { return false }
    let firstChar = Array(s1)
    let secondChar = Array(s2)
    let targetChar = Array(s3)
    var dp: [[Bool]] = Array(repeating:Array(repeating: false, count: secondLength + 1), count: secondLength + 1)
    
    dp[0][0] = true

    
    // fill the row
    for col in 1...secondLength {
        dp[0][col] = dp[0][col - 1] && secondChar[col - 1] == targetChar[col - 1]
    }
    
    // fill the Column
    for row in 0..<firstLength + 1 {
        dp[0][row] = dp[0][row - 1] && firstChar[row - 1] == targetChar[row - 1]
    }
    
    
    for row in 1...firstLength {
        for col in 1...secondLength {
            let targetIndex = row + col - 1
            
            // Try using character from firstString
            if firstChar[row-1] == targetChar[targetIndex] {
                dp[row][col] = dp[row][col] || dp[row-1][col]
            }
            
            // Try using character from secondString
            if secondChar[col-1] == targetChar[targetIndex] {
                dp[row][col] = dp[row][col] || dp[row][col-1]
            }
        }
    }
    
    return dp[firstLength][secondLength]
    
}
