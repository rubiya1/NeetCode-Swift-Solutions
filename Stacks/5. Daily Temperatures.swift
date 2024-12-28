//
//  5. Daily Temperatures.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 16/12/24.
//

import Foundation

func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var stack = [Int]()
    var result = Array(repeating: 0, count: temperatures.count)
    
    for i in temperatures.indices {
        while let last = stack.last, temperatures[i] > temperatures[last] {
            stack.removeLast()
            result[last] = i - last
        }
        
        stack.append(i)
    }
    return result
}
