//
//  9. Word Break.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 01/01/25.
//

import Foundation


func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
    guard !s.isEmpty else { return true }
    var dp: [Bool] = Array(repeating: false, count: s.count + 1)
    dp[0] = true
    let sArray = Array(s), n = s.count
    for i in 0...n {
        if dp[i] == true {
            for word in wordDict {
                let length = word.count
                if i+length <= s.count && String(sArray[i..<i+length]) == word {
                    dp[i+length] = true
                }
            }
        }
        
    }
    
    return dp[n]
}
