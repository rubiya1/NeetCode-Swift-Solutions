//
//  11. Regular Expression Matching .swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 08/01/25.
//

import Foundation


func regularExpressionMatching(_ s: String, _ p: String) -> Bool {
    
    let s = Array(s)
    let p = Array(p)
    var dp: [[Bool]] = Array(repeating: Array(repeating: false, count: p.count + 1), count: s.count + 1)
    
    dp[0][0] = true
    
    for j in 1...p.count {
        if p[j - 1] == "*" {
            dp[0][j] = dp[0][j - 2]
        }
    }
    
    for i in 1...s.count {
        for j in 1...p.count {
            if p[j-1] == "*" {
                dp[i][j] = dp[i][j-2]
                if p[j-2] == "." || p[j-2] == s[i-1] {
                    dp[i][j] = dp[i][j] || dp[i-1][j]
                }
            } else if p[j-1] == "." || p[j-1] == s[i-1] {
                dp[i][j] = dp[i-1][j-1]
            }
        }
    }
    
    return dp[s.count][p.count]
}


// '.' Matches any single character.
// '*' Matches zero or more of the preceding element.
