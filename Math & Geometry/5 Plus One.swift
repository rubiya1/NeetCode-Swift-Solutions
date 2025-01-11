//
//  5 Plus One.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var result = digits
    guard !digits.isEmpty else { return [1] }
    
    for i in (0..<result.count).reversed() {
        if result[i] == 9 {
            result[i] = 0
        }else {
            result[i] += 1
            return result
        }
    }
    result.insert(1, at: 0)
    
    return result
}
