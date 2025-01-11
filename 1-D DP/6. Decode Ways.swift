//
//  6. Decode Ways.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 01/01/25.
//

import Foundation

func decodeWays(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 } // Empty input
    let chars = Array(s)
    let n = chars.count
    
    if chars[0] == "0" { return 0 } // Invalid if starts with '0'
    
    var dp = Array(repeating: 0, count: n + 1)
    
    // Base cases
    dp[0] = 1 // Empty string
    dp[1] = chars[0] != "0" ? 1 : 0 // Single valid character

    for i in 2...n {
        // Single digit decoding
        if let oneDigit = chars[i - 1].wholeNumberValue, oneDigit > 0 {
            dp[i] += dp[i - 1]
        }
        
        // Two digit decoding
        if let twoDigits = Int(String(chars[i - 2]) + String(chars[i - 1])),
           (10...26).contains(twoDigits) {
            dp[i] += dp[i - 2]
        }
    }
    
    // Validate and return final result
    return dp[n]
}
