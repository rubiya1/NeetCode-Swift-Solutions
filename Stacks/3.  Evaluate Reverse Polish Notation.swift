//
//  3.  Evaluate Reverse Polish Notation.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 15/12/24.
//

import Foundation

func evalRPN(_ tokens: [String]) -> Int {
    var stack = [Int]()
    
    for token in tokens {
        if let num = Int(token) {
            stack.append(num)
        } else {
            let right = stack.removeLast()
            let left = stack.removeLast()
            
            switch token {
            case "+": stack.append(left + right)
            case "-": stack.append(left - right)
            case "*": stack.append(left * right)
            case "/": stack.append(left / right)
            default: break
                
            }
        }
    }
    return stack.first ?? 0
}

