//
//  2. Min Stack.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 15/12/24.
//

import Foundation

class MinStack {
    var stack = [(Int, Int)]()
    var minval: Int = 0
    
    func push(_ val: Int) {
        if stack.isEmpty {
            stack.append((val, val))
        } else {
            let currentMin = min(val, stack.last!.1)
            stack.append((val, currentMin))
        }
    }
    
    func pop() {
        guard !stack.isEmpty else { return }
        stack.removeLast()
    }
    
    func top() -> Int {
        guard !stack.isEmpty else {
            fatalError("Stack is empty! Cannot perform top() operation.")
        }
        return stack.last!.0
    }
    
    func getMin() -> Int {
        guard !stack.isEmpty else {
             fatalError("Stack is empty! Cannot perform getMin() operation.")
         }
        return stack.last!.1
    }
}
