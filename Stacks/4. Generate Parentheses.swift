//
//  4. Generate Parentheses.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 16/12/24.
//

import Foundation

func generateParentheses(_ n: Int) -> [String] {
    guard n >= 0 else { return [] }
    var result: [String] = []
    
    func generateParenthesesHelper(_ current: String,
                                   _ stackCount: Int,
                                   _ open: Int,
                                   _ close: Int) {
        if current.count == 2 * n {
            result.append(current)
            return
        }
        
        if open < n {
            generateParenthesesHelper(current + "(", stackCount + 1, open + 1, close)
        }
        
        if close < open {
            generateParenthesesHelper(current + ")", stackCount - 1, open, close + 1)
        }
        
        
    }
    
    generateParenthesesHelper("", 0, 0, 0)
    return result
}
