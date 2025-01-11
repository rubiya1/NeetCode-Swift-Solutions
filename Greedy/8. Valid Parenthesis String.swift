//
//  8. Valid Parenthesis String.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 10/01/25.
//

import Foundation

func validParenthesisString(_ s: String) -> Bool {
    var low = 0, high = 0
    
    for char in s {
        switch char {
        case "(": (low, high) = (low + 1, high + 1)
        case ")": (low, high) = (low - 1, high - 1)
        default: (low, high) = (low - 1, high + 1)
        }
    }
    low = max(low, 0)
    if high < 0 {
        return false
    }
    return low == 0
}
