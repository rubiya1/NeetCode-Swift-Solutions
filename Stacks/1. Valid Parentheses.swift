//
//  1. Valid Parentheses.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 15/12/24.
//

import Foundation

func isvalidParentheses(_ s: String) -> Bool {
    var stack: [Character] = []
    for char in s {
        switch char {
        case "(":
            stack.append(")")
        case "{":
            stack.append("}")
        case "[":
            stack.append("]")
        default:
            if stack.popLast() != char { return false }
        }
    }
    return stack.isEmpty
}

