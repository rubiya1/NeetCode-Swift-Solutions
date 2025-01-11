//
//  12. Longest Palindromic Substring.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 03/01/25.
//

import Foundation

func longestPalindrome(_ s: String) -> String {
    let char = Array(s), n = char.count
    var dp = Array(repeating: Array(repeating: false, count: char.count), count: char.count)
    var maxLength: Int = 0
    var startIndex: Int = 0
    for i in 0..<char.count {
        dp[i][i] = true
    }
    
    for len in 2...n {
        for i in 0..<n-len + 1 {
            let j = i+len - 1
            if len == 2 {
                dp[i][j] = char[i] == char[j]
            } else  {
                dp[i][j] = char[i] == char[j]  && dp[i+1][j-1]
            }
            
            if dp[i][j] && len > maxLength {
                maxLength = len
                startIndex = i
            }
        }
        
    }
    return String(char[startIndex..<startIndex+maxLength])
}
