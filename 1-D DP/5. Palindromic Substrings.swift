//
//  5. Palindromic Substrings.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 01/01/25.
//

import Foundation

func palindromeSubstrings(_ s: String) -> Int {
    var count = s.count
    var dp = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
    let char = Array(s), n = s.count
    
    for end in 0..<n {
        for start in 0..<end {
            if char[start] == char[end] && (end - start <= 2 || dp[start+1][end-1]) {
                dp[start][end] = true
                count += 1
            }
        }
    }
    
    return count
}
