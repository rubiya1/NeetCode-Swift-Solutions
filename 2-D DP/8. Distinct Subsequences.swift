//
//  8. Distinct Subsequences.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 07/01/25.
//

import Foundation


func numDistinct(_ s: String, _ t: String) -> Int {
    var dp = Array(repeating: 0, count: t.count + 1)
    let s = Array(s), t = Array(t)
    dp[0] = 1
    
    for i in 1...s.count {
        for j in stride(from: t.count, through:i, by: -1) {
            if s[i-1] == t[j-1] {
                dp[j] += dp[j-1]
            }
        }
    }
    return dp[t.count]
}
