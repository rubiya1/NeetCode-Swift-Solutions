//
//  Valid Palindrome.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 14/12/24.
//

import Foundation

// https://leetcode.com/problems/valid-palindrome/
func isPalindrome(_ s: String) -> Bool {
    
    let chars = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
    for i in 0..<chars.count / 2 {
        if chars[i] != chars[chars.count - i - 1] {
            return false
        }
    }    
    return true
}

