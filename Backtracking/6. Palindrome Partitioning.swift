//
//  6. Palindrome Partitioning.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 30/12/24.
//

import Foundation


func palindromePartitioning(_ s: String) -> [[String]] {
    guard !s.isEmpty else { return [[]] }
    
    var result: [[String]] = []
    let chars = Array(s)
    
    func backtrack(_ start: Int, _ current: [String]) {
     
        if start == s.count {
            result.append(current)
            return
        }
        
        for end in start..<chars.count {
            let substring = String(chars[start...end])
            if substring == String(substring.reversed()) {
                backtrack(end+1, current + [substring])
            }
        }
    }
 
    backtrack(0, [])
    return result
}
